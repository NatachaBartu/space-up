class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def success
        @order = Order.find_by_trip_id(params[:id])
    end

    def create_payment_intent
        trip = Trip.find(params[:id])
        session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'], 
            customer_email: current_user&.email, #current_user && current_user.email 
            line_items: [{
              name: trip.id, 
              description: trip.description, 
              amount: trip.price,
              currency: 'aud', 
              quantity: 1
            }], 
            payment_intent_data: {
              metadata: {
                user_id: current_user&.id,
                trip_id: trip.id
              }
            }, 
            success_url: "#{root_url}/success?id=#{trip.id}", 
            cancel_url: "#{root_url}/trips"
          )
      
          @session_id = session.id 
    end 

    def webhook
        pp "test"
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        pp payment
        trip_id = payment.metadata.trip_id
        buyer_id = payment.metadata.user_id
        trip = Trip.find(trip_id)
        trip.update(sold: true)
        Order.create(trip_id: trip_id, buyer_id: buyer_id, seller_id: trip.user_id, payment_id: payment_id, reciept: payment.charges.data[0].receipt_url)
    end
end

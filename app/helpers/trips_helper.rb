module TripsHelper
def image_select(trip)
        return trip.picture if trip.picture.attached?
        #if no picture attached use default image
        return "default-image.jpg"
    end
end

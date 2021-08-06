# Space Up

# Purpose

Technology today is running as faster as usual nowadays. So why not create a trend for the future, an opportunity to travel around space. An extraordinary experience to travel around another "world." I made the app to allow the user to have a space trip, and the sellers can have the opportunity to sell packet trips to the user.
The main focus of an application is to apply my skills about ruby on rails and design an app with tables and its relations, and understanding about ERD and design and how I can set an authorisation on my application.
Deployment and have third party services applied on the app.



1. Why build a Space Up application?

The app creates the expectation to have a unique experience of travelling beyond imagination. Travel around the space is nothing like we have seen lately!!! 

# Links

1. You can visit my website through the link: [Space UP](https://space-up.herokuapp.com)

1. My GitHub [Space Up](https://github.com/NatachaBartu/space-up)

# Functionality 

The website will be landed on the home page.
The application has Users that can be sellers or buyers. 
Both users, sellers and buyers, need a request to sign up.
The app can have many User selling trips, and also it has been arranged by authorisation on the built application. You can update and delete the trips with the respective id user.
User buyer can select the trip that would like to go, and it will also connect to the Stripe Checkout, which has been implemented on the application.

# Features

For the MVC application, I used the   following features:
- Create a User table with Devise for authentication.

Create models and associate the tables. 
- Profile
- Trips
- Orders
- Address
- Cabin 
- Planets

Stripe implementation.

Aws -  Active Storage for uploading files.

Deployed by Heroku.

# User stories

# Wireframes

### Desktop
![desktop](docs/wireframes/desktop/desktop_1.png)
![desktop](docs/wireframes/desktop/desktop_2.png)
![desktop](docs/wireframes/desktop/desktop_3.png)
![desktop](docs/wireframes/desktop/desktop_4.png)

### Ipad
![desktop](docs/wireframes/ipad/ipad_1.png)
![desktop](docs/wireframes/ipad/ipad_2.png)
![desktop](docs/wireframes/ipad/ipad_3.png)

### Mobile
![desktop](docs/wireframes/mobile/mobile_1.png)
![desktop](docs/wireframes/mobile/mobile_2.png)
![desktop](docs/wireframes/mobile/mobile_3.png)

# ERD 

I've got couple ERDs during the process on implementation of the app.

### ERD 1
![desktop](docs/erd/ERD_1.png)

### ERD 2
![desktop](docs/erd/ERD_2.png)

### ERD 3
![desktop](docs/erd/ERD_3.png)

### ERD 4
![desktop](docs/erd/ERD_4.png)

### ERD 5
![desktop](docs/erd/ERD_5.png)

### Final ERD
![desktop]()

## Explanation of my ERD

# Third Party Services

I used a third-party service as Stripe to hold sensitive data for my users to build my application. 

# Active Record Associations

# Database Relations

### Users table

- The User can have just one on profile and one association to address table.
- The Users can have many trips.
- The Users can be also Sellers and Buyers.
- The Users can can have one Order into the relation Order model.
### Profile table
- The profile table belongs to a User.

### Address table
- The address table has one User.

### Trip table
- The trip table belongs to a User table, Planet table and Cabin table.

### Order table
- The Order table belongs to trip table.
- The trip table is also have the buyer and seller which is the Users.

# Schema Design


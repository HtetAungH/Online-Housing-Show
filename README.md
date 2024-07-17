# Online-Housing-Show
🏠 Online Housing Show
📋 Overview
Online Housing Show is a web application that allows property owners to create accounts and advertise their housings. Visitors can browse through the listings, and owners can manage their properties through an intuitive interface.

🌟 Features
🔑 Owner Management
        Create Account: Property owners can create an account by providing necessary details.
        Login: Secure login using email and password.
      🔒 JWT Authentication: Use of JWT for secure session management.
      
🏡 Property Listings
      Add Housing: Owners can add new housing listings with details like name, address, number of floors, master rooms, single rooms, and amount.
      Edit Housing: Owners can update the details of their existing housing listings.
      ❌ Delete Housing: Owners can delete their housing listings.
      
🔍 Search and Filter
      Visitor Search: Visitors can search and filter housing listings based on housing name, number of floors, number of master rooms, number of single rooms, amount, and created date.
      Owner Search: Owners can search and filter their own housing listings based on the same criteria.
      
📄 Pagination
Efficient Data Handling: Large sets of data are handled efficiently with pagination in both public and private listings.

🛠 Technologies Used
      Backend: Spring Boot
      Database: PostgreSQL
      Frontend: HTML, CSS, JavaScript
      Security: JWT (JSON Web Token)
      
🗂 Database Schema
🧑‍💼 Owner Table
sql
Copy code
CREATE TABLE Owner (
    Id SERIAL PRIMARY KEY,
    ownerUserName VARCHAR(255) NOT NULL,
    ownerName VARCHAR(255) NOT NULL,
    ownerEmail VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

🏠 Housing Table
sql
Copy code
CREATE TABLE Housing (
    Id SERIAL PRIMARY KEY,
    housingName VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    numberOfFloors INT NOT NULL,
    numberOfMasterRoom INT NOT NULL,
    numberOfSingleRoom INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    ownerId INT NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ownerId) REFERENCES Owner(Id) ON DELETE CASCADE
);

📚 API Endpoints
🔑 Owner API
Create Owner: POST /api/owners

Request Body (FormUrlEncoded): ownerUserName, ownerName, ownerEmail, password
Owner Login: POST /api/owners/login

Request Body (JSON): ownerEmail, password
Response: JWT token
🏡 Housing API
Create Housing: POST /api/housings

Request Body (JSON): housingName, address, numberOfFloors, numberOfMasterRoom, numberOfSingleRoom, amount
Header: Authorization: Bearer <token>
Edit Housing: PUT /api/housings/{id}

Request Body (JSON): housingName, address, numberOfFloors, numberOfMasterRoom, numberOfSingleRoom, amount
Header: Authorization: Bearer <token>
List Owner Housings: GET /api/housings/owner

Header: Authorization: Bearer <token>
Query Params: page, size, housingName, numberOfFloors, numberOfMasterRoom, numberOfSingleRoom, amount, createdDate
List All Housings: GET /api/housings

Query Params: page, size, housingName, numberOfFloors, numberOfMasterRoom, numberOfSingleRoom, amount, createdDate
🛠 Setup Instructions
📋 Prerequisites
Java 8 or higher
Maven
PostgreSQL
Node.js and npm (for frontend development)
⚙️ Backend Setup
Clone the repository:

sh
Copy code
git clone https://github.com/yourusername/online-housing-show.git
cd online-housing-show
Configure the database in src/main/resources/application.properties:

properties
Copy code
spring.datasource.url=jdbc:postgresql://localhost:5432/yourdbname
spring.datasource.username=yourusername
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect

jwt.secret=your_secret_key
Build and run the application:

sh
Copy code
./mvnw clean install
./mvnw spring-boot:run
🌐 Frontend Setup
Navigate to the frontend directory:

sh
Copy code
cd frontend
Install dependencies:

sh
Copy code
npm install
Start the development server:

sh
Copy code
npm start
Open your browser and navigate to http://localhost:3000.

🛠 Usage
Owners: Sign up and log in to manage your housing listings.
Visitors: Browse and search for housing listings without needing an account.
🤝 Contributing
Fork the repository.
Create your feature branch: git checkout -b feature/my-new-feature
Commit your changes: git commit -m 'Add some feature'
Push to the branch: git push origin feature/my-new-feature
Submit a pull request.
📄 License
This project is licensed under the MIT License.

sh
Copy code
npm start
Open your browser and navigate to http://localhost:3000.

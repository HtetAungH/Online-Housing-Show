# Online-Housing-Show
# Overview
Online Housing Show is a web application that allows property owners to create accounts and advertise their housings. Visitors can browse through the listings, and owners can manage their properties through an intuitive interface.

# Features
  1. Owner Management: Owners can create accounts, log in, and manage their property listings.
  2. Property Listings: Owners can add, edit, and delete housing listings.
  3. Search and Filter: Visitors and owners can search and filter housing listings based on various criteria.
  4. Authentication: Secure login for owners using JWT tokens.
  5. Pagination: Efficiently handle large sets of data with pagination.

# Technologies Used
  1. Backend: Spring Boot
  2. Database: PostgreSQL
  3. Frontend: HTML, CSS, JavaScript
  4. Security: JWT (JSON Web Token)

# Database Schema
# Owner Table
sql
CREATE TABLE Owner (
    Id SERIAL PRIMARY KEY,
    ownerUserName VARCHAR(255) NOT NULL,
    ownerName VARCHAR(255) NOT NULL,
    ownerEmail VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

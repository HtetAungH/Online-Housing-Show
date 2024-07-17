-- Create the Owner table
CREATE TABLE Owner (
    Id SERIAL PRIMARY KEY,
    ownerUserName VARCHAR(255) NOT NULL,
    ownerName VARCHAR(255) NOT NULL,
    ownerEmail VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the Housing table
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

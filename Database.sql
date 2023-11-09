CREATE TABLE ComponentTypes (
    ComponentTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL
);

CREATE TABLE Manufacturers (
    ManufacturerID INT AUTO_INCREMENT PRIMARY KEY,
    ManufacturerName VARCHAR(100) NOT NULL
);

CREATE TABLE Components (
    ComponentID INT AUTO_INCREMENT PRIMARY KEY,
    ComponentTypeID INT,
    Name VARCHAR(255) NOT NULL,
    ReleaseDate DATE,
    EndOfLifeDate DATE,
    ManufacturerID INT,
    Price DECIMAL(10, 2),
    Formfactor VARCHAR(100),
    Color VARCHAR(16),
    Expansion VARCHAR(255),
    CoreCount INT,
    ClockSpeed VARCHAR(10),
    BoostClockSpeed VARCHAR(10),
    TDP INT,
    APU VARCHAR(255),
    SMT VARCHAR(5),
    RPM VARCHAR(32),
    Capacity INT,
    PricePerGig Decimal(10, 2),
    StorageType VARCHAR(16),
    Interface VARCHAR(128),
    FirstWordLatency INT,
    CAS INT,
    Socket VARCHAR(20),
    MaxMemory INT,
    MemorySlots INT,
    Efficiency VARCHAR(255),
    Wattage INT,
    Modularity VARCHAR(20),
    GPU VARCHAR(255),
    Length VARCHAR(255),
    -- Add more specific attributes based on component type
    FOREIGN KEY (ComponentTypeID) REFERENCES ComponentTypes(ComponentTypeID),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);

-- Configurations Table
CREATE TABLE Configurations (
    ConfigurationID INT AUTO_INCREMENT PRIMARY KEY,
    ConfigurationName VARCHAR(255) NOT NULL,
    ConfigurationDescription TEXT,
    CreationDate DATETIME
    -- Other general configuration-specific attributes
);

-- ConfigurationComponents Table (junction table)
CREATE TABLE ConfigurationComponents (
    ConfigurationComponentID INT AUTO_INCREMENT PRIMARY KEY,
    ConfigurationID INT,
    ComponentID INT,
    FOREIGN KEY (ConfigurationID) REFERENCES Configurations(ConfigurationID),
    FOREIGN KEY (ComponentID) REFERENCES Components(ComponentID)
);

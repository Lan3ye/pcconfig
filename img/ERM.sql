CREATE TABLE `ComponentTypes` (
  `ComponentTypeID` INT PRIMARY KEY,
  `TypeName` VARCHAR(50)
);

CREATE TABLE `Manufacturers` (
  `ManufacturerID` INT PRIMARY KEY,
  `ManufacturerName` VARCHAR(100)
);

CREATE TABLE `Components` (
  `ComponentID` INT PRIMARY KEY,
  `ComponentTypeID` INT,
  `Name` VARCHAR(255),
  `ReleaseDate` DATE,
  `EndOfLifeDate` DATE,
  `ManufacturerID` INT,
  `Price` DECIMAL(10, 2),
  `Formfactor` VARCHAR(100),
  `Color` VARCHAR(16),
  `Expansion` VARCHAR(255),
  `CoreCount` INT,
  `ClockSpeed` VARCHAR(10),
  `BoostClockSpeed` VARCHAR(10),
  `TDP` INT,
  `APU` VARCHAR(255),
  `SMT` VARCHAR(5),
  `RPM` VARCHAR(32),
  `Capacity` INT,
  `PricePerGig` Decimal(10, 2),
  `StorageType` VARCHAR(16),
  `Interface` VARCHAR(128),
  `FirstWordLatency` INT,
  `CAS` INT,
  `Socket` VARCHAR(20),
  `MaxMemory` INT,
  `MemorySlots` INT,
  `Efficiency` VARCHAR(255),
  `Wattage` INT,
  `Modularity` VARCHAR(20),
  `GPU` VARCHAR(255),
  `Length` VARCHAR(255)
);

ALTER TABLE `ComponentTypes` ADD FOREIGN KEY (`ComponentTypeID`) REFERENCES `Components` (`ComponentTypeID`);

ALTER TABLE `Manufacturers` ADD FOREIGN KEY (`ManufacturerID`) REFERENCES `Components` (`ManufacturerID`);

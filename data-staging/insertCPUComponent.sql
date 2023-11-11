insert into Components
set ComponentTypeID = (
    select ComponentTypeID
    from ComponentTypes
    where TypeName = 'CPU'
),
Name = 'Ryzen 5 5600X',
ManufacturerID = (
    select ManufacturerID 
    from Manufacturers
    where ManufacturerName = 'AMD'
),
Price = 148.68,
CoreCount = 6,
ClockSpeed = '3.7',
BoostClockSpeed = '4.6', 
TDP = 65,
APU = NULL;
SMT = 'TRUE';

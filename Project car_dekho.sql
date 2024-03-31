-- MY SQL PROJECT : SECOND HAND CAR DEALER--

CREATE SCHEMA cars;
USE cars;

-- READ DATA--
SELECT* FROM car_dekho;

-- Total Cars: To get a count of total records--
SELECT COUNT(*) FROM car_dekho;

-- The manager asked the employeee How many cars will be available in 2023?--
SELECT COUNT(*) FROM car_dekho WHERE YEAR = 2023;

-- The manager asked the employeee How many cars are available in 2020,2021,2022?--
SELECT COUNT(*) FROM car_dekho WHERE YEAR = 2020; #74
SELECT COUNT(*) FROM car_dekho WHERE YEAR = 2021; #7
SELECT COUNT(*) FROM car_dekho WHERE YEAR = 2022; #7

-- GROUP BY--
SELECT YEAR,COUNT(*) FROM car_dekho WHERE YEAR IN (2020,2021,2022) group by year;

-- Client asked me to print the total of all cars by year, I don't see all the details.--
SELECT YEAR, COUNT(*) FROM car_dekho GROUP BY YEAR;

-- Clienrt asked to car dealer agent How many deisel cars will there be in 2020?--
SELECT COUNT(*) FROM car_dekho WHERE YEAR =2020 AND fuel = "Diesel"; #20

-- Client requested a car dealer agent How many petrol cars will there be in 2020?--
SELECT COUNT(*) FROM car_dekho WHERE YEAR =2020 AND fuel = "Petrol"; #51

-- The manager told the employee to give a print All the fuel cars(petrol,deisel and CNG) com by all year.--
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "Petrol" GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "Diesel" GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "CNG" GROUP BY year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
SELECT YEAR, COUNT(*) FROM car_dekho GROUP BY YEAR HAVING COUNT(*)>100;
SELECT YEAR, COUNT(*) FROM car_dekho GROUP BY YEAR HAVING COUNT(*)<50;


-- The manager said to the employees All cars count details between 2015 and 2023, we need as complete list--
 SELECT COUNT(*) FROM car_dekho WHERE YEAR BETWEEN 2015 and 2023; #4124
 
 -- The manager said to the employees All cars details between 2015 and 2023, we need as complete list--
 SELECT * FROM car_dekho WHERE YEAR BETWEEN 2015 AND 2023;
 
       -- END--
























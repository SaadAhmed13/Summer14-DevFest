-- Table branch 

CREATE TABLE branch( 
   branch_name char(20) PRIMARY KEY, 
   branch_city char(20), 
   assets int
); 


-- Table customer 

CREATE TABLE customer( 
   customer_name char(20) PRIMARY KEY, 
   customer_street char(20), 
   customer_city char(20) 
); 


-- Table loan

CREATE TABLE loan( 
   loan_number char(20), 
   branch_name char(20) REFERENCES branch(branch_name), 
   amount int, 
   PRIMARY KEY(loan_number) 
); 


-- Table account 
CREATE TABLE account( 
   account_number char(20), 
   branch_name char(20) REFERENCES branch(branch_name), 
   balance int, 
   PRIMARY KEY(account_number) 
); 

-- Table depositor 
CREATE TABLE depositor( 
   customer_name char(20) REFERENCES customer(customer_name), 
   account_number char(20) REFERENCES account(account_number), 
   PRIMARY KEY (customer_name,account_number) 
); 


-- Table borrower 
CREATE TABLE borrower( 
   customer_name char(20) REFERENCES customer(customer_name), 
   loan_number char(20) REFERENCES loan(loan_number), 
   PRIMARY KEY (customer_name,loan_number) 
); 


-- Look at the tables that we just created 
show tables;

-- Show the structure of a table
describe account;

-- 
-- Populate the tables 
-- 

-- Populate branch 
INSERT INTO branch VALUES('Brighton','Brooklyn',720000); 
INSERT INTO branch VALUES('Downtown','Brooklyn',9000000); 
INSERT INTO branch VALUES('Mianus','Horseneck',400000); 
INSERT INTO branch VALUES('North Town','Rye',3700000); 
INSERT INTO branch VALUES('Perryridge','Horseneck',1700000); 
INSERT INTO branch VALUES('Pownal','Bennington',300000); 
INSERT INTO branch VALUES('Redwood','Palo Alto',220000); 
INSERT INTO branch VALUES('Round Hill','Horseneck',8000000); 


-- Populate account 
INSERT INTO account VALUES('A-101','Downtown',500); 
INSERT INTO account VALUES('A-102','Perryridge',400); 
INSERT INTO account VALUES('A-201','Brighton',900); 
INSERT INTO account VALUES('A-215','Mianus',700); 
INSERT INTO account VALUES('A-217','Brighton',750); 
INSERT INTO account VALUES('A-222','Redwood',700); 
INSERT INTO account VALUES('A-305','Round Hill',350); 


-- Populate customer 
INSERT INTO customer VALUES('Adams','Spring','Pittsfield'); 
INSERT INTO customer VALUES('Brooks','Senator','Brooklyn'); 
INSERT INTO customer VALUES('Curry','North','Rye'); 
INSERT INTO customer VALUES('Glenn','Sand Hill','Woodside'); 
INSERT INTO customer VALUES('Green','Walnut','Stamford'); 
INSERT INTO customer VALUES('Hayes','Main','Harrison'); 
INSERT INTO customer VALUES('Johnson','Alma','Palo Alto'); 
INSERT INTO customer VALUES('Jackson','Alma','Palo Alto'); 
INSERT INTO customer VALUES('Jones','Main','Harrison'); 
INSERT INTO customer VALUES('Lindsay','Park','Pittsfield'); 
INSERT INTO customer VALUES('Smith','North','Rye'); 
INSERT INTO customer VALUES('Turner','Putnam','Stamford'); 
INSERT INTO customer VALUES('Williams','Nassau','Princeton'); 


-- Populate depositor 
INSERT INTO depositor VALUES('Hayes','A-102'); 
INSERT INTO depositor VALUES('Johnson','A-101'); 
INSERT INTO depositor VALUES('Johnson','A-201'); 
INSERT INTO depositor VALUES('Jones','A-217'); 
INSERT INTO depositor VALUES('Lindsay','A-222'); 
INSERT INTO depositor VALUES('Smith','A-215');
INSERT INTO depositor VALUES('Turner','A-305');


-- Populate loan 
INSERT INTO loan VALUES('L-11','Round Hill',900); 
INSERT INTO loan VALUES('L-14','Downtown',1500);
INSERT INTO loan VALUES('L-15','Perryridge',1500);
INSERT INTO loan VALUES('L-16','Perryridge',1300);
INSERT INTO loan VALUES('L-17','Downtown',200);
INSERT INTO loan VALUES('L-23','Redwood',2000);
INSERT INTO loan VALUES('L-93','Mianus',500);


-- Populate borrower 
INSERT INTO borrower VALUES('Adams','L-16');
INSERT INTO borrower VALUES('Curry','L-93'); 
INSERT INTO borrower VALUES('Hayes','L-15'); 
INSERT INTO borrower VALUES('Jackson','L-14'); 
INSERT INTO borrower VALUES('Jones','L-17');
INSERT INTO borrower VALUES('Smith','L-11'); 
INSERT INTO borrower VALUES('Smith','L-23'); 
INSERT INTO borrower VALUES('Williams','L-17');   

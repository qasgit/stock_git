
drop Database IF EXISTS `db_stock` ;
CREATE Database IF NOT EXISTS `db_stock` ;
SHOW WARNINGS;
USE `db_stock`;

-- -----------------------------------------------------
-- Table `db_stock`.`LoginMaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`LoginMaster` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblLoginMaster` (
  `User_Id` INT NOT NULL AUTO_INCREMENT ,
  `Username` VARCHAR(45) NULL DEFAULT NULL ,
  `Password` VARCHAR(45) NULL DEFAULT NULL ,
  `User_Type` VARCHAR(45) NULL DEFAULT NULL ,
  `Status` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`User_Id`) );

SHOW WARNINGS;

insert into tblLoginMaster( `Username` ,`Password`,`User_Type` , `Status`  ) values("admin","admin","admin",1);
insert into tblLoginMaster( `Username` ,`Password`,`User_Type` , `Status`  ) values("kaushal","kaushal","admin",1);


select * from tblLoginMaster;

-- -----------------------------------------------------
-- Table `db_stock`.`FoodItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblFoodItems` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblFoodItems` (
  `Item_Id` INT NOT NULL AUTO_INCREMENT ,
  `Itemname` VARCHAR(45) NULL DEFAULT NULL ,
  `CurrentStock` INT(5) NULL DEFAULT NULL ,
  PRIMARY KEY (`Item_Id`) );

SHOW WARNINGS;

insert into tblFoodItems( `Itemname` ,`CurrentStock`) values("Bread",50);
insert into tblFoodItems( `Itemname` ,`CurrentStock`) values("Butter",100);
insert into tblFoodItems( `Itemname` ,`CurrentStock`) values("Milk",25);
insert into tblFoodItems( `Itemname` ,`CurrentStock`) values("Noodles",100);

select * from tblFoodItems;

-- -----------------------------------------------------
-- Table `db_stock`.`Beverages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblBeverages` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblBeverages` (
  `Item_Id` INT NOT NULL AUTO_INCREMENT ,
  `Itemname` VARCHAR(45) NULL DEFAULT NULL ,
  `CurrentStock` INT(5) NULL DEFAULT NULL ,
  PRIMARY KEY (`Item_Id`) );

SHOW WARNINGS;

insert into tblBeverages( `Itemname` ,`CurrentStock`) values("Pepsi",50);
insert into tblBeverages( `Itemname` ,`CurrentStock`) values("Coke",100);
insert into tblBeverages( `Itemname` ,`CurrentStock`) values("Orange Juice",25);
insert into tblBeverages( `Itemname` ,`CurrentStock`) values("Mango Juice",75);
insert into tblBeverages( `Itemname` ,`CurrentStock`) values("Squash",50);

select * from tblBeverages;



-- -----------------------------------------------------
-- Table `db_stock`.`tblFruitItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblFruitItems` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblFruitItems` (
  `Item_Id` INT NOT NULL AUTO_INCREMENT ,
  `Itemname` VARCHAR(45) NULL DEFAULT NULL ,
  `CurrentStock` INT(5) NULL DEFAULT NULL ,
  PRIMARY KEY (`Item_Id`) );

SHOW WARNINGS;

insert into tblFruitItems( `Itemname` ,`CurrentStock`) values("Orange",50);
insert into tblFruitItems( `Itemname` ,`CurrentStock`) values("Apple",100);
insert into tblFruitItems( `Itemname` ,`CurrentStock`) values("Lichie",25);
insert into tblFruitItems( `Itemname` ,`CurrentStock`) values("Mango",75);
insert into tblFruitItems( `Itemname` ,`CurrentStock`) values("Pine Apple",50);
insert into tblFruitItems( `Itemname` ,`CurrentStock`) values("Banana",200);

select * from tblFruitItems;



-- -----------------------------------------------------
-- Table `db_stock`.`tblVegetableItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblVegetableItems` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblVegetableItems` (
  `Item_Id` INT NOT NULL AUTO_INCREMENT ,
  `Itemname` VARCHAR(45) NULL DEFAULT NULL ,
  `CurrentStock` INT(5) NULL DEFAULT NULL ,
  PRIMARY KEY (`Item_Id`) );

SHOW WARNINGS;

insert into tblVegetableItems( `Itemname` ,`CurrentStock`) values("Potato",50);
insert into tblVegetableItems( `Itemname` ,`CurrentStock`) values("Cabbage",100);
insert into tblVegetableItems( `Itemname` ,`CurrentStock`) values("Cauliflower",25);
insert into tblVegetableItems( `Itemname` ,`CurrentStock`) values("Onion",75);
insert into tblVegetableItems( `Itemname` ,`CurrentStock`) values("Lemon",5);
insert into tblVegetableItems( `Itemname` ,`CurrentStock`) values("Spinach",10);

select * from tblVegetableItems;


-- -----------------------------------------------------
-- Table `db_stock`.`tblGroceryItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblGroceryItems` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblGroceryItems` (
  `Item_Id` INT NOT NULL AUTO_INCREMENT ,
  `Itemname` VARCHAR(45) NULL DEFAULT NULL ,
  `CurrentStock` INT(5) NULL DEFAULT NULL ,
  PRIMARY KEY (`Item_Id`) );

SHOW WARNINGS;

insert into tblGroceryItems( `Itemname` ,`CurrentStock`) values("Rice",150);
insert into tblGroceryItems( `Itemname` ,`CurrentStock`) values("Wheat",100);
insert into tblGroceryItems( `Itemname` ,`CurrentStock`) values("Flour",100);
insert into tblGroceryItems( `Itemname` ,`CurrentStock`) values("Sugar",75);
insert into tblGroceryItems( `Itemname` ,`CurrentStock`) values("Salt",20);
insert into tblGroceryItems( `Itemname` ,`CurrentStock`) values("Tea Leaves",10);

select * from tblGroceryItems;



-- -----------------------------------------------------
-- Table `db_stock`.`tblChoclates`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblChoclates` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblChoclates` (
  `Item_Id` INT NOT NULL AUTO_INCREMENT ,
  `Itemname` VARCHAR(45) NULL DEFAULT NULL ,
  `CurrentStock` INT(5) NULL DEFAULT NULL ,
  PRIMARY KEY (`Item_Id`) );

SHOW WARNINGS;

insert into tblChoclates( `Itemname` ,`CurrentStock`) values("Munch",50);
insert into tblChoclates( `Itemname` ,`CurrentStock`) values("Perk",20);
insert into tblChoclates( `Itemname` ,`CurrentStock`) values("Dairy Milk",10);
insert into tblChoclates( `Itemname` ,`CurrentStock`) values("Five Star",50);
insert into tblChoclates( `Itemname` ,`CurrentStock`) values("Nestle",20);

select * from tblChoclates;

-- -----------------------------------------------------
-- Table `db_stock`.`tblOrderDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_stock`.`tblOrderDetails` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `db_stock`.`tblOrderDetails` (
  `Order_Id` INT NOT NULL AUTO_INCREMENT ,
  `Managername` VARCHAR(45) NULL DEFAULT NULL ,
  `Warehouse_Address` VARCHAR(45) NULL DEFAULT NULL ,
  `Country` VARCHAR(45) NULL DEFAULT NULL ,
  `Phone_Num` INT NULL DEFAULT NULL ,
  `Mobile_Num` INT NULL DEFAULT NULL ,
   `Stock_Category` VARCHAR(45) NULL DEFAULT NULL ,
   `Stock_Name` VARCHAR(45) NULL DEFAULT NULL ,
   `Quantity` INT NULL DEFAULT NULL ,
   `Deliver_Mode` VARCHAR(45) NULL DEFAULT NULL ,
   `Payment_Mode`  VARCHAR(45) NULL DEFAULT NULL ,
  
  PRIMARY KEY (`Order_Id`) );
 SHOW WARNINGS;




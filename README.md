# Amazon-like Storefront with the MYSQL

The app will take in orders from customers and deplete stock from the store's inventory.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Products, Departments have been created. Total Profit View has been created. There are Products and Departments data.

```
/*Populate this database with around 10 different products. (i.e. Insert "mock* data rows into this database and table).*/
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("CP378 8 Wood Tambourine, Headed, Single Row Jingles","instrument",12.77, 28);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Gold Tone Plucky Banjo (Five String, Vintage Brown)","instrument",284.25,17);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("CODA DK-040 Student Drum Sticks","supplies",6.19,15);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("First Act FP6215 Floor Tom with Mallets","supplies",21.83,31);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("RhythmTech RT1010 Tambourine, Nickel Jingles, Black","instrument",19.95,21);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Dunlop 471R3N Max-Grip Jazz III, Red Nylon, 24/Bag","supplies",12.32,88);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Shure SE535-V Sound Isolating Earphones with Triple High Definition MicroDrivers","supplies",449,10);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("EVH Minature Guitars EVH001 Frankenstein Mini Replica Guitar Van Halen, Red & White", "instrument",33.65, 4);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Manhasset 48TA Tall Symphony Music Stand","supplies", 54.59, 28);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("RockJam Full Size Electric Guitar SuperKit with 20 Watt Amp, Guitar Stand, Case, Tuner, and Accessories","instrument",98.95,10);
```

### Installing

Using the Visual Studio Code or Terminal , Node JS  runtime environment

```
node Bamazoncustomer.js

```

Running Bamazoncustomer.js  application will display all of the items available for sale

```
node BamazonManager.js

```

Running BamazonManager.js application will list a set of menu options: VIEW PRODUCTS for SALE    VIEW LOW INVENTORY     ADD TO INVENTORY    ADD A NEW PRODUCT

```
node BamazonSupervisor.js

```

Running BamazonSupervisor.js application will list a set of menu options: VIEW PRODUCT SALES BY DEPARTMENT  .
The total_profit column will be calculated on the fly using the difference between over_head_costs and product_sales. Total_profit will not be stored in Database.

## Running the tests

Screenshots captured. Please check the images folder and find the actual result of the customer ,manager, supervisor views.

### Break down into end to end tests

Verify if it first displays all the items available for tests which include the ids, names, and prices of products for sale.

```
┌──────────┬─────────────────────────────────────────────────────────────────────────────────────────────────────────┬────────┐
│ Item Id# │ Product Name                                                                                            │ Price  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 1        │ CP378 8 Wood Tambourine, Headed, Single Row Jingles                                                     │ 12.77  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 2        │ Gold Tone Plucky Banjo (Five String, Vintage Brown)                                                     │ 284.25 │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 3        │ CODA DK-040 Student Drum Sticks                                                                         │ 6.19   │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 4        │ First Act FP6215 Floor Tom with Mallets                                                                 │ 21.83  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 5        │ RhythmTech RT1010 Tambourine, Nickel Jingles, Black                                                     │ 19.95  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 6        │ Dunlop 471R3N Max-Grip Jazz III, Red Nylon, 24/Bag                                                      │ 12.32  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 7        │ Shure SE535-V Sound Isolating Earphones with Triple High Definition MicroDrivers                        │ 449    │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 8        │ EVH Minature Guitars EVH001 Frankenstein Mini Replica Guitar Van Halen, Red & White                     │ 33.65  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 9        │ Manhasset 48TA Tall Symphony Music Stand                                                                │ 54.59  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 10       │ RockJam Full Size Electric Guitar SuperKit with 20 Watt Amp, Guitar Stand, Case, Tuner, and Accessories │ 98.95  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────
```
Verify if it promtps user with two messages and if logs the items purchased.

```
prompt: Please enter the ID # of the item you wish to purchase!:  7
prompt: How many items would you like to purchase?:  3

3 items purchased
Shure SE535-V Sound Isolating Earphones with Triple High Definition MicroDrivers undefined
Total: 1347

Your order has been processed.  Thank you for shopping with us!
```
Verify if it lists a set of menu options for Managers App.

* If a manager selects `View Products for Sale`, the app should list every available item: the item IDs, names, prices, and quantities.

* If a manager selects `View Low Inventory`, then it should list all items with an inventory count lower than five.

* If a manager selects `Add to Inventory`, your app should display a prompt that will let the manager "add more" of any item currently in the store.

* If a manager selects `Add New Product`, it should allow the manager to add a completely new product to the store.

```
prompt: Key in one of the following options: 1) View Products for Sale 2) View Low Inventory 3) Add to Inventory 4) Add New Product:

```
Verify if it lists a set of menu options for Supervisor App.
When a supervisor selects `View Product Sales by Department`, the app should display a summarized table in their terminal/bash window. Use the table below as a guide.

```
prompt: Key in one of the following options: 1) View Products Sales by Department 2) Create New Department

```

### And coding style tests

Verified data is updated correctly in MySQL. Example Item ID#11 added successfully.

```
┌──────────┬─────────────────────────────────────────────────────────────────────────────────────────────────────────┬────────┐
│ Item Id# │ Product Name                                                                                            │ Price  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 1        │ CP378 8 Wood Tambourine, Headed, Single Row Jingles                                                     │ 12.77  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 2        │ Gold Tone Plucky Banjo (Five String, Vintage Brown)                                                     │ 284.25 │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 3        │ CODA DK-040 Student Drum Sticks                                                                         │ 6.19   │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 4        │ First Act FP6215 Floor Tom with Mallets                                                                 │ 21.83  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 5        │ RhythmTech RT1010 Tambourine, Nickel Jingles, Black                                                     │ 19.95  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 6        │ Dunlop 471R3N Max-Grip Jazz III, Red Nylon, 24/Bag                                                      │ 12.32  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 7        │ Shure SE535-V Sound Isolating Earphones with Triple High Definition MicroDrivers                        │ 449    │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 8        │ EVH Minature Guitars EVH001 Frankenstein Mini Replica Guitar Van Halen, Red & White                     │ 33.65  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 9        │ Manhasset 48TA Tall Symphony Music Stand                                                                │ 54.59  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 10       │ RockJam Full Size Electric Guitar SuperKit with 20 Watt Amp, Guitar Stand, Case, Tuner, and Accessories │ 98.95  │
├──────────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────┼────────┤
│ 11       │ Music Book                                                                                              │ 5      │
└──────────┴─────────────────────────────────────────────────────────────────────────────────────────────────────────┴────────┘
```

## Deployment

Because this is CLI (Command Line Interface), there will be no need to deploy it to Heroku.

## Built With

* [Node.js](https://nodejs.org/en/docs/) - used for JavaScript run-time environment for executing JavaScript code server-side
* [MySQL](https://dev.mysql.com/doc/) - for database setup

## Contributing

Please read [CONTRIBUTING.md](https://github.com/mmiquela/NodeJSandMySQLHW) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning



## Authors

* **Marsha Miquela** - *Initial work* - [NodeJSandMySQLHW](https://github.com/mmiquela/NodeJSandMySQLHW)


## License



## Acknowledgments


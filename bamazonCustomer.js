const mysql = require("mysql");
const inquirer = require("inquirer");
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,

    user: 'root',
    password: '',
    database: 'bamazon_db'
});

// Establish connection
connection.connect(function(err) {
    if (err) throw err;
    console.log('Connected as id: ' + connection.threadId);
});

// Functions 
// Display all items available in inventory 
function showInventory() {
   connection.query('SELECT *  FROM products', function(err, res) {
       if (err) throw err;
       console.log('------------------------------');
       console.log('PRODUCTS AVAILABLE FOR PURCHASE:');
       console.log('------------------------------');

       for (i = 0; i < res.length; i++) {
           console.log('Item Id: '  + res[i].item_id);
           console.log('Product: ' + res[i].product_name);
           console.log('Department: ' + res[i].department_name);
           console.log('Price: $' + res[i].price);
           console.log('# Available: ' + res[i].stock_quantity);
           console.log('---------------');
        }
   });
}

showInventory();
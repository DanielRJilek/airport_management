import express from 'express';
import ViteExpress from "vite-express";
import 'mysql2';
import { createRequire } from 'module';
const require = createRequire(import.meta.url);
let connection;

var multer = require("multer");
var upload = multer();
let mysql = require('mysql2');
const app = express();
app.use(express.json()); 
app.use(upload.array());

ViteExpress.listen(app, 5173, () => console.log("Server is listening..."));


app.post("/login", (req, res) => {
    console.log(req.body);
    connection = mysql.createConnection({
    host: "localhost",
    user: req.body.username,
    password: req.body.password,
    database: 'Kumar_Jilek_Logan_Database'
    });

    connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    res.send('1');
    });
});

app.post("/logout", (req, res) => {
    if (connection != null) {
        connection.end(function(err) {
            if (err) throw err;
        res.send('1');
        });
    }
    else {
        res.send('1');
    }
});


// Passenger Calls

app.get('/passengers', (req,res) => {
    connection.query('CALL read_passenger(NULL, NULL)', function(err, result) {
        if (err) {
            console.log(err);
        }
        else {
            res.send(result);
        }
    }) 
}); 

// app.post()

// app.put()

// app.delete()

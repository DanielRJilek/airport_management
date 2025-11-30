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
app.use(express.text());
app.use(upload.array());

ViteExpress.listen(app, 5173, () => console.log("Server is listening..."));

// Log in and out calls

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

// Daniel Jilek, Male, 1999-08-18, USA, Booked, P1
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

app.post('/passengers', (req,res) => {
    console.log(req.body.data);
    let data = req.body.data.toString();
    let dataArray = data.split(',')
    data = "'" + dataArray.join("','") + "'"
    console.log(data);
    connection.query(`CALL create_passenger(${data})`, function(err, result) {
        if (err) {
            res.send(err);
        }
        else {
            res.send("1");
        }
    })
});

app.put('/passengers/:id', (req,res) => {
    const id = req.params.id.toString();
    connection.query(`CALL update_passenger(${id})`, function(err,result) {
        if (err) {
            res.send(err);
        }
        else {
            res.send("1");
        }
    })
});

app.delete('/passengers/:id', (req,res) => {
    const id = req.params.id.toString();
    connection.query(`CALL delete_passenger(${id})`, function(err,result) {
        if (err) {
            res.send(err);
        }
        else {
            res.send("1");
        }
    })
});


// Crew/staff Calls

app.get('/crew', (req,res) => {
    connection.query('CALL read_crew(NULL, NULL)', function(err, result) {
        if (err) {
            console.log(err);
        }
        else {
            res.send(result);
        }
    }) 
}); 

// Flight calls

// Airport calls

// Aircraft calls

// Airline calls
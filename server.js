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

app.get('/menus/:menuID', (req,res) => {
    console.log(req.params);
    let menuID = req.params.menuID.toString();
    connection.query('CALL read_' + menuID + '(NULL, NULL)', function(err, result) {
        if (err) {
            console.log(err);
        }
        else {
            res.send(result);
        }
    }) 
}); 

app.get('/menus/:menuID/:attribute/:value', (req,res) => {
    
    let menuID = req.params.menuID.toString();
    let attribute = req.params.attribute.toString();
    let value = req.params.value.toString();
    value = value.replace("%20", " ");
    let dataArray = [];
    dataArray.push(attribute);
    dataArray.push(value);
    let data = "'" + dataArray.join("','") + "'";
    console.log('CALL read_' + menuID + `(${data})`);
    connection.query('CALL read_' + menuID + `(${data})`, function(err, result) {
        if (err) {
            console.log(err);
        }
        else {
            res.send(result);
        }
    }) 
}); 

app.post('/menus/:menuID', (req,res) => {
    let data = req.body.data.toString();
    let menuID = req.params.menuID.toString();
    let dataArray = data.split(',');
    data = "'" + dataArray.join("','") + "'";
    connection.query(`CALL create_` + menuID + `(${data})`, function(err, result) {
        if (err) {
            res.send(err);
        }
        else {
            res.send("1");
        }
    })
});

app.put('/menus/:menuID/:id', (req,res) => {
    let menuID = req.params.menuID.toString();
    let id = req.params.id.toString();
    let data = req.body.data.toString();
    let dataArray = data.split(',');
    dataArray.splice(0,0, id);
    data = "'" + dataArray.join("','") + "'";
    
    connection.query(`CALL update_` + menuID + `(${data})`, function(err,result) {
        if (err) {
            res.send(err);
        }
        else {
            res.send("1");
        }
    })
});

app.delete('/menus/:menuID/:id', (req,res) => {
    let menuID = req.params.menuID.toString();
    const id = req.params.id.toString();
    connection.query(`CALL delete_` + menuID + `(${id})`, function(err,result) {
        if (err) {
            res.send(err);
        }
        else {
            res.send("1");
        }
    })
});
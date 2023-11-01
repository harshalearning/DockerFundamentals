const mongoose = require("mongoose");
const express = require("express")

const app = express()

app.get("/", () => {
    res.json({
        message: "you are visiting ROOT route"
    })
});

app.listen("/", () => {
    console.log("8000 is ready to server...");
});

const DATABASE= "mongodb://harshamongo:27017/testup";

mongoose.connect(Database , {
    useNewUrlParser: true,
    useCreateIndex: true,
    useUnifiedTopology: true
})
.then( () => {
    console.log("DB connected");
} )
.catch(() => {
    console.log("Error in DB connection");
} )


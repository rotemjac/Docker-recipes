const express = require("express");
const app  = express();
const PORT = process.env.PORT || 4002;


app.get("/", async (req, res) => {
    res.send("Hello fom endpoint99999 !!");
});

app.listen(PORT, () => {
    console.log("Listening on port "+PORT+"...");
});
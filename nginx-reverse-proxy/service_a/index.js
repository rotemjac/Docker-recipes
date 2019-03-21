const express = require("express");
const app  = express();
const PORT = process.env.PORT || 4001;

app.get("/", async (req, res) => {
    var result = "x-forwarded-for': " + req.headers['x-forwarded-for'] +
              "x-real-ip: "           + req.headers['x-real-ip'] +
              "Host"                  + req.headers['host'];
    res.send(result);
});

app.listen(PORT, () => {
    console.log("Listening on port "+PORT+"...");
});
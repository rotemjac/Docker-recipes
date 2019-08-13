const express = require("express");
const app  = express();
const PORT = process.env.PORT || 4003;

app.get("/", async (req, res) => {
    res.send("Hello fom endpoint3 !!");
});

app.listen(PORT, () => {
    console.log("Listening on port "+PORT+"...");
});
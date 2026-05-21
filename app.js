const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Azure 🚀");
  res.send("Hello Azure CI/CD ✅");
  res.send("Now deployment works ✅");

});

app.listen(3000, () => {
  console.log("Server running");
});

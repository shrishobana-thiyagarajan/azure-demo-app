const express = require("express");
const app = express();

// IMPORTANT FIX ✅
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Azure deployment working ✅🚀");
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});

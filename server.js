'use strict';

// This app uses express and pug.
const express = require('express');
const pug = require('pug');

// Config
const PORT = 80;
const HOST = '0.0.0.0';

// Host homepage.pug
const app = express();
app.get('/', (req, res) => {
  res.send(pug.renderFile('homepage.pug'));
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);

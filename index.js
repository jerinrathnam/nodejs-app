const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/health', (req, res) => {
  res.status(200).send('Health check passed');
});

app.get('/',(req, res) => res.send('Hello! This is Jerin Rathnam'));
app.listen(PORT, () => console.log(`Server listening in port ${PORT}`))
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('teste respondendo na porta 3000'))

app.listen(port, () => console.log('App demo escutando na porta ${port}!'))

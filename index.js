const express = require('express')
const app = express()

require('dotenv').config()

const pessoasRouter = require('./routes/pessoas.router.js')
const contasRouter = require('./routes/contas.router.js')

app.use(express.urlencoded({ extended: false }))
app.use(express.json())

app.use('/pessoas', pessoasRouter)
app.use('/contas', contasRouter)

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
    console.log('Servidor rodando na porta 3000')
})

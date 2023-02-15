const express = require('express')
const app = express()

require('dotenv').config()

const pessoaRouter = require('./routes/pessoa.router.js')

app.use(express.urlencoded({ extended: false }))
app.use(express.json())

app.use("/pessoa", pessoaRouter)

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
    console.log("Servidor na porta 3000 rodando...")
})

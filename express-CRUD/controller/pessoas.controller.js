const pool = require('../database/index.js')
const pessoasController = {

    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query('select * from pessoas')
            
            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
        }
    },

    getById: async (req, res) => {
        try {
            const { ID_pessoas } = req.params
            const [rows, fields] = await pool.query('select * from pessoas where ID_pessoas = ?', [ID_pessoas])

            res.json({
                data: rows
            })

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
        }
    },
    create: async (req, res) => {
        try {
            const { nome, cpf, telefone, data_de_nascimento, sexo, endereco } = req.body
            const sql = 'insert into pessoas (nome, cpf, telefone, data_de_nascimento, sexo, endereco) values (?, ?, ?, ?, ?, ?)'
            const [rows, fields] = await pool.query(sql, [nome, cpf, telefone, data_de_nascimento, sexo, endereco])

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
            res.json({
                status: 'error'
            })
        }
    },
    update: async (req, res) => {
        try {
            const { nome, cpf, telefone, data_de_nascimento, sexo, endereco } = req.body
            const { ID_pessoas } = req.params

            const sql = 'update pessoas set nome = ?, cpf = ?, telefone = ?, data_de_nascimento = ?, sexo = ?, endereco = ? where ID_pessoas = ?'
            const [rows, fields] = await pool.query(sql, [nome, cpf, telefone, data_de_nascimento, sexo, endereco, ID_pessoas])

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
            res.json({
                status: 'error'
            })
        }
    },
    delete: async (req, res) => {
        try {
            const { ID_pessoas } = req.params

            const sql = 'delete from pessoas where ID_pessoas = ?'
            const [rows, fields] = await pool.query(sql, [ID_pessoas])

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
            res.json({
                status: 'error'
            })
        }
    }
}

module.exports = pessoasController;

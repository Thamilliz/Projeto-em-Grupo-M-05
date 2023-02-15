const pool = require('../database/index.js')
const pessoaController = {

    getAll: async (req, res) => {
        try {

            const [rows, fields] = await pool.query("select * from pessoa")

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)

        }
    },

    getById: async (req, res) => {
        try {
            const { ID_pessoa } = req.params
            const [rows, fields] = await pool.query("select * from pessoa where ID_pessoa = ?", [ID_pessoa])

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
            const { nome, cpf, data_de_nascimento, sexo, endereco } = req.body
            const sql = "insert into pessoa (nome, cpf, data_de_nascimento, sexo, endereco) values (?, ?, ?, ?, ?)"
            const [rows, fields] = await pool.query(sql, [nome, cpf, data_de_nascimento, sexo, endereco])

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })

        }
    },
    update: async (req, res) => {
        try {
            const { nome, cpf, data_de_nascimento, sexo, endereco } = req.body
            const { ID_pessoa } = req.params

            const sql = "update pessoa set nome = ?, cpf = ?, data_de_nascimento = ?, sexo = ?, endereco = ? where ID_pessoa = ?"
            const [rows, fields] = await pool.query(sql, [nome, cpf, data_de_nascimento, sexo, endereco, ID_pessoa])

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })

        }
    },
    delete: async (req, res) => {
        try {
            const { ID_pessoa } = req.params

            const sql = "delete from pessoa where ID_pessoa = ?"
            const [rows, fields] = await pool.query(sql, [ID_pessoa])

            res.json({
                data: rows
            })

        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })

        }
    }

}

module.exports = pessoaController;

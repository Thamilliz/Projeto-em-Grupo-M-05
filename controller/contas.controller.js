const pool = require('../database/index.js')
const contasController = {

    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query('select * from contas')
            
            res.json({
                data: rows
            })
            
        } catch (error) {
            console.log(error)
        }
    },

    getById: async (req, res) => {
        try {
            const { ID_contas } = req.params
            const [rows, fields] = await pool.query('select * from contas where ID_contas = ?', [ID_contas])

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
            const { agencia, saldo, limite_credito, juros, cesta_de_servicos } = req.body
            const sql = 'insert into contas (agencia, saldo, limite_credito, juros, cesta_de_servicos) values (?, ?, ?, ?, ?)'
            const [rows, fields] = await pool.query(sql, [agencia, saldo, limite_credito, juros, cesta_de_servicos])

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
            const { agencia, saldo, limite_credito, juros, cesta_de_servicos } = req.body
            const { ID_contas } = req.params

            const sql = 'update contas set agencia = ?, saldo = ?, limite_credito = ?, juros = ?, cesta_de_servicos = ? where ID_contas = ?'
            const [rows, fields] = await pool.query(sql, [agencia, saldo, limite_credito, juros, cesta_de_servicos, ID_contas])

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
            const { ID_contas } = req.params

            const sql = 'delete from contas where ID_contas = ?'
            const [rows, fields] = await pool.query(sql, [ID_contas])

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

module.exports = contasController;

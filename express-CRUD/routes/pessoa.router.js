const express = require('express')
const router = express.Router()

const pessoaController = require('../controller/pessoa.controller.js')

router.get("/", pessoaController.getAll)
router.get("/:ID_pessoa", pessoaController.getById)
router.post("/", pessoaController.create)
router.put("/:ID_pessoa", pessoaController.update)
router.delete("/:ID_pessoa", pessoaController.delete)

module.exports = router

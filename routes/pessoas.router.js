const express = require('express')
const router = express.Router()

const pessoasController = require('../controller/pessoas.controller.js')

router.get('/', pessoasController.getAll)
router.get('/:ID_pessoas', pessoasController.getById)
router.post('/', pessoasController.create)
router.put('/:ID_pessoas', pessoasController.update)
router.delete('/:ID_pessoas', pessoasController.delete)

module.exports = router

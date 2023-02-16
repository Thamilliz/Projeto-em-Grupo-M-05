const express = require('express')
const router = express.Router()

const contasController = require('../controller/contas.controller.js')

router.get('/', contasController.getAll)
router.get('/:ID_contas', contasController.getById)
router.post('/', contasController.create)
router.put('/:ID_contas', contasController.update)
router.delete('/:ID_contas', contasController.delete)

module.exports = router

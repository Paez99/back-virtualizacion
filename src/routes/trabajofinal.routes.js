import {Router} from 'express'
import {getTrabajoFinal} from '../controllers/trabajofinal.controller.js'

const router = Router()

router.get('/trabajofinal/:id', getTrabajoFinal)


export default router
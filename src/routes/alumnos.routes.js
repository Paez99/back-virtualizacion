import {Router} from 'express'
import {getAlumno} from '../controllers/alumnos.controller.js'

const router = Router()

router.get('/alumno/:id', getAlumno)


export default router
import express from 'express'
import alumnosRoutes from './routes/alumnos.routes.js'
import trabajoFinalRoutes from './routes/trabajofinal.routes.js'
import cors from 'cors'


const app = express()

app.use(cors())
app.use(alumnosRoutes)
app.use(trabajoFinalRoutes)


app.listen(3000)

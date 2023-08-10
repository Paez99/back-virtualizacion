import express from 'express'
import alumnosRoutes from './routes/alumnos.routes.js'
import trabajoFinalRoutes from './routes/trabajofinal.routes.js'

const app = express()

app.use(alumnosRoutes)
app.use(trabajoFinalRoutes)


app.listen(3000)

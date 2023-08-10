import {pool} from '../db.js'

export const getAlumno = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM estudiante WHERE idEstudiante = ?', [req.params.id])
    res.json(result)
}
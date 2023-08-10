import {pool} from '../db.js'

export const getTrabajoFinal = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM trabajofinal WHERE idEstudiante = ?', [req.params.id])
    res.json(result)
}
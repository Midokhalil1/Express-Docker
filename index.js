import { Express } from "express";
import cors from 'cors'

const PORT = 3000
const app = express()
app.use(cors())

app.get('/test', (req, res) => {
    res.send('Docker API is running...🐳')
})

app.listen(PORT, () =>  {
    console.log(`Listening on http://localhost:${PORT}...`)
})
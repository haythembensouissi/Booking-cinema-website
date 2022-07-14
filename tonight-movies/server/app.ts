import express,{ Request, Response, NextFunction } from 'express';
import mysql from "mysql"
import cors from "cors"
const app = express();
const port = 5000;
app.use(cors())
app.use(express.json())

app.get("/",(req:Request,res:Response)=>{
  const pool=mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"root",
    database:"cinemadb"
  })
  res.status(200).send("te5dem")
})
app.listen(port, () => {
  console.log(`Timezones by location application is running on port ${port}.`);
})
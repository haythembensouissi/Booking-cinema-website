import express,{ Request, Response, NextFunction } from 'express';

import cors from "cors"
const app = express();
const port = 3000;
app.use(cors())
app.use(express.json())
import connection from "./connection"

app.get("/",(req:Request,res:Response)=>{
  res.status(200).send("te5dem")
})
app.get("/api",(req:Request,res:Response)=>{
  const sql="SELECT * FROM MOVIES;"
  connection.query(sql,(err,results)=>{
    if(err){
      console.log(err)
    }
    else{
      res.status(200).send(results)
    }
  })
})
app.post("/api",(req:Request,res:Response)=>{
  const sql="INSERT INTO USERS (username,password,email) VALUES(?,?,?)"
  connection.query(sql,[req.body.username,req.body.password,req.body.email],(error,results)=>{
    if(error){
      console.log(error)
    }
    else{
      res.status(201).send(results)
    }
  })
})
app.get("/api/users",(req:Request,res:Response)=>{
  const sql="SELECT * FROM USERS;"
  connection.query(sql,(err,results)=>{
    if(err){
      console.log(err)
    }
    else{
      res.status(200).send(results)
    }
  })
})
app.get("/api/user",(req:Request,res:Response)=>{
  const sql=`SELECT * FROM USERS WHERE email=? AND password=?;`
  connection.query(sql,[req.body.email,req.body.password],(err,results)=>{
    if(err){
      console.log(err)
    }
    else{
      res.status(200).send(results)
    }
  })
})



app.listen(port, () => {
  console.log(`Timezones by location application is running on port ${port}.`);
})

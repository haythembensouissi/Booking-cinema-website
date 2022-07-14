import express, { Request, Response, NextFunction } from 'express';
import cookieParser from 'cookie-parser';


const app = express();
const port = 3000;

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(cookieParser());

app.get('/test',(req,res)=>{
    
    console.log('hello world');
    
})

app.listen(port, () => {
  console.log(`Timezones by location application is running on port ${port}.`);
});

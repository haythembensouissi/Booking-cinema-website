import mysql from "mysql"
const connect=mysql.createConnection({
    host:"127.0.0.1",
    user:"root",
    password:"root",
    database:"cinemadb"
})
export default connect
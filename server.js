const express = require('express')
const mysql = require('mysql2')
const  api_routes = require('./routes/api_routes')

const app = express()
app.use(express.json())
// app.get('/', (cro,sro)=>{
//     sro.send({message: 'hello'})
// })
app.use('/', api_routes)

app.listen(3333, console.log('started on 3333'))
const router = require('express').Router();
const db = require('../db/connections')
router.get('/', (cro,sro)=>{
    sro.send({message: 'hello'})
})
router.post('/games', (cro,sro) =>{
    const data = cro.body;

    db.query(`INSERT INTO games(title, genre,release_date,platform) VALUES('${data.title}','${data.genre}','${data.release_date}','${data.platform}')`, (err, res) =>{
        if(err) throw err;

        console.log(res)
    })
    console.log(cro)
})

module.exports = router;
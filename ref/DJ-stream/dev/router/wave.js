
// modules
const express = require('express')
const bodyParser = require('body-parser');
const mysql = require('mysql')
const db = require('../custom_modules/db.js')


const router = express.Router()
router.use(bodyParser.urlencoded({ extended: false }))

const query = {
  // 작품 조회
  wave : `
    SELECT WAVE_ID, WAVE_DJ, WAVE_NAME, WAVE_DESC, WAVE_LIVE, WAVE_IMG, WAVE_DT
    FROM WAVE
    WHERE WAVE_DJ = ?
      AND WAVE_NAME = ?;`,
  // 작품 생성
  createWave : `
    INSERT INTO WAVE ( WAVE_DJ, WAVE_NAME, WAVE_DESC, WAVE_LIVE, WAVE_IMG, WAVE_DT )
    VALUES ( ?, ?, ?, TRUE, '/img/logo.png', NOW());`
}


router.get( '/:userId/:waveName', (req, res) => {
  const dj = req.params.userId
  const name = req.params.waveName

  const connection = mysql.createConnection( db.connectionInfo )
  connection.query( query.wave, [dj, name], ( err, rows, fields ) => {
    if( err ) {
      console.log(err)
      res.sendStatus( 400 )
    }
    else {
      const wave = rows.map( x => ({
        id: x.WAVE_ID,
        dj: x.WAVE_DJ,
        name: x.WAVE_NAME,
        desc: x.WAVE_DESC,
      }))[0]
      res.send( wave )
    }
  })
})

router.post( '/:userId/:waveName', (req, res) => {
  const dj = req.params.userId
  const name = req.params.waveName
  const desc = req.body.desc

  const connection = mysql.createConnection( db.connectionInfo )
  connection.query( query.createWave, [dj, name, desc], ( err, result ) => {
    if( err ) {
      console.log(err)
      res.sendStatus( 400 )
    }
    else {
      res.sendStatus( 200 )
    }
  })
})

module.exports = router

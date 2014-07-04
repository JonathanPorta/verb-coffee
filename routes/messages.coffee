express = require 'express'

router = express.Router()

router.get '/', (req, res) ->
  console.log 'GET / messages router'
  res.json
    message: '/messages router'

module.exports = router

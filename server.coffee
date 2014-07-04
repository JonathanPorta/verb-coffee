express = require 'express'
bodyparser = require 'body-parser'

port = process.env.VERB_PORT || 3000

app = express()

app.use bodyparser()

app.use require './middleware/authentication'

app.use '/messages', require './routes/messages'

app.get '/', (req, res) ->
  console.log "GET /"
  res.send "/"

app.listen port

console.log "Verb API listening on port #{ port }"

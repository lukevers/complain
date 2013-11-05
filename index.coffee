# Load modules
http = require 'http'
express = require 'express'

# Create the app
app = express()

# Configure the app
app.use '/static', express.static(__dirname + '/static')
app.set 'views', __dirname + '/views'
app.set 'view engine', 'coffee'
app.engine 'coffee', require('coffeecup').__express

# Router
require('./lib/router') app

# Serve
http.createServer(app).listen(7070, '::')
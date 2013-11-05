# Load modules
#require('better-require')()
http = require 'http'
express = require 'express'

# Create the app
app = express()
app.use '/static', express.static(__dirname + '/static')

# Router
#require('./router.coffee') app
require('./router')(app)

# Serve
http.createServer(app).listen(7070, '::')
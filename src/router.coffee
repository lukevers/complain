module.exports = (app) ->
        
        app.get '/', (req, res) ->
                res.send 'hi'

        app.get '*', (req, res) ->
                res.status 404
                res.send '404 Not Found'
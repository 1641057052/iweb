const http = require('http')
let server = http.createServer(function(req, res) {
	res.end('Welcome to My Site')
})
server.listen(8080)

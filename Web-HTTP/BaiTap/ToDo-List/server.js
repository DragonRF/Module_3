const http = require('http');
const fs = require('fs');
const qs = require('qs')

const server = http.createServer(function (req, res) {
    if (req.method === 'GET') {
        fs.readFile('./display.html', function (err, data) {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.write(data);
            return res.end();
        });
    } else {
        let data = '';
        req.on('data', chunk => {
            data += chunk;
        })
        req.on('end', () => {
            const userTodo = qs.parse(data);
            fs.readFile('./todo.html', 'utf8', function (err, datatodo) {
                if (err) {
                    console.log(err);
                }
                datatodo = datatodo.replace('{todo}', userTodo.todo);
                res.writeHead(200, { 'Content-Type': 'text/html' });
                res.write(datatodo);
                return res.end();
            });
        })
        req.on('error', () => {
            console.log('error')
        })
    }
});

server.listen(8080, function () {
    console.log('server running at localhost:8080 ')
});
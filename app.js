var express = require('express');
    app = express();

app.set('views','views');
app.set('view engine', 'pug');
app.use(express.static('views/assets'))

app.get('/', function(req, res){
    res.render('home.pug', {
    });
});

app.listen(8080);
module.exports.getApp = app;
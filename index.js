const express = require ("express"); //richiesta express 
const app = express (); //creato applicazione
const path = require ("path") //richiesta modulo path per pagine per lavorare su file su piattaforme multiple
app.listen (9000); 

app.get ("/",function (req,res){
    res.send ("il professore mi vuole bene");
})

app.use (function (req,res){
    res.status(404).sendFile (path.join(__dirname,"public","404.html"));//sceglie lui quali /utilizzare
})

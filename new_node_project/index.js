const express=require('express')
const app=express()

app.use(express.json({extended:true}))

app.get('/hii',(req,res)=>{
    res.json({
        "S":"Shikhar s"
    })
})

app.get('/ayush',(req,res)=>{
    res.send(
        "Suck your own dick"
    )
})

app.listen(8080,()=>{console.log('server running on port 8080');
})
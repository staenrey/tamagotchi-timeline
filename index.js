const path = require("path")
const express = require("express")
const bodyParser = require("body-parser")
const db = require("./database")
const app = express()

app.set('view engine', 'ejs')

app.use("/static", express.static(path.join(__dirname, "public")))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))

app.get("/", (req, res) => {
    res.render("home")
})

app.get("/timeline", (req, res) => {
    res.render("timeline")
})

app.get("/admin", (req, res) => {
    res.render("admin")
})

app.get("/tamas", async (req, res) => {
    let results = await db.any("SELECT brand, tama_name, based_on, toy_type, era, region, release::text, got_it FROM tama_entries ORDER BY release;")
    res.json(results)
})

app.post("/tamas", async (req, res) => {
    let tamaData = req.body
    let results = await db.one(`INSERT INTO tama_entries (
        brand, tama_name, based_on, toy_type, era, region, release, got_it
        )
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING brand, tama_name, based_on, toy_type, era, region, release::text, got_it;`,
    [tamaData.brand, tamaData.tama_name, tamaData.based_on, tamaData.toy_type,
    tamaData.era, tamaData.region, tamaData.release, tamaData.got_it])
    res.json(results)
})

PORT = 3000
app.listen(PORT, () => {
    console.log(`server is listening on localhost:${PORT}`)
})
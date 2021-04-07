$("h1").hide()
$("h1").show()

let tamaList = $(".tama-list")

function displayTama(tamaData) {
    let tamaItem = $('<tr></tr>')
    let fieldNames = ['brand', 'tama_name', 'based_on', 'toy_type', 'era', 'region', 'release', 'got_it']
    for (let i = 0; i < fieldNames.length; i++) {
        let fieldName = fieldNames[i]
        let tamaDataCell = $('<td></td>')
        tamaDataCell.html(tamaData[fieldName])
        tamaItem.append(tamaDataCell)
    }
    tamaList.append(tamaItem)
}

async function getAndDisplayTamas() {
    try {
        let data = await $.getJSON("/tamas");
        for (let i = 0; i < data.length; i++) {
            let tamaData = data[i]
            displayTama(tamaData)
        }
    } catch (e) {
        console.log(e);
    }
}

async function addTamaEntry(event){
    event.preventDefault()
    let tamaData = {
        brand: $(".add-tama-group [name='brand']").val(),
        tama_name: $(".add-tama-group [name='tama_name']").val(),
        based_on: $(".add-tama-group [name='based_on']").val(),
        toy_type: $(".add-tama-group [name='toy_type']").val(),

        era: $(".add-tama-group [name='era']").val(),
        region: $(".add-tama-group [name='region']").val(),
        release: $(".add-tama-group [name='release']").val(),
        got_it: $(".add-tama-group [name='got_it']").prop("checked"),
    }

    let newTama = await $.post("/tamas", tamaData)
    displayTama(newTama)
    console.log(result)
}

getAndDisplayTamas()
$(".add-tama-group").on("submit", addTamaEntry)
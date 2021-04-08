$("h1").hide()
$("h1").show()

let tamaList = $(".timeline-tama-list")

function displayTama(tamaData) {
    let tamaItem = $('<div class="tama"></div>')
    let fieldNames = ['brand', 'tama_name', 'based_on', 'toy_type', 'era', 'region', 'release', 'got_it']
    for (let i = 0; i < fieldNames.length; i++) {
        let fieldName = fieldNames[i]
        let tamaDataCell = $('<div></div>')
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

getAndDisplayTamas()
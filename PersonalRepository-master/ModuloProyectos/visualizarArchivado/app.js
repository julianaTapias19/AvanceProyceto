const viewActivity = document.querySelectorAll('.view')
const viewSuspension = document.querySelector('.suspension')
const createActivity = document.querySelectorAll('.add')
const finishProject = document.querySelector('.finish')
const activateProject = document.querySelector('.activate')
const modal = document.querySelectorAll('.modal')
const iconClose = document.querySelectorAll('.iconClose')
const save = document.querySelectorAll('.saveButton')

for( i=0; i < viewActivity.length; i++){
    viewActivity[i].addEventListener('click', () => {
        modal[2].classList.remove('hidden')
        modal[2].classList.add('visible')
    })
}

viewSuspension.addEventListener('click', () =>{
    modal[3].classList.remove('hidden')
    modal[3].classList.add('visible')
})

for (let k = 0; k < createActivity.length; k++) {
    createActivity[k].addEventListener('click', () =>{
        modal[4].classList.remove('hidden')
        modal[4].classList.add('visible')
    })
}

finishProject.addEventListener('click', () =>{
    modal[1].classList.remove('hidden')
    modal[1].classList.add('visible')
})

activateProject.addEventListener('click', () =>{
    console.info('Mostrar modal')
    modal[0].classList.remove('hidden')
    modal[0].classList.add('visible')
})

for (let x = 0; x < modal.length; x++){
    for (let j = 0; j < iconClose.length; j++) {
        iconClose[j].addEventListener('click', () => {
            modal[x].classList.remove('visible')
            modal[x].classList.add('hidden')
        })
    }
}

for (let y = 0; y < modal.length; y++) {
    for (let c = 0; c < save.length; c++) {
        save[c].addEventListener('click', () => {
            modal[y].classList.remove('visible')
            modal[y].classList.add('hidden')
        })
    }
}
const modal = document.querySelector('.modal')
const saveButton = document.querySelector('.saveButton')
const canceButton = document.querySelector('cancelButton')

saveButton.addEventListener('click', () => {
    modal.classList.remove('hidden')
    modal.classList.add('visible')
    document.getElementById("frameModal").src = ""
})
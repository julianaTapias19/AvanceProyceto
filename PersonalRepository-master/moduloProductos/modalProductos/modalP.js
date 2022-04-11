let aceptar=document.getElementById("aceptar");
let cancelar=document.getElementById("cancelar");
let abrir=document.querySelectorAll(".bot1");
let modal=document.querySelector(".modal");
let modalC=document.querySelector(".modal-container");
let segunda=document.querySelector(".segunda-modal");
let irse=document.getElementById("irse");
let confirmar=document.getElementById("confirmar")
let despublicar=document.querySelector("mCar");

for (let l = 0; l < abrir.length; l++) {
    abrir[l].addEventListener('click', () => {
        modalC.style.visibility="visible"
    })
    
}



confirmar.addEventListener("click",function(){
   
    segunda.style.visibility="hidden";
})

irse.addEventListener("click",function(){
    
    segunda.style.visibility="hidden";
})

// abrir.addEventListener("click",function(e){
//     e.preventDefault();
//     modalC.style.visibility="visible";
// });

aceptar.addEventListener("click",function(){
  
    segunda.style.visibility="visible";
    modalC.style.visibility="hidden";
})


cancelar.addEventListener("click",function(){

modalC.style.visibility="hidden";
})




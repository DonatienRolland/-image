function getClicked(){
  const burger = document.getElementById('burger-menu-clicked')
  const body = document.getElementById('test-body')
  const dropdown = document.querySelector('.dropdown-menu-burger')
  const container = document.querySelector('.container-all-dimension')
  const navbar = document.querySelector('.navbar-wagon-position')
  const intro = document.querySelector('.intro-category')
  const banner = document.querySelector('.banner')
  const pictures = document.querySelectorAll('.pictureProtected')
  if (dropdown.style.display == "") {
    moussOver(burger, dropdown)
  }
  if (dropdown.style.display == "none") {
    moussOver(burger, dropdown)
  }
  if (dropdown.style.display == "block") {
    burger.addEventListener('click', function(){
      dropdown.style.display = "none"
    })
  }
  window.onclick = function(event) {
    if (event.target == container ) {
        dropdown.style.display = "none";
    }
    if (event.target == navbar ) {
        dropdown.style.display = "none";
    }
    if (event.target == body ) {
        dropdown.style.display = "none";
    }
    if (event.target == intro ) {
        dropdown.style.display = "none";
    }
    if (event.target == banner ) {
        dropdown.style.display = "none";
    }
    pictures.forEach((picture) => {
  console.log(picture)
      if (event.target == picture ) {
          dropdown.style.display = "none";
      }
    })
  }
}

function moussOver(burger, dropdown){
  burger.addEventListener('mouseover', function(){
    dropdown.style.display = "block"
  })
}

export { getClicked }

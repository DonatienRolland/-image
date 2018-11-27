function sideBar(){
  var openNav = document.getElementById("openNav");
  var closeNav = document.getElementById("closeNav");
  var body = document.getElementById("backOpen");
  var footer = document.getElementById("footer")
  /* Open the sidenav */
  var footerHome = document.getElementById("footer-white")
  if (footer != null ) {
    var icons = footer.querySelectorAll(".whiteJsNavBar")
  }

  openNav.addEventListener("click", function() {
     document.getElementById("mySidenav").style.display = "block";
      body.style.display = "block";
      if (footer != null ) {
        footer.style.backgroundColor = "#ffffff00";
        if (icons != null ) {
          icons.forEach((icon) => {
            icon.style.color = "white"
          })
        }
      }
  })
  /* Close/hide the sidenav */
  closeNav.addEventListener("click", function() {
    document.getElementById("mySidenav").style.display = "none";
    body.style.display = "none";
    if (footer != null ) {
     if (footerHome != null) {
        // footer.style.backgroundColor = '#ffffff00'
      } else {
        footer.style.backgroundColor = 'white'
        icons.forEach((icon) => {
          icon.style.color = "black"
        })
      }
    }
  })
  body.addEventListener("click", function() {
    document.getElementById("mySidenav").style.display = "none";
    body.style.display = "none";
    if (footer != null ) {
     if (footerHome != null) {
        // footer.style.backgroundColor = '#ffffff00'
      } else {
        footer.style.backgroundColor = 'white'
        if ( icons != null ) {
          icons.forEach((icon) => {
            icon.style.color = "black"
          })
        }
      }
    }
  })
}

export { sideBar }

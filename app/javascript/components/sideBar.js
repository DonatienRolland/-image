function sideBar(){
  var openNav = document.getElementById("openNav");
  var closeNav = document.getElementById("closeNav");
  var body = document.getElementById("backOpen");
  var bodytest = document.getElementById("body");
  var footer = document.getElementById("footer")
  /* Open the sidenav */
  var footerHome = document.getElementById("footer-white")
  if (footer != null ) {
    var icons = footer.querySelectorAll(".whiteJsNavBar")
  }

  openNav.addEventListener("click", function() {
     document.getElementById("mySidenav").style.display = "block";
      body.style.display = "block";
      bodytest.style.overflow = "hidden";
      console.log(bodytest.style.overflow)
      if (footer != null ) {
        // footer.style.backgroundColor = "#ffffff00";
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
    bodytest.style.overflow = "scroll";
    if (footer != null ) {
     if (footerHome != null) {
        // footer.style.backgroundColor = '#ffffff00'
      } else {
        // footer.style.backgroundColor = 'white'
        icons.forEach((icon) => {
          icon.style.color = "black"
        })
      }
    }
  })
  body.addEventListener("click", function() {
    document.getElementById("mySidenav").style.display = "none";
    body.style.display = "none";
    bodytest.style.overflow = "scroll";
    if (footer != null ) {
     if (footerHome != null) {
        // footer.style.backgroundColor = '#ffffff00'
      } else {
        // footer.style.backgroundColor = 'white'
        if ( icons != null ) {
          icons.forEach((icon) => {
            icon.style.color = "black"
          })
        }
      }
    }
  })
}



function openShareLinks(){
  const openLink = document.getElementById("openLinks");
  const links = document.querySelector('.direction-share-links')
  if (links != null) {
    openLink.addEventListener("click", function(){
      links.classList.toggle('hidden')
    })
    document.addEventListener('click', function(event) {
      var inside = links.contains(event.target);
      var isClickInside = openLink.contains(event.target);
      if (!isClickInside && !inside) {
        links.classList.add("hidden");
      }
    });
  }
}













export { sideBar, openShareLinks }

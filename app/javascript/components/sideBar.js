function sideBar(){
  const openNav = document.getElementById("openNav");
  const closeNav = document.getElementById("closeNav");
  const body = document.getElementById("backOpen");
  const bodytest = document.getElementById("body");
  const footer = document.getElementById("footer")
  /* Open the sidenav */
  var footerHome = document.getElementById("footer-white")
  if (footer != null ) {
    var icons = footer.querySelectorAll(".whiteJsNavBar")
  }

  openNav.addEventListener("click", function() {
     document.getElementById("mySidenav").style.display = "block";
      body.style.display = "block";
      // simulateClick(document.getElementById("mySidenav"));
      bodytest.style.overflow = "hidden";
      // bodytest.style.position = "fixed";
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
          // icon.style.color = "black"
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
            // icon.style.color = "black"
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

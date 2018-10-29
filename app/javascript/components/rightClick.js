function unrightClcik(){
  const pictures = document.querySelectorAll(".pictureProtected")
  pictures.forEach((picture) => {
    picture.addEventListener("contextmenu", function(e){
      e.preventDefault();
    }, false);
  })
}

export { unrightClcik }

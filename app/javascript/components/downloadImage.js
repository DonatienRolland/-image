function insertImage(){
  const img = document.getElementById('img_prev')
  const inputRotation = document.getElementById('picture_rotation')
  const downloadImg = document.getElementById('photo-upload')

  function readUrl(input){
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      console.log(reader)
      reader.onload = function (e) {
        img.style.backgroundImage = "url(" + e.target.result + ")"
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  downloadImg.addEventListener('change', function(){
    readUrl(this)
  })
}

export { insertImage }



// The FileReader type has a single job: to read data from a file and store it in a JavaScript variable


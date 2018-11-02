function insertImage(){
  const img = document.getElementById('img_prev')
  const inputRotation = document.getElementById('picture_rotation')
  const downloadImg = document.getElementById('photo-upload')

  function readUrl(input){

    if (input.files && input.files[0]) {
      var reader = new FileReader();
      console.log(reader)
      reader.onload = function (e) {
        console.log(e.status)
        console.log(e.target.length)
        img.style.backgroundImage = "url(" + e.target.result + ")"
      }
      img.innerHTML = ""
      reader.readAsDataURL(input.files[0]);
    }
  }

  if (downloadImg != null ) {
    downloadImg.addEventListener('change', function(){
      let size = downloadImg.files[0].size/1024/1024
      size = size.toFixed(2)

      if (size > 10) {
        alert('Le fichier est trop lourd : ' + size + " MB. Modifies la avant de la télécharger!!");
      };
      readUrl(this)
    })
  }
}

export { insertImage }



// The FileReader type has a single job: to read data from a file and store it in a JavaScript variable


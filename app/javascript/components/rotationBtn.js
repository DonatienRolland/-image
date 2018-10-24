function rotationBtn(){
  let inputRotation = document.getElementById('picture_rotation')
  const img = document.getElementById('img_prev')
  const rotationClasses = document.querySelectorAll('.rotation')
  var origin = 0
  if (inputRotation.value != 0) {
    origin = inputRotation.value
    img.style.transform = "rotate("+ origin +"deg)";
  }
  var count = 0
  rotationClasses.forEach((rotation) => {
    rotation.addEventListener('click', function(){
      if (this.dataset.rotation == "positive") {
        count++
        if (count > 3) {
          count = 0
        }
      } else {
        count--
        if (count < -3) {
          count = 0
        }
      }
      var rotate = 90 * count
      var total_rotate = parseInt(rotate) + parseInt(origin);
      inputRotation.value = total_rotate;
      img.style.transform = "rotate("+ total_rotate +"deg)";
    })
  })
}

export { rotationBtn }


function keepMaxSameHeight(){
  const img = document.getElementById('img_prev')
  conso
}

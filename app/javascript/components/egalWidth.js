

function getWidth(){
  const elems = document.querySelectorAll('.get-width')
  const bigWitdh = document.querySelector('.add-max-width')
  let count = 80
  elems.forEach((elem) => {
    count += elem.offsetWidth
    console.log(count)
  })
  if (bigWitdh != null) {
    bigWitdh.style.width = count + "px";
  }
}

export { getWidth }


$( document ).ready(function() {
    var heights = $(".eql-height").map(function() {
        return $(this).height();
    }).get(),

    maxHeight = Math.max.apply(null, heights);
    $(".eql-height").height(maxHeight);
});

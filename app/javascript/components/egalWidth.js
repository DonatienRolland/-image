

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




function sameHeight(){
  const albums = document.querySelectorAll('.GetDataJs')

  albums.forEach((album) => {
    let speAlbum = "." + album.dataset.target
    $( document ).ready(function() {
        var heights = $(speAlbum).map(function() {
            return $(this).height();
        }).get(), maxHeight = Math.max.apply(null, heights);
        if (heights.length < 2) {
          let minHeight = "177px";
          $(speAlbum).height(minHeight);
        } else {
          $(speAlbum).height(maxHeight);
        }

    });

  })
}

export { sameHeight }

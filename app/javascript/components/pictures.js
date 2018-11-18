import Sortable from 'sortablejs' ;


function sortCard() {
  const categoryContainer = document.getElementById('categories');
  const albumContainers = document.querySelectorAll('.albums');
  const pictureContainers = document.querySelectorAll('.pictures');
  if (albumContainers != null) {
    albumContainers.forEach((albumContainer) => {
      albumContainer.addEventListener('mouseout', function(){
        sortableAndAjax(this, "album-card", "album_")
      });
    });
  };
  if (pictureContainers != null) {
    pictureContainers.forEach((pictureContainer) => {
      pictureContainer.addEventListener('mouseover', function(){
        sortableAndAjax(this, "picture-js", "picture_")
      });
    });
  };
  if (categoryContainer != null) {
    categoryContainer.addEventListener('mouseout', function(){
      sortableAndAjaxWithHandler(categoryContainer, "category-card", "category_")
    })
  };
}



export { sortCard }

  function UpdatingModels(evt,cardContainer, card, model_){
    var newcategoryList = evt.target
    var categories = newcategoryList.querySelectorAll("."+card)
    var newarray = []
    categories.forEach(function (value, i) {
      var categoryId = value.id.replace(model_, '')
      newarray.push(categoryId)
    });
    $.ajax({
      url: cardContainer.dataset.url,
      type: "PATCH",
      data: { params_value: newarray },
    });
  }

  function sortableAndAjaxWithHandler(cardContainer, card, model_){
    var sortable = new Sortable(cardContainer, {
      handle: ".my-handle",
      onUpdate: function (evt) {
        UpdatingModels(evt, cardContainer, card, model_)
      }
    });
  }

  function sortableAndAjax(cardContainer, card, model_){
    var sortable = new Sortable(cardContainer, {
      onUpdate: function (evt) {
        UpdatingModels(evt, cardContainer, card, model_)
      }
    });
  }

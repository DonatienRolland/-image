import Sortable from 'sortablejs' ;


function sortCard() {
  const cardContainer = document.getElementById('categories');
  var categories = cardContainer.querySelectorAll('.category')

  var sortable = new Sortable(cardContainer, {
  onUpdate: function(e, ui) {
    var newarray = []
    categories.forEach(function (value, i) {
    var categoryId = value.id.replace('category_', '')
      newarray.push(categoryId)
    });
    $.ajax({
      url: cardContainer.dataset.url,
      type: "PATCH",
      data: { params_value: newarray },
      succes: function(data) {
        console.log(data)
      },
    });
    }
  })

}



export { sortCard }


import Sortable from 'sortablejs' ;


function sortCard() {
  const cardContainer = document.getElementById('categories');
    // console.log(cardContainer)

    // cardContainer.sortable({
    //   update:function(e,ui){
    //     console.log($(this).sortable('serialize'))
    //   }
    // })


  // var sortable = new Sortable(cardContainer, {
  // onUpdate: function(e, ui) {
  //   var item = e.item;
  //   console.log(new Array(e.target.children))
  //   console.log(item)
  //     Rails.ajax({
  //       url: $(this).data("url"),
  //       type: "PATCH",
  //       data: $(this).sortable('serialize'),
  //     });
  //   }
  // })

}



export { sortCard }

function clickOnSubmit(){
  const inputs = document.querySelectorAll('.checking-visibility')
  inputs.forEach((input) => {
    input.addEventListener('change', function(){
      let pictureId = input.dataset.targetid
      document.forms[pictureId].submit()
    })
  })
}

export { clickOnSubmit }


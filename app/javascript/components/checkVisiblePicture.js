function clickOnSubmit(){
  const inputs = document.querySelectorAll('.checking-visibility')
  console.log(inputs)
  inputs.forEach((input) => {
    input.addEventListener('change', function(){
      console.log(input)
      let pictureId = input.dataset.targetid
      document.forms[pictureId].submit()
    })
  })
}

export { clickOnSubmit }


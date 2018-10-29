function copyUrl(){

  var copyEmailBtn = document.getElementById('js-emailcopybtn');

  copyEmailBtn.addEventListener('click', function(event) {
    // Select the email link anchor text
    var emailLink = document.getElementById('js-emaillink');
    console.log(emailLink)
    var range = document.createRange();

    range.selectNode(emailLink);

    window.getSelection().addRange(range);
    document.execCommand('copy');
  //   try {
  //     // Now that we've selected the anchor text, execute the copy command
  //     var successful = document.execCommand('copy');
  //   console.log(successful)
  //     var msg = successful ? 'successful' : 'unsuccessful';
  //     console.log('Copy email command was ' + msg);
  //   } catch(err) {
  //     console.log('Oops, unable to copy');
  //   }

  //   // Remove the selections - NOTE: Should use
  //   // removeRange(range) when it is supported
  //   window.getSelection().removeAllRanges();
  });

}
export { copyUrl }





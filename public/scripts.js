// $(function(){
  // $(document).on("click", "a", function(){
  //     $(this).text("It works!");
  // });

  $(document).ready(function(){
    console.log(window.location.href )
    setTimeout(function() {
      if(window.location.href !== 'http://localhost:4567/') {
        window.location = "http://localhost:4567/";
      }
    }, 1000)

  });
// });

$(document).ready(function () {
   $("#tag_name").tokenInput("/tags/token_input.json", {
          crossDomain: false,
          preventDuplicates: true,
          searchDelay: 1000,
          theme: "facebook"
       });

$("#submit").on('click',function(){
    var abc =  $("#tag_name").tokenInput("get");
    if ($("#name").val() == "" && abc.length == 0 || ($("#name").val() != "" && abc.length != 0 )) {
       $('#Missing').modal({show:true}); 
      return false;
     };
      
  });
 });
console.log("The script is running!");

$(document).ready(function (){
  $("button#enlighten").click(function(){
    $("video#gondola-webm").animate({height:"toggle", width:"toggle"},"slow");
  });
  $("button#Hide").click(function(){
    ('#content').hide();
    $('#Show').appendTo('body');
  });
  $("button#Show").click(function(){
    $("*").show();
  });
});

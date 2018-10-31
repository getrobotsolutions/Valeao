
function CheckVal(bar_code){
    //var bar_code = $("#bar_code").val(); 
    var len = bar_code.length;
    var parts = bar_code.split("|");
    var csiMarker=parts[0];
    var badge_number=parts[1];
    var lastName=parts[2];
    var companyName=parts[3];
  if(csiMarker==null || badge_number==null || lastName==null || companyName== null){
    //alert("Please Scan badge again");
    //location.reload();
  }
  else{
    alert(csiMarker + badge_number + lastName + companyName);
        //window.external.PlaySpeech("welcome" +firstName + " " + lastName +", welcome to our booth."); 
        location.href = "main.htm";             
            var dataString =  { 'CsiMarker' : csiMarker, 'BadgeNumber' : badge_number,  'LastName' : lastName, 'CompanyName' : companyName};
            $.ajax({
              url:"https://robotaisolutions.com/amgen/cannonApi.php",
              type:"get",
              data : dataString,
              cache : false,
              dataType: 'JSON',
              
                success: function(data) {
                  console.log(data);
                  if(data.response=='error'){
                    //alert("Welcome back");
                    //window.external.PlaySpeech("welcome back" +firstName + " " + lastName +"to the CDS booth");

                  }
                  //window.external.PlaySpeech("welcome" +firstName + " " + lastName +"to the CDS booth");
                }
            });
  }      
}
              
$(document).ready(function() {
  $("#bar_code").focus();


  $('#bar_code').codeScanner();
  var bar_code = $("#bar_code"); 
    


  $('.submit').click(function(e) {
    e.preventDefault();
                     
    var bar_code = $("#bar_code").val(); 
    //    console.log(bar_code);
                    
    if(bar_code.length>0){
                    
      CheckVal(bar_code);

    }
    else{
      window.setTimeout(function() {
        var bar_code = $("#bar_code").val();
        CheckVal(bar_code);
      }, 3000);
    }
                                         
  });
                  
  setTimeout(function() {
    $('#submit').trigger('click');
  }, 3000);

                 
});

  function OnJoystickControlled(strPara){
    var btn_info = strPara.split(',')[4];


    if(btn_info[0] == '1'){
            window.external.ChangeLanguage("en-us");
            SetVolume(1);
            window.external.PlaySpeech("Come here please and touch my screen to win a prize.");//I'm here to assist you, press any button on my screen to begin");
          
    }

    if(btn_info[1] == '1'){
        window.external.ChangeLanguage("en-us");
        SetVolume(1);
        window.external.PlaySpeech("Winner , winner, chicken dinner!");
        
    }
    if(btn_info[2] == '1'){
        window.external.ChangeLanguage("en-us");
            SetVolume(1);
            window.external.PlaySpeech("I like you, you are cool.  Would you like to rent me? ");
    }
    if(btn_info[3] == '1'){
        window.external.ChangeLanguage("en-us");
        SetVolume(1);
        window.external.PlaySpeech("Ha, ha.  That tickles.  Good luck on winning a great prize.");
        
    }
  }
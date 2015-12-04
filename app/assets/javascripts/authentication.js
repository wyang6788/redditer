function fuck(){
    var message = <%= @print %>;
    alert("FUCK");
    var code = prompt(message, "")
    
    if(code != null){
      document.getElementById("test").innerHtml = code;
    }
  }

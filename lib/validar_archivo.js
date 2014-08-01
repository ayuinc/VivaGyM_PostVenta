$(document).ready(function() {
   $("#flUpload").change(function () 
   { 
    var fup = document.getElementById('flUpload');
    var fileName = fup.value;
    var ext = fileName.substring(fileName.lastIndexOf('.') + 1);

    if(ext=="jpg" || ext=="JPG" || ext=="jpeg" || ext=="JPEG" || ext=="bmp" || ext=="BMP" || ext=="gif" || ext=="GIF")
      {document.getElementById('lbltype').style.display="none";}
    else{
      $("#lbltype").html( "Tipo de archivo no permitido."+ext);
      document.getElementById('lbltype').style.display="none";
      document.getElementById('grupo_boton').disabled="";
    }

     var iSize = ($("#flUpload")[0].files[0].size / 1024); 
     if (iSize / 1024 > 1) 
     { 
        if (((iSize / 1024) / 1024) > 1) 
        { 
            iSize = (Math.round(((iSize / 1024) / 1024) * 100) / 100);
            if (iSize > 1){ 
                $("#lblSize").html( "El peso del archivo " + iSize + "Gb. es mayor al permitido.");
                document.getElementById('grupo_boton').disabled="disabled";
                document.getElementById('lblSize').style.display="block";}
            else
              {
                document.getElementById('lblSize').style.display="block";
              }
        }
        else
        { 
            iSize = (Math.round((iSize / 1024) * 100) / 100)
            if (iSize > 2){
              $("#lblSize").html( "El peso del archivo " + iSize + "Mb. es mayor al permitido.");
              document.getElementById('grupo_boton').disabled="disabled";
              document.getElementById('lblSize').style.display="block";
            }

            else
              {
                $("#lblSize").html( "El peso del archivo " + iSize + "Mb. está dentro de lo permitido.");
                document.getElementById('lblSize').style.display="block";
                document.getElementById('grupo_boton').disabled="";
              }
        } 
     } 
     else 
     {
        iSize = (Math.round(iSize * 100) / 100)
        $("#lblSize").html( "El peso del archivo " + iSize + "Kb. está dentro de lo permitido.");
        document.getElementById('lblSize').style.display="block";
        document.getElementById('grupo_boton').disabled="";
     }    
  }); 
});

function mostrar_div()
  {
  document.getElementById('lblSize').style.display="none";
  document.getElementById('grupo_boton').disabled="";
  document.getElementById('lbltype').style.display="none";
  $("#lbltype").html( "");
  }
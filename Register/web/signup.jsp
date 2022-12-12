<%-- 
    Document   : signup
    Created on : 11-Dec-2022, 11:15:38 am
    Author     : agraw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
            <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background: url(img/back1.jpg); background-size:cover; background-attachment: fixed;">
        <div class="container">
            <div class="row">
                <diiv class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h1 style="margin-top:10px;" class="center-align">Register here !!</h1>
                            <h5 id="msg" class="center-align"></h5>
                            
                            <div class="form center-align">
                                <!--//creating form-->
                                
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter User name">
                                  <input type="password" name="user_password"  placeholder="Enter your password">
                               <input type="email" name="user_email"  placeholder="Enter your Email">

                                <div class="file-field input-field">
                                  <div class="btn blue">
                                    <span>File</span>
                                    <input  name="image" type="file">
                                  </div>
                                  <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text">
                                  </div>
                                </div>
                               
                               
                               
                               <button type="submit" class="btn lightlue accent-1">Submit</button>
                                    
                                </form>
                                
                            </div>
                            <div class="loader center-align" style="margin-top: 10px; display:none;">
                           


                                    <div class="preloader-wrapper big active">
                                      <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                          <div class="circle"></div>
                                        </div><div class="gap-patch">
                                          <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                          <div class="circle"></div>
                                        </div>
                                      </div>

                                      <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                          <div class="circle"></div>
                                        </div><div class="gap-patch">
                                          <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                          <div class="circle"></div>
                                        </div>
                                      </div>

                                      <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                          <div class="circle"></div>
                                        </div><div class="gap-patch">
                                          <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                          <div class="circle"></div>
                                        </div>
                                      </div>

                                      <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                          <div class="circle"></div>
                                        </div><div class="gap-patch">
                                          <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                          <div class="circle"></div>
                                        </div>
                                      </div>
                                    </div>


                                
                                <h5>Please Wait...</h5>
                                
                                
                            </div>

                        </div>
                    </div>
                </diiv>
            </div>
        </div>
        <script
  src="https://code.jquery.com/jquery-3.6.1.min.js"
  integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
  crossorigin="anonymous"></script>
        
  
  <script>
      $(document).ready(function (){
          console.log("page is ready.......");
          
          $("#myform").on('submit', function(event){
              event.preventDefault();
          //    var f=$(this).serialize();
          
          let f=new FormData(this);
          
              console.log(f);
              $(".loader").show();
              $(".form").hide();
              
              $.ajax({
                  url: "Register",
                  data: f,
                  type: 'POST',
                  success: function(data, textStatus, jqXHR){
                      console.log(data);
                      console.log("Success");
                        $(".loader").hide();
                        $(".form").show();
                        if(data.trim()==='done')
                        {
                            $('#msg').html("Successfully Registered!!");
                            $('#msg').addClass('green-text');
                        }
                        else{
                             $('#msg').html("Something went wrong on server....!!");
                             $('#msg').addClass('red-text');
                           }
                  },
                  error:function(jqXHR, textStatus, errorThrown){
                      console.log(data);
                      console.log("Error");
                        $(".loader").hide();
                        $(".form").show();
                      
                             $('#msg').html("Something went wrong on server....!!");
                              $('#msg').addClass('red-text');
                  },
                  processData:false,
                  contentType:false
              })
          })
          
          
      })
      </script>
    </body>
</html>

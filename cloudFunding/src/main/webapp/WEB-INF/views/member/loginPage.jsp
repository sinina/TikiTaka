 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	



    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="906384191970-n96eii1dt986cgrh7krom313i4us4kab.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>



   
    <title>로그인</title>

    <style>
        .container{
            margin-top:10%;
        }
        .g-signin2{
            padding-left:30%;
        }
        .white{
            color:#000;
            background-color:#fff;
        }
        .btn-facebook {
            color: #ffffff;
            -webkit-text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            background-color: #2b4b90;
            *background-color: #133783;
            background-image: -moz-linear-gradient(top, #3b5998, #133783);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#3b5998), to(#133783));
            background-image: -webkit-linear-gradient(top, #3b5998, #133783);
            background-image: -o-linear-gradient(top, #3b5998, #133783);
            background-image: linear-gradient(to bottom, #3b5998, #133783);
            background-repeat: repeat-x;
            border-color: #133783 #133783 #091b40;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff3b5998', endColorstr='#ff133783', GradientType=0);
            filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
        }
        .btn-facebook:hover,
        .btn-facebook:focus,
        .btn-facebook:active,
        .btn-facebook.active,
        .btn-facebook.disabled,
        .btn-facebook[disabled] {
            color: #ffffff;
            background-color: #133783 !important;
            *background-color: #102e6d !important;
        }
        .btn-facebook:active,
        .btn-facebook.active {
            background-color: #0d2456 \9 !important;
        }
    </style>
    
    
    <script>
      function onSignIn(googleUser) {
    	 
    	console.log('start');
    	  
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());
        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      };
    </script>

</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div></h3>
                    </div>
                    <div class="panel-body">
                        <form accept-charset="UTF-8" role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="yourmail@example.com" name="email" type="text">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me"> Remember Me
                                    </label>
                                </div>
                                <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                            </fieldset>
                        </form>
                        <hr/>
                        <center><h4>OR</h4></center>
                        
         
                        <input class="btn btn-lg btn-facebook btn-block" type="submit" value="회원가입">
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
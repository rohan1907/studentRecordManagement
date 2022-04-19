<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Thank You</title>
        <script src=
        "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js">
        </script>
        <style>
            h1,h2{
                color: red;
            }
        .mode {
            float:right;
        }
        .change {
            cursor: pointer;
            border: 1px solid #555;
            border-radius: 40%;
            width: 20px;
            text-align: center;
            padding: 5px;
            margin-left: 8px;
        }
        .dark{
            background-color: #222;
            color: #e6e6e6;
        }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>

    <body>
        <div class="mode">
            Dark mode:            
            <span class="change">OFF</span>
        </div>
        <div align="center">
            <h1>Thank You!</h1>
            <h2>Your data has been updated successfully.</h2>
            <a href="/student-management/showStudent" class="btn btn-info btn-lg " tabindex="-1" role="button">SHOW STUDENTS</a>
        </div>
        <div align="center">
            <image src="/student-management/resources/images/thankyou.png" width="150" height="300" />
        </div>
        <script>
            $( ".change" ).on("click", function() {
                if( $( "body" ).hasClass( "dark" )) {
                    $( "body" ).removeClass( "dark" );
                    $( ".change" ).text( "OFF" );
                } else {
                    $( "body" ).addClass( "dark" );
                    $( ".change" ).text( "ON" );
                }
            });
        </script>
    </body>

    </html>
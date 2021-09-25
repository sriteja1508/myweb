<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analog Clock</title>
    <!-- Stylesheet-->
    <link rel="stylesheet" href="https://github.com/laxmikanth2021/myweb/blob/master/src/main/webapp/style.css" type="text/css">   
    <style> 
        *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    height: 100vh;
    background: linear-gradient(
        to bottom,
        #2987e4 50%,
        #16191e 50%
    );
}
.clock{
    background: #16191e;
    height: 320px;
    width: 320px;
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    box-sizing: content-box;
    border-radius: 50%;
    border: 15px solid #242931;
    box-shadow: 15px 15px 35px rgba(0,0,0,0.2),
    inset 0 0 30px rgba(0,0,0,0.4);
}
img{
    position: relative;
}
.hand{
    position: absolute;
    background-color: #ffffff;
    margin: auto;
    left: 0;
    right: 0;
    border-radius: 5px;
    transform-origin: bottom;
}
.hour{
    height: 60px;
    width: 10px;
    top: 100px;
}
.minute{
    height: 80px;
    width: 5px;
    top: 80px;
}
.seconds{
    height: 90px;
    width: 3px;
    top: 70px;
    background-color: #2987e4;
}

    </style>
</head>
<body>
    <div class="clock">
        <div class="hour hand" id="hour"></div>
        <div class="minute hand" id="minute"></div>
        <div class="seconds hand" id="seconds"></div>
        <img src="clock template.svg" alt="clock">
    </div>
    <!-- Script -->
    <script src="script.js"></script>
</body>
</html>

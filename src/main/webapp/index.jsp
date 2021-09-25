<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Random Hex Code Generator</title>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@600&display=swap"
      rel="stylesheet"
    />
    <style> 
         * {
        padding: 0;
        margin: 0;
        -webkit-box-sizing: border-box;
                box-sizing: border-box;
        border: none;
        outline: none;
        font-family: "Roboto Mono", monospace;
      }
      body {
        background-color: #121317;
      }
      .wrapper {
        width: 320px;
        position: absolute;
        -webkit-transform: translateX(-50%);
            -ms-transform: translateX(-50%);
                transform: translateX(-50%);
        top: 100px;
        left: 50%;
      }
      .container {
        position: relative;
        padding: 30px 20px;
        display: -ms-grid;
        display: grid;
        grid-gap: 30px;
        border-radius: 10px;
        background-color: #202229;
      }
      a {
        display: block;
        font-size: 18px;
        background-color: #202229;
        width: 100%;
        padding: 15px 0;
        text-align: center;
        border-radius: 5px;
        color: #f5f5f5;
        text-decoration: none;
        margin-top: 30px;
      }
      input[type="text"] {
        width: 100%;
        background-color: transparent;
        border: 2.5px dashed #f5f5f5;
        padding: 15px 0;
        font-size: 20px;
        text-align: center;
        color: #f5f5f5;
        border-radius: 8px;
      }
      input[type="text"]::-moz-selection {
        background: transparent;
      }
      input[type="text"]::selection {
        background: transparent;
      }
      .btns {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
            -ms-flex-pack: justify;
                justify-content: space-between;
      }
      .btns button {
        font-size: 16px;
        padding: 12px 25px;
        border-radius: 8px;
        font-weight: 600;
        cursor: pointer;
      }
      #gen-btn {
        background: #18f98f;
        color: #181818;
      }
      #copy-btn {
        border: 3px solid #18f98f;
        background-color: transparent;
        color: #18f98f;
      }
      #output-color {
        position: relative;
        height: 150px;
        width: 150px;
        border-radius: 50%;
        margin: auto;
        border: 8px solid #f5f5f5;
        display: -ms-grid;
        display: grid;
        place-items: center;
      }
      #output-color span {
        display: block;
        height: calc(100% - 20px);
        width: calc(100% - 20px);
        border-radius: 50%;
      }
      .show-color {
        -webkit-animation: pop 0.8s;
                animation: pop 0.8s;
      }
      @-webkit-keyframes pop {
        0% {
          -webkit-transform: scale(0);
                  transform: scale(0);
        }
        100% {
          -webkit-transform: scale(1);
                  transform: scale(1);
        }
      }
      @keyframes pop {
        0% {
          -webkit-transform: scale(0);
                  transform: scale(0);
        }
        100% {
          -webkit-transform: scale(1);
                  transform: scale(1);
        }
      }
      .custom-alert {
        background-color: rgba(255, 255, 255, 0.3);
        padding: 10px 15px;
        font-size: 14px;
        text-align: center;
        color: #f5f5f5;
        position: fixed;
        top: 10px;
        right: 10px;
        -webkit-transition: 0.5s;
        -o-transition: 0.5s;
        transition: 0.5s;
        -webkit-transform: translateX(calc(100% + 10px));
            -ms-transform: translateX(calc(100% + 10px));
                transform: translateX(calc(100% + 10px));
      }
    
    </style>
  </head>
  <body>
    <div class="wrapper">
      <div class="container">
        <div id="output-color">
          <span></span>
        </div>
        <input type="text" id="output" readonly />
        <div class="btns">
          <button id="gen-btn">Generate</button>
          <button id="copy-btn">Copy</button>
        </div>
      </div>
      <a href="https://youtu.be/Zqc-fmRvpLw" target="_blank"
        >My Youtube Channel</a
      >
    </div>
    <div class="custom-alert">Hex Code Copied</div>
    <script>
      let outputColor = document.querySelector("#output-color span");
      let output = document.getElementById("output");
      let genBtn = document.getElementById("gen-btn");
      let copyBtn = document.getElementById("copy-btn");
      let customAlert = document.querySelector(".custom-alert");
      let hexString = "0123456789abcdef";

      let genHexCode = () => {
        let hexCode = "#";
        for (i = 0; i < 6; i++) {
          hexCode += hexString[Math.floor(Math.random() * hexString.length)];
        }
        output.value = hexCode;
        outputColor.classList.remove("show-color");
        setTimeout(() => {
          outputColor.classList.add("show-color");
        }, 10);
        outputColor.style.backgroundColor = hexCode;
      };
      copyBtn.addEventListener("click", () => {
        output.select();
        document.execCommand("copy");
        customAlert.style.transform = "translateX(0)";
        setTimeout(() => {
          customAlert.style.transform = "translateX(calc( 100% + 10px))";
        }, 2000);
      });

      genBtn.addEventListener("click", genHexCode);
      window.onload = genHexCode;
    </script>
  </body>
</html>

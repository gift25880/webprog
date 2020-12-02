window.onload = function() {
    setBackGround();
}

let div = document.getElementsByClassName("grid-container")[0];

let changeColor = function() {
    let id = event.target.innerText;
    document.body.style.backgroundColor = id;
    setCookie("favColor",id,7);
}

div.addEventListener("click", changeColor);

function setCookie(name,value,expireDay) {
    var d = new Date();
    d.setTime(d.getTime() + (expireDay*24*60*60*1000));
    let expire = "expires=" + d.toUTCString();
    let cookieText = `${encodeURIComponent(name)}=${encodeURIComponent(value)}; ${expire}; path=/`
    document.cookie = cookieText;
}

function getCookie(cname) {
    console.log(`all cookies: ${document.cookie}`);
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var split = decodedCookie.split(';');
    for(var i = 0; i < split.length; i++) {
      var c = split[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
}

function setBackGround() {
    var favColor = getCookie('favColor');
    document.body.style.backgroundColor = favColor;
}

console.log("The script is running!");

function addBlackBorder(event) {
  console.log("click happened!");
  console.log(event);
  event.target.style.border = "3px solid black";
}

var video = document.getElementById("gondola-webm");
video.addEventListener("click", addBlackBorder);

console.log('js speaking');

console.log('work!');

const number = Math.floor(Math.random() * 5);
const randoms = ["red", "blue", "green", "yellow"];


function changeColor() {
    const bg = document.querySelector("main");
    bg.classList = "";
    bg.classList.add(randoms[number]);
}
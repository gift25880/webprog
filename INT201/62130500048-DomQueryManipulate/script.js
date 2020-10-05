//1.1 show the first menu of appetizer
let firstMenu = document.getElementById("appetizer").firstElementChild;
console.log(firstMenu);
//1.2 show a second menu item  of soup menu
let secondMenu = document.getElementById("soup").firstElementChild.nextElementSibling;
console.log(secondMenu);
//1.3 show all menus of vegan class
let vegan = document.getElementsByClassName("vegan");
for (let i = 0; i<vegan.length; i++) {
    console.log(vegan[i]);
}
//1.4 insert a new list item "<li class="seafood">Shrimp Rolls</li>" to the end of appetizer menu 
let appetizer = document.getElementById("appetizer");
let lastElement = appetizer.lastElementChild;
let newItem = document.createElement("li");
newItem.setAttribute("class", "seafood");
newItem.innerText= "Shrimp Rolls";
appetizer.insertBefore(newItem,lastElement.nextElementSibling);
appetizer.appendChild(lastElement.nextSibling);
console.log(appetizer.lastElementChild);
//1.5 change a classname of Tuna Sandwich to "seafood"
let tuna = document.getElementsByClassName("meat")[1];
tuna.className = "seafood";
console.log(tuna);
//1.6 insert a new list item "<li class="seafood">Shrimp-Corn Soup></li> before <li class="meat">Beef Soup</li>
let soup = document.getElementById("soup");
let beefSoup = soup.lastElementChild.previousElementSibling;
let shrimpCornSoup = document.createElement("li");
shrimpCornSoup.setAttribute("class","seafood");
shrimpCornSoup.innerText = "Shrimp-Corn Soup";
soup.insertBefore(shrimpCornSoup,beefSoup.nextElementSibling);
soup.appendChild(beefSoup.nextSibling);
console.log(beefSoup.nextElementSibling);
//1.7 show the menu category [Appetizer|Soup] of a list item <li class="meat">Beef Soup</li>
console.log(beefSoup.parentElement.getAttribute("id"));
//1.8 remove a menu item <li class="meat">Beef Soup</li>
soup.removeChild(beefSoup);


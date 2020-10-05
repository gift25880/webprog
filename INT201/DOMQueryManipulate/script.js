// 1.1 show the first menu of appetizer 
let appetizer = document.getElementById("appetizer");
console.log(appetizer.firstElementChild.innerHTML);

// 1.2 show a second menu item of soup menu  
let soup = document.getElementById("soup");
console.log(soup.firstElementChild.nextElementSibling.innerHTML);

// 1.3 show all menus of vegan class 
let vegan = document.getElementsByClassName("vegan");
for (let i = 0; i<vegan.length; i++) {
    console.log(vegan[i].innerHTML);
}

// 1.4 insert a new list item 
// "<li class="seafood">Shrimp Rolls</li>" 
// to the end of appetizer menu  
let li = document.createElement("li");
li.setAttribute("class","seafood");
li.innerText = "Shrimp Roll";
appetizer.insertBefore(li,null);
console.log(li);

// 1.5 change a class name of Tuna Sandwich to "seafood" 
let tuna = appetizer.lastElementChild.previousElementSibling;
tuna.className = "seafood";
console.log(tuna);

// 1.6 insert a new list item 
// "<li class="seafood">Shrimp-Corn Soup></li> before  
// <li class="meat">Beef Soup</li>  
let shrimpCornSoup = document.createElement("li");
shrimpCornSoup.setAttribute("class","seafood");
shrimpCornSoup.innerText = "Shirmp-Corn Soup";
let beefSoup = soup.lastElementChild.previousElementSibling;
soup.insertBefore(shrimpCornSoup,beefSoup);
console.log(shrimpCornSoup);


// 1.7 show the menu category [Appetizer|Soup] of a list item 
{/* <li class="meat">Beef Soup</li>  */}
console.log(beefSoup.parentElement.getAttribute("id"));

// 1.8 remove a menu item <li class="meat">Beef Soup</li> 
beefSoup.remove();
// let person = {
//     firstName: "Pathinya",
//     lastName: "Thonguam",
//     greeting: function() {
//         console.log("Hello, "+person.firstName);
//     }
// }

// let person = new Object();
// person.firstName = "Pathinya";
// person.lastName = "Thonguam";
// person.greeting = function() {
//     console.log("Hello, "+person.firstName);
// }

let person = Object.create({firstName: "Pathinya", lastName: "Thonguam", greeting: function() {console.log("Hello, "+person.firstName);}});

person.greeting();
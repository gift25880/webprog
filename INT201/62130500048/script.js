let num = parseInt(prompt("Enter Year: "));
let nummod12 = num%12;
console.log(findZodiac(nummod12));


function findZodiac(nummod12) {
    switch(nummod12) {
        case 0:
            document.write("monkey"); 
            return "monkey";            
        case 1:
            document.write("rooster"); 
            return "rooster";            
        case 2:
            document.write("dog"); 
            return "dog";            
        case 3:
            document.write("pig"); 
            return "pig";            
        case 4:
            document.write("rat"); 
            return "rat";            
        case 5:
            document.write("ox"); 
            return "ox";            
        case 6: 
            document.write("tiger");
            return "tiger";            
        case 7:
            document.write("rabbit"); 
            return "rabbit";           
        case 8:
            document.write("dragon"); 
            return "dragon";           
        case 9:
            document.write("snake"); 
            return "snake";            
        case 10:
            document.write("horse"); 
            return "horse";            
        case 11:
            document.write("sheep"); 
            return "sheep";            
        default: 
            document.write("Please enter number only!");
            return "Invalid Input";
    }
}
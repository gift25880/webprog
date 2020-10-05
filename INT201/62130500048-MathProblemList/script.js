let number = parseInt(prompt("Enter the number of Math questions generated"))


for (let i = 0; i<number; i++) {
    let firstOperand = Math.floor(Math.random()*10+1);
    let secondOperand = Math.floor(Math.random()*10+1);
    let randomOperator = Math.floor(Math.random()*3+1);
    let operator;
    switch(randomOperator) {
        case 1: 
            operator = "+";
            break;
        case 2:
            operator = "-";
            break;
        case 3:
            operator = "x";
            break;
        default:
            document.write("Something wrong :(");
    }
    let problem = document.getElementsByClassName("problem")[0];
    let questions = document.createElement("label"); 
    let inputBox = document.createElement("input");
    inputBox.setAttribute("name", `q+${i+1}`)
    inputBox.setAttribute("value", `${firstOperand} ${operator} ${secondOperand}`)
    questions.innerHTML = `${firstOperand} ${operator} ${secondOperand} &nbsp;`;
    problem.insertBefore(questions, null);
    problem.insertBefore(inputBox, null);
    problem.insertBefore(document.createElement("br"),null);
    problem.insertBefore(document.createElement("br"),null);
    
    console.log(questions);

}


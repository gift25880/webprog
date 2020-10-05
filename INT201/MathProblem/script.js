class MathProblem {
    constructor() {
        this._firstOperand = 0;
        this._secondOperand = 0;
        this._operator = "";
        this._realAns = 0;
        this._correct = 0;
        this._wrong = 0;
    }

    randomNumber() {
        let randNum = Math.floor(Math.random() * 10 + 1);
        return randNum;
    }

    randomOperator() {
        let randOperator = Math.floor(Math.random() * 3 + 1);
        switch (randOperator) {
            case 1:
                this._operator = "+";
                break;
            case 2:
                this._operator = "-";
                break;
            case 3:
                this._operator = "*";
                break;
            default:
                document.write('Something wrong...');
                break;
        }
        return this._operator;
    }

    calculateAnswer(num1,num2,o) {
        if(o === '+') {
            this._realAns = num1+num2;
        } else if(o == '-') {
            this._realAns = num1-num2;
        } else {
            this._realAns = num1*num2;
        }
        return this._realAns;
    }

    generateQuestion() {
        let problem = document.getElementsByClassName("problem")[0];
        let label = document.createElement("h1");
        let input = document.createElement("input");
        let questions;

        this._firstOperand = this.randomNumber();
        console.log(`num1: ${this._firstOperand}`);
        this._secondOperand = this.randomNumber();
        console.log(`num2: ${this._secondOperand}`);
        this._operator = this.randomOperator();
        console.log(`o: ${this._operator}`);

        this.calculateAnswer(this._firstOperand,this._secondOperand,this._operator);

        questions = `${this._firstOperand} ${this._operator} ${this._secondOperand} `;
        console.log(questions);

        label.innerText = questions;
        input.setAttribute("name", `question`);

        problem.insertBefore(label, problem.firstElementChild);
        problem.insertBefore(input, problem.lastElementChild);
    }

    removeQuestion() {
        let oldAnswer = document.getElementsByTagName("input")[0].value;
        console.log(oldAnswer);
        oldAnswer = "";
        let oldH1 = document.getElementsByTagName("h1")[0];
        let oldInput = document.getElementsByTagName("input")[0];
        oldH1.remove();
        oldInput.remove();
    }

    problemChecking(e) {
        e.preventDefault();
        let userAns;
        
        userAns = parseInt(document.getElementsByTagName("input")[0].value);
        console.log(userAns);
        console.log(`realAns: ${this._realAns}`);
        if (userAns == this._realAns) {
            this._correct++;
            alert(`Good job! \n Your corrext answer is ${this._correct}`);
        } else {
            this._wrong++;
            alert(`Try it out! \n Your wrong answer is ${this._wrong}`);
        }
        
        this.removeQuestion();
        this.generateQuestion();

    }

    start() {
        this.generateQuestion();
        const ansForm = document.querySelector(".problem");
        ansForm.addEventListener("submit", this.problemChecking.bind(this) );
        
    }
}

let mp = new MathProblem();
mp.start();
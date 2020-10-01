class Player {
    constructor(id) {
        this._id = id;
    }

    get id() {
        return this._id;
    }

    tostring() {
        return "id: "+this._id;
    }
}

class Dice {
    constructor() {
        this._faceValue = 0;
    }

    roll() {
        this._faceValue = Math.floor((Math.random()*6)+1);
        return this._faceValue;
    }

    get faceValue() {
        return this._faceValue;
    }

    toString() {
        return "faceValue: "+this._faceValue;
    }
}

class RollingDiceGame {

    constructor(p1, p2, totalRounds) {
        this._p1 = new Player(p1);
        this._p2 = new Player(p2);
        this._totalRounds = totalRounds;
        this._drawRounds = 0;
        this._dice = new Dice();        
        this._p1WinRounds = 0;
        this._p2WinRounds = 0; 
    }

    play() {
        for (let i=0; i<this._totalRounds; i++) {
            document.write(`ROUND ${i+1}! <br>`);
            rdg.roundAt();
            document.write(`<br><br>`);
        }
        rdg.toString();
        
    }

    roundAt() {
        let p1DiceValue = this._dice.roll();
        console.log("p1Dice: "+p1DiceValue);
        let p2DiceValue = this._dice.roll();
        console.log("p1Dice: "+p2DiceValue);
        document.write(`Player 1 Id: ${this._p1._id}, Dice Value: ${p1DiceValue} <br>`);
        document.write(`Player 2 Id: ${this._p2._id}, Dice Value: ${p2DiceValue} <br>`);
        if (p1DiceValue > p2DiceValue) {
            this._p1WinRounds++;
            console.log("p1Win: "+this._p1WinRounds);
            document.write(`Player 1: ${this._p1._id} WON!`);
        } else if (p1DiceValue < p2DiceValue) {
            this._p2WinRounds++;
            console.log("p2Win: "+this._p2WinRounds);
            document.write(`Player 2: ${this._p2._id} WON!`);
        } else {
            this._drawRounds++;
            console.log("draw: "+this._drawRounds);
            document.write(`DRAW!`)
        }
    }

    winner() {
        if (this._p1WinRounds > this._p2WinRounds) {
            document.write(`Player 1: ${this._p1._id} WIN!`)
        } else if (this._p1WinRounds < this._p2WinRounds) {
            document.write(`Player 2: ${this._p2._id} WIN!`)
        } else {
            document.write(`DRAW!`)
        }
    }

    toString() {
        document.write(`Total Round: ${this._totalRounds} <br>`);
        document.write(`Draw Rounds: ${this._drawRounds} <br>`);
        document.write(`Player 1 Id: ${this._p1._id}, Win: ${this._p1WinRounds} <br>`);
        document.write(`Player 2 Id: ${this._p2._id}, Win: ${this._p2WinRounds} <br>`);
        rdg.winner();
    }
}

p1Id = prompt("Enter Player1 Id: ");
p2Id = prompt("Enter Player2 Id: ");
rounds = parseInt(prompt("Enter number of rounds: "));
rdg = new RollingDiceGame(p1Id,p2Id,rounds);
console.log("p1Id: "+rdg._p1._id);
console.log("p2Id: "+rdg._p2._id);
console.log("totalRounds: "+rdg._totalRounds);
rdg.play();


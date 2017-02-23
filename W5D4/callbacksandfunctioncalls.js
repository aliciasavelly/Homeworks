//Simple Timeout
//asynchronous

window.setTimeout(function() {
  alert('HAMMERTIME');
}, 5000);

//Timeout Plus Closure
function Hammertime(time) {
  window.setTimeout(function() {
    alert(`${time} is HAMMER TIME!`);
  });
}

//Some tea? Some biscuits?
const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {
  reader.question("Would you like some tea?", function (res) {
    console.log(`You replied ${res}.`);
    reader.question("Would you like some buscuits?", function (res2) {
      console.log(`You replied ${res2}.`);

      const first = (res === 'yes') ? 'do' : 'don\'t';
      const second = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${first} want tea and you ${second} want buscuits.`);
      reader.close();
    });
  });
}

//Ways to Call a Function
function Cat () {
    this.name = 'Markov';
    this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

//This is not working...
Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();

//Method style
Noodles.chase(Markov);

Noodles.chase.call(Markov, Noodles);
Noodles.chase.apply(Markov, [Noodles]);

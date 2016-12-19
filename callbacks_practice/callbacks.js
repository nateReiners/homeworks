// let friends = ["Matt", "Yong", "Carson", "Ken"];
//
// friends.forEach(function(name, idx) {
//   console.log(`${idx + 1}: ${name}`);
// })
//
//
// function titleize(names, callback) {
//   let titleized = names.map(name =>
//     `Mx. ${name} Jingleheimer Schmidt`);
//     callback(titleized)
// }
//
// titleize(["nate", "bob", "kazu", "mary"], function(names) {
//   names.forEach(name => console.log(name));
// });


function Elephant(name, height, tricks) {
  this.name = name,
  this.height = height,
  this.tricks = tricks

  this.trumpet = function() {
    console.log(`${this.name} the elephant goes "phrRRRRR!!!"`);
  }

  this.grow = function() {
    let originalHeight = this.height;
    this.height = parseInt(this.height) + 12
    console.log(`${this.name} grew from ${originalHeight} inches to ${this.height} inches!`)
  }

  this.addTrick = function(trick) {
    this.tricks.push(trick);
  }

  this.play = function() {
    let trickIdx = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[trickIdx]}!!`)
  }
};

function elephantHelper(elephant) {
  console.log(`${elephant.name} is strutting by in the big parade!`)
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

herd.forEach(elephant => {
  elephantHelper(elephant);
})

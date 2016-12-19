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

let e1 = new Elephant("Nate", "72", ["painting a picture", "snowboarding down a mountain", "running fast"]);
e1.grow();

e1.addTrick("doing a kickflip");
e1.play();

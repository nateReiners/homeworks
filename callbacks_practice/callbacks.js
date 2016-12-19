// let friends = ["Matt", "Yong", "Carson", "Ken"];
//
// friends.forEach(function(name, idx) {
//   console.log(`${idx + 1}: ${name}`);
// })


function titleize(names, callback) {
  let titleized = names.map(name =>
    `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized)
}

titleize(["nate", "bob", "kazu", "mary"], function(names) {
  names.forEach(name => console.log(name));
});

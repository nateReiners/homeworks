Array.prototype.myUniq = function() {
  let arr = [];
  this.forEach(function(el) {
    if (arr.indexOf(el) === -1) {
      arr.push(el);
    }
  });
  console.log(arr);
};

// [1, 2, 3, 3, 3, 2, 1].myUniq();

Array.prototype.two_sum = function() {
  let arr = []
  for (let i = 0; i < this.length - 1; i++) {
    for (let j = i + 1; j < this.length; j++) {
      if (this[i] + this[j] === 0) {
        arr.push([i, j]);
      }
    }
  }
  return arr;
};


// console.log([1, 2, -1000, -2, -1, 1, 1000].two_sum());

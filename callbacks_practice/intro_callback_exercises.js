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
Array.prototype.myTranspose = function() {
  let transposedArr = []

  for ( let i = 0; i < this.length; i++ ) {
    let subarr = [];
    for ( let j = 0; j < this.length; j++ ) {
      subarr.push(this[j][i]);
    }
    transposedArr.push(subarr);
    subarr = [];
  }
  return transposedArr;
}


// console.log([[1, 2, 3], [4, 5, 6], [7, 8, 9]].myTranspose());

function range(start, end) {
  if (start > end) {
    return [];
  }
  return range(start, end - 1).concat(end);
}

function fibbonacci(n) {
  if (n <= 2) {
    return [0, 1].slice(0, n);
  }
  let fibs = fibbonacci(n - 1);
  fibs.push(fibs[fibs.length - 1] + fibs[fibs.length - 2]);
  return fibs;
}

console.log(fibbonacci(90));

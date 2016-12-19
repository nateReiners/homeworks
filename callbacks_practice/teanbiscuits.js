const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});


function teaAndBiscuits () {
  let first, second;
  reader.question('Would you like some tea?\n', (res) => {
    first = res;
    console.log(`You replied ${res}.`);
    reader.question('Would you like some biscuits?\n', (res2) => {
      second = res2
      const firstRes = (res === 'yes') ? 'do' : 'don\'t';
      const secondRes = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}


// teaAndBiscuits();

function hasOdd(numbers) {
  let bool = false
  numbers.forEach(num => {
    if (num % 2 == 0) {
      bool = true
    }
  });
  console.log(bool)
}

hasOdd([1, 2, 3, 4, 5])


function odd(numbers) {
  numbers.map((num, i) => {
    if (num % 2 == 0) {
      numbers.splice(i, 1);
    }
  });
  console.log(numbers)
}

odd([1, 2, 3, 4, 5])


function squere(numbers) {
  numbers.map((num, i) => {
    let new_num = num ** 2
    numbers.splice(i, 1, new_num)
  });
  console.log(numbers)
}

squere([1, 2, 3, 4, 5])
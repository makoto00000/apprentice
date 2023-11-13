// function asyncSort(numbers) {
//   return new Promise((resolve, reject) => {
//     setTimeout(() => {
//       // ここにコードを書く
//       sortedNumbers = numbers.sort()
//       resolve(sortedNumbers);
//     }, 2000);
//   });
// }

// const numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
// asyncSort(numbers).then((sortedNumbers) => {
//   console.log(sortedNumbers);
// }).catch((error) => {
//   console.error(`Error: ${error}`);
// });

// console.log('同期処理');

// // 同期処理
// // [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]


// // 以下のように書くことで、順番を守ることができる。
// const numbers2 = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
// asyncSort(numbers2).then((sortedNumbers) => {
//   console.log(sortedNumbers);
// }).then(() => {
//   console.log('同期処理');
// }).catch((error) => {
//   console.error(`Error: ${error}`);
// });

// // [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
// // 同期処理

function asyncSort(numbers) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      // ここにコードを書く
      let sortedNumbers = numbers.sort();
      resolve(sortedNumbers);
    }, 2000);
  });
}

async function sortNumbers() {
  const numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
  // ここにコードを書く
  // asyncSort 関数を await を使って同期的に呼び出し、結果を sortedNumbers に入れる
  let sortedNumbers = await asyncSort(numbers)
  console.log(sortedNumbers); // ソートされた配列をコンソールに出力する
}

sortNumbers();
console.log('同期処理');

// 同期処理
// [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
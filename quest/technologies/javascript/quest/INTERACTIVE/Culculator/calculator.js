// 数字ボタンのElementを取得
const nums = document.getElementById('buttons').querySelectorAll('.digit')

// 四則演算ボタンのElementを取得
const operators = document.getElementById('buttons').querySelectorAll('.operator')

// イコールボタンのElementを取得
const equal = document.getElementById('equals')

// クリアボタンのElementを取得
const clear = document.getElementById('clear')

// ディスプレイのElementを取得
const display = document.getElementById('display')


// 数字ボタンが押されたときの処理
nums.forEach(num => {
  num.addEventListener('click', () => {
    let dispArr = display.textContent.split(" ")
    if (dispArr.length == 2) {
      display.textContent += " " + num.textContent
    } else {
      display.textContent += num.textContent
    }
  })
})

// 四則演算ボタンが押されたときの処理
operators.forEach(operator => {
  operator.addEventListener('click', () => {
    let dispArr = display.textContent.split(" ")
    if (dispArr.length == 3) {
      calc();
    } else if (dispArr.length == 2) {
      display.textContent = display.textContent.replace(dispArr[1], operator.textContent)
    } else {
      display.textContent += " " + operator.textContent
    }
  })
})

// イコールボタンが押されたときの処理
equal.addEventListener('click', () => {
  calc()
})

// クリアボタンが押されたときの処理
clear.addEventListener('click', () => {
  display.textContent = ""
})

// 計算処理を実行するメソッド
function calc() {
  let dispArr = display.textContent.split(" ")
  display.textContent = ""
  switch (dispArr[1]) {
    case "+":
      display.textContent = String(Number(dispArr[0]) + Number(dispArr[2]))
      break;
    case "-":
      display.textContent = String(Number(dispArr[0]) - Number(dispArr[2]))
      break;
    case "*":
      display.textContent = String(Number(dispArr[0]) * Number(dispArr[2]))
      break;
    case "/":
      display.textContent = String(Number(dispArr[0]) / Number(dispArr[2]))
      break;
  }
  dispArr = []
}

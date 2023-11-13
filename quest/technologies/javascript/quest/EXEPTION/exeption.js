function checkDivisibleByFive(num) {
  // 処理を記述
  if (num % 5 == 0) {
    return true
  } else {
    return false
  }
}

// 処理を記述、try...catch 構文を使用し、その中で checkDivisibleByFive 関数を呼び出す
try {
  if (!checkDivisibleByFive(2)) {
    throw new Error("数値は5で割り切れません")
  }
} catch (e) {
  console.error(e.message)
}

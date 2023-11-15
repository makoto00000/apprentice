const input = document.getElementById('todo-input')
const btn = document.getElementById('add-button')

let data = []
let todos = []

// チェックボックス、削除ボタンが押された時の処理
function addTodoEvent(todos) {
  todos.forEach((todo, index) => {
    let checkbox = todo.querySelector("input[name=complete]")
    let deleteBtn = todo.querySelector('button')

    checkbox.addEventListener('change', () => {
      data[index].isComplete = checkbox.checked
      initData();
    });

    deleteBtn.addEventListener('click', () => {
      data.splice(index, 1);
      initData();
    })
  });
}

// データを初期化して、再描画
function initData() {
  const fragment = document.createDocumentFragment();
  data.map((item, index) => {
    let li = document.createElement('li')
    if (item.isComplete == true) {
      li.innerHTML = `<li class='todo-item' id='todoId-${index}'><input type='checkbox' name='complete' checked="checked"><span><s>${item.todo}</s></span><button class='delete-button'>削除</button></li>`
    }else{
      li.innerHTML = `<li class='todo-item' id='todoId-${index}'><input type='checkbox' name='complete'><span>${item.todo}</span><button class='delete-button'>削除</button></li>`
    }
    fragment.appendChild(li)
  })
  let target = document.getElementById('todo-list')
  target.innerHTML = ""
  target.appendChild(fragment)
  todos = target.childNodes
  addTodoEvent(todos)
}


// Todoの追加ボタンが押されたときの処理
function addTodo() {
  data.push({todo: input.value, isComplete: false})
  initData();
  input.value = ""
}
btn.addEventListener('click', (event) => {
  event.preventDefault();
  addTodo();
})


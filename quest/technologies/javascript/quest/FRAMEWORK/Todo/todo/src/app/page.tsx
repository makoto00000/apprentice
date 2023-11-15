'use client'
// import styles from './page.module.css'
import { useEffect, useState } from 'react'

type Todo = {
  value: string,
  isDone: boolean,
}

export default function Home() {
  const [text, setText] = useState('')
  const [todos, setTodos] = useState<Todo[]>([])

  const handleSubmit = () => {
    const newTodo: Todo = {
      value: text,
      isDone: false,
    };
    setTodos([...todos, newTodo]);
    setText('');
  }

  const handleChangeChecked = (index: number, isCheck: boolean) => {
    setTodos((prevTodos) => {
      let newTodos = [...prevTodos]
      newTodos[index].isDone = isCheck
      return newTodos
    })
  }

  const deleteTodo = (index: number) => {
    setTodos((prevTodos) => {
      let newTodos = [...prevTodos]
      newTodos.splice(index, 1)
      return newTodos
    })
  }

  return (
      <div className="todo-app">
        <h1>Todoリスト</h1>
        <form 
          onSubmit={(e) => {
            e.preventDefault();
            handleSubmit();
          }}>
          <input 
            type="text" 
            id="todo-input" 
            placeholder="新しいタスクを入力" 
            value={text} 
            onChange={(e) => setText(e.target.value)}/>
          <button 
            type="submit" 
            id="add-button"
            >タスクを追加する</button>
        </form>
        <ul id="todo-list">
          {todos.map((todo, index) => {
            return (
              <li className="todo-item" key={index}>
                <input type="checkbox" 
                checked={todo.isDone}
                onChange={(e) => {
                  handleChangeChecked(index, e.target.checked)
                }}/>
                {todo.isDone ? 
                <span><s>{todo.value}</s></span> : 
                <span>{todo.value}</span>}
                <button
                  className="delete-button"
                  onClick={() => {
                    deleteTodo(index)
                  }}>削除</button>
              </li>
            )
          })}
        </ul>
      </div>
  )
}

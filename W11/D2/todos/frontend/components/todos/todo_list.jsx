import React from "react";
import TodoListItem from "../todo_list/todo_list_item";

const TodoList = (props) => {

  return(
    <div>
      <h1>All todos</h1>
      <ul>{
      props.todos.map(todo => 
        <TodoListItem id={todo.id} title={todo.title} />
      )
      }
      </ul>
      
    </div>
  )
};

export default TodoList;

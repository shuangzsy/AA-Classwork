import React from "react";
import TodoListItem from "../todo_list/todo_list_item";
import TodoForm from "../todo_list/todo_form";

const TodoList = (props) => {

  return(
    <div>
      <h1>All todos</h1>
      <ul>{
      props.todos.map(todo => 
        <TodoListItem id={todo.id} title={todo.title} />
      )
      }</ul>
      
      <TodoForm receiveTodo={props.receiveTodo}/>
    </div>
  )
};

export default TodoList;

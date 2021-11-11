import React from "react";

const TodoListItem = (props) => {

  return (
    <li key={props.id}> Title: {props.title}</li>
  )
};

export default TodoListItem;
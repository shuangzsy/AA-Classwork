import React from "react";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      done: false,
      id: 3,
    };

    this.updateTitle = this.updateTitle.bind(this);
    this.updateBody = this.updateBody.bind(this);
    this.updateDone = this.updateDone.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    let todo = this.state;
    this.props.receiveTodo(todo);

    this.setState({
      title: "",
      body: "",
      done: false,
      id: this.state.id + 1,
    });
  }

  updateTitle(event) {
    this.setState({
      title: event.target.value,
    });
  }

  updateBody(event) {
    this.setState({
      body: event.target.value,
    });
  }

  updateDone(event) {
    this.setState({
      done: event.target.value,
    });
  }

  render() {
    return (
      <>
        <h1>Create a new Todo</h1>
        <form onSubmit={this.handleSubmit}>
          <label>
            Title
            <input
              type="text"
              onChange={this.updateTitle}
              value={this.state.title}
            />
          </label>

          <label>
            Body
            <input
              type="text"
              onChange={this.updateBody}
              value={this.state.body}
            />
          </label>

          <label>
            Done?
            <input type="radio" onChange={this.updateDone} value={true} />True
            <input type="radio" onChange={this.updateDone} value={false} />False
          </label>

          <input type="submit" value="SUBMIT" />
        </form>
      </>
    );
  }
};

export default TodoForm;
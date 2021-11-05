import React from "react";


class Clock extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      date: new Date()
    }
  }

  tick(){
    this.setState({date: new Date()}, () => console.log(this.state))
  }

  componentDidMount(){
    setInterval(this.tick.bind(this), 1000);
  }


  render(){
    const weeks = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    const months = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"]
    let hours = this.state.date.getHours();
    let minutes = this.state.date.getMinutes();
    let seconds = this.state.date.getSeconds();
    let date = this.state.date.getDate();
    let month = months[this.state.date.getMonth()];
    let year = this.state.date.getFullYear();
    let weekday = weeks[this.state.date.getDay()];

    return(
      <div>
        <h1>Time: {hours}:{minutes}:{seconds}</h1>
        <h2>Date: {weekday} {month} {date} {year}</h2>
        <h1>Weather</h1>
        <p>loading weather...</p>
      </div>
    )
  }
}

export default Clock; 


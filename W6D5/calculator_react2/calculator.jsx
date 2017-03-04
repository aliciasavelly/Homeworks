import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {num1: "", num2: "", result: 0};
  }

  //your code here

  render(){
    return (
      <div>
        <div>
          <h1>{this.state.result}</h1>
        </div>
      </div>
    );
  }
}

export default Calculator;

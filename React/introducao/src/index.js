import React from 'react'
import ReactDOM from 'react-dom'

//JSX: JavaScript Extension (XML)
//Função no React debe começãr com letra maiúscula 
const App = () => {
  return <div>Meu primeiro componente React</div>
}

ReactDOM.render(
  <App />,
  document.querySelector('#root')
)
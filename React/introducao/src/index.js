import React from 'react'
import ReactDOM from 'react-dom'
import './style.css'

//JSX: JavaScript Extension (XML)
//Função no React debe começãr com letra maiúscula 
const App = () => {
  const estilosBotao = {marginTop: 12, paddingTop: 8, paddingBottom: 8, backgroundColor: "blueviolet", color: "white", border: "none", width: "100%", borderRadius: 8}

  const textoDoRotulo = "Nome:"

  const obterTextoDoBotao = () => "Enviar"

  const onClick = () => alert("Clicou")

  return <div style={{margin: "auto", width: 768, backgroundColor: "#EEE", padding: 12, borderRadius: 8}}>

    <label  
    className='rotulo'
    htmlFor='nome' 
    style={{display: "block", marginBottom: 4}}>
      {textoDoRotulo}
    </label>

    <input 
    type='text' 
    id='nome' 
    style={{paddingTop: 8, borderStyle: "hidden", outline: "none", width: "100%", borderRadius: 8, boxSizing: "border-box"}} />

    <button 
    style={estilosBotao}
    //onClick={onClick} ou
    onClick={() => onClick()}> 
      {obterTextoDoBotao()}
    </button>

  </div>
}

ReactDOM.render(
  <App />,
  document.querySelector('#root')
)
import React from "react"
import ReactDOM from "react-dom"
import "bootstrap/dist/css/bootstrap.min.css"
import "@fortawesome/fontawesome-free/css/all.min.css"
import Pedido from "./Pedido"

const App = ()=>(
  <div className="container border rounded mt-2">

    <div ClassName = "row border-bottom my-2">
      <div className = "col-12">
        <h1 className = "display-5 text-center">Seus pedidos</h1>
      </div>
    </div>

    <div className = "row">
      <div className = "col-12 col-lg-6 col-xxg-4 my-2">
        <Pedido 
        data="22/04/2021"
        icone="fa-solid fa-hard-drive fa-2x"
        titulo="SSD"
        descricao="SSD-Kingston A400 -SATA"
        />
      </div>
      
      <div className = 'col-12 col-lg-6 col-xxg-4 my-2'>  
        <Pedido 
          data="23/04/2021"
          icone="fa-solid fa-book fa-2x"
          titulo="Livro"
          descricao="Concrete Mathematics - Donald Knuth"
        />
      </div>

      <div className = 'col-12 col-lg-6 col-xxg-4 my-2'>
        <Pedido 
          data="24/04/2021"
          icone="fa-solid fa-laptop fa-2x"
          titulo="Notebook"
          descricao="Notebook Dell - 8Gb - i5"
        />
      </div>
    </div>

  </div>
)

ReactDOM.render(
    <App />, 
        document.querySelector('#root'))
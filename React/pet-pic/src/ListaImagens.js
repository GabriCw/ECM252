import React from 'react'
import Imagem from './components/Imagem'

const ListaImagens = ({pics}) => {
  return (
    pics.map((pic) => {
      return(
        <Imagem
          url={pic.src.small}
          alt={pic.alt}
        />
      )
    })
  )
}

export default ListaImagens
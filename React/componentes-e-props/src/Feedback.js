import React from 'react'

const Feedback = ({textoOK, funcaoOK, textoNOK, funcaoNOK}) => {
  return (
    <div className="d-flex justify-content-evenly m-2">
      <button 
        className="btn btn-primary" 
        type="button"
        onCLick={funcaoOK}>
        {textoOK}
      </button>

      <button 
        className="btn btn-danger" 
        type="button"
        onClick={funcaoNOK}>
        {textoNOK}
      </button>
    </div>
  )
}

export default Feedback
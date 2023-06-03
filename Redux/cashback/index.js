const Redux = require('redux')

//Função criadora de ação - Criar contrato
const criarContrato = (nome, taxa) => {
    return {
        type: 'CRIAR_CONTRATO',
        payload: {
          nome: nome,
          taxa: taxa
          //ou pode escrever apenas nome e taxa já que são iguais
        }
    }
}

//Função criadora de ação - Cancelar contrato
const cancelarContrato = (nome) => {
  return {
      type: 'CANCELAR_CONTRATO',
      payload: {
        nome: nome
        //ou pode escrever apenas nome já que são iguais
      }
  }
}

//Função criadora de ação - Solicitar cashback
const solicitarCashback = (nome, valor) => {
  return {
      type: 'SOLICITAR_CASHBACK',
      payload: {
        nome: nome,
        valor: valor
        //ou pode escrever apenas nome e valor já que são iguais
      }
  }
}

//Reducer - Histórico de pedidos de cashback
const historicoPedidosCashback = (
  historicoDePedidosCashbackAtual = [],
  acao
) => {
  if (acao.type === 'SOLICITAR_CASHBACK') {
    return [...historicoDePedidosCashbackAtual, acao.payload] //... -> pega elementos do array antigo e coloca no novo array 
  }
  return historicoDePedidosCashbackAtual
}

//Reducer - Caixa
const caixa = (
  caixaAtual = 0,
  acao
) => {
  if (acao.type === 'SOLICITAR_CASHBACK') {
    return caixaAtual - acao.payload.valor
  }
  else if (acao.type === 'CRIAR_CONTRATO') {
    return caixaAtual + acao.payload.taxa
  }
  else{
    return caixaAtual
  }
}

//Reducer - histórico de contratos

const historicoDeContratos = (
  historicoDeContratosAtual = [],
  acao
) => {
  if (acao.type === 'CRIAR_CONTRATO') {
    return [...historicoDeContratosAtual, acao.payload]
  }
  else if (acao.type === 'CANCELAR_CONTRATO') {
    return historicoDeContratosAtual.filter(
      contrato => contrato.nome !== acao.payload.nome
    )
  }
  else{
    return historicoDeContratosAtual
  }
}

const { combineReducers, createStore } = Redux

const todosOsReducers = combineReducers({
  historicoPedidosCashback,
  historicoDeContratos,
  caixa
})

const store = createStore(todosOsReducers)

//store.dispatch para enviar uma ação
//store.getState para observar o estado atual

//Enviar uma ação de criação de contrato para o João pagando 50 reais e exibir os estados dps disso
store.dispatch(criarContrato('João', 50))
console.log(store.getState())


//Exercício
const transacao = (store) => {
  const nomes = ['Ana', 'Maria', 'Pedro', 'João']
  const funcoes = {
    0: (nome) => {
      const acao = criarContrato(nome, 50)
      store.dispatch(acao)
    },
    1: (nome) => {
      const acao = cancelarContrato(nome)
      store.dispatch(acao)
    },
    2: (nome) => {
      const valorCashback = 10 + Math.round(Math.random() * 20)
      const acao = solicitarCashback(nome, valorCashback)
      store.dispatch(acao)
    }
  }

  const nome = nomes[Math.round(Math.random() * 3)]
  const operacao = Math.round(Math.random() * 2)
  funcoes[operacao](nome)
}

setInterval(() => {
  transacao(store)
  console.log(store.getState())
}, 2000)
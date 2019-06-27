/* This is for example purposes */

const contractABI = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "insereAutor",
				"type": "string"
			},
			{
				"name": "insereCpf",
				"type": "uint256"
			},
			{
				"name": "insereRg",
				"type": "uint256"
			},
			{
				"name": "insereTitulo",
				"type": "string"
			},
			{
				"name": "inserePaginas",
				"type": "uint256"
			},
			{
				"name": "insereResumo",
				"type": "string"
			}
		],
		"name": "lancaTodasAsInfos",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "insereAutor",
				"type": "string"
			}
		],
		"name": "devolveLivroMostraAutor",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "insereCpf",
				"type": "uint256"
			}
		],
		"name": "devolveLivroMostraCpf",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "inserePaginas",
				"type": "uint256"
			}
		],
		"name": "devolveLivroMostraPaginas",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "insereResumo",
				"type": "string"
			}
		],
		"name": "devolveLivroMostraResumo",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "insereRg",
				"type": "uint256"
			}
		],
		"name": "devolveLivroMostraRg",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "insereTitulo",
				"type": "string"
			}
		],
		"name": "devolveLivroMostraTitulo",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "numeroDeRegistro",
				"type": "uint256"
			}
		],
		"name": "devolveTodasAsInfos",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"name": "livroMostraAutor",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "livroMostraCpf",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "livroMostraPaginas",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"name": "livroMostraResumo",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "livroMostraRg",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"name": "livroMostraTitulo",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "livroTodasAsInfos",
		"outputs": [
			{
				"name": "autor",
				"type": "string"
			},
			{
				"name": "cpf",
				"type": "uint256"
			},
			{
				"name": "rg",
				"type": "uint256"
			},
			{
				"name": "titulo",
				"type": "string"
			},
			{
				"name": "paginas",
				"type": "uint256"
			},
			{
				"name": "resumo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
];
		
if (network === "4") {
	contractAddress = "0x7bdb2b3da8f892e843cbeaa5cf2b9b92c86b7932"; 
}

contract = web3.eth.contract(contractABI).at(contractAddress);
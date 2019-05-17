pragma solidity 0.5.8;

contract FreteDeNavio {
    
    string public Frete;
    uint public valorPago;
    string public slotEscolhido;
    address payable public contaDoAfretador;
    uint public precoDoSlot;
    string public destinoDoNavio;
    string public navioFretador;
    string public nomeDoAfretador;
    uint public dataDoPagamento;
    uint public dataDeSaida;
    uint public dataDeChegada;
    bool public encerrado;
    bool public estornoFeito;
    
    
    struct Afretador {
        string nomeDoAfretador;
        address contaDoAfretador;
        uint valorPago;
        string slotEscolhido;
        uint precoDoSlot;
        string destino;
    }
    constructor() public {
        string name = "NAVIOFRETADOR";
        string symbol = "SLOTS";
        uint decimals = 0;
        uint256 totalSupply = 1000;
        balanceOf[msg.sender] = totalSupply;
       }
    function reservaDeSlot(
        address _contaDoFretador,
        string memory _nomeDoFretador,
        uint _valorPago)
        public {
        Frete memory novoFrete = Frete (_nomeDoFretador, _contaDoFretador, _valorPago);
        uint precoDoSlot;
        uint numeroDeSlotsFretados;
        uint valorTotalDoFrete;
        uint dataDoPagamento;
        uint valorPago;
        }
    function pagarFrete(
        address payable, donoDoNavio.transfer,
        uint valorTotalDoFrete,
        msg.sender)
        
    
    valorTotalDoFrete { precoDoSlot*numeroDeSlotsFretados;
        
    }
    

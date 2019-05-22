pragma solidity 0.5.8;

contract FreteDeNavio {
    
    uint public variavelValorTotalDoFrete;
    address payable public variavelContaDoFretador;
    address payable public variavelContaDoAfretador;
    uint public variavelNumeroTotalDeSlots;
    string public variavelSlotsPreenchidos;
    
    struct fichaDoFrete {
        string nomeDoFretador;
        string nomeDoAfretador;
        uint duracaoDoFrete;
        uint valorTotalDoFrete;
        uint dataDeInicioDoFrete;
        uint dataDeEncerramentoDoFrete;
        string tipoDeCargaASerTransportada;
        address payable contaDoFretador;
        address payable contaDoAfretador;
        uint valorPagoPeloAfretador;
        uint numeroDeContainersTransportados;
        string numerosDosSlotUtilizados;
    }
    fichaDoFrete[] public fichasDosFretes;
    
    
    constructor (
        string memory nomeDoNavio,
        string memory nomeDoFretador,
        string memory nomeDoAfretador,
        string memory numerosDosSlotsUtilizados,
        uint valorTotalDoFrete,
        uint valorPagoPeloAfretador,
        uint numeroDeContainersTransportados,
        address payable contaDoFretador,
        address payable contaDoAfretador
        )
    public payable {
        variavelValorTotalDoFrete = valorTotalDoFrete;
        variavelContaDoFretador = msg.sender;
    }
    
    modifier apenasOFretador () {
        require (msg.sender == variavelContaDoFretador, "Apenas o Fretador pode fazer essa alteracao");
        _;
    }
    struct numeroDoSlot {
        string nomeDoCliente;
        uint numeroDoSlot;
    }
    numeroDoSlot[] public numeroDeSlots;
    
    function reservaDeSlot (address payable ContaDoAfretador, string memory NomeDoAfretador) public payable  {
        require (msg.value == variavelValorTotalDoFrete,  "O valor esta errado. Por favor corrija e tente novamente.");
    }
        
    function encerrarVendaDeSlots () public apenasOFretador {
        require (msg.sender == variavelContaDoFretador, "Somente o Fretador pode encerrar a venda de slots.");
    }

    function preenchimentoDeSlots () public {
        require (variavelNumeroTotalDeSlots <= 1000);
    }
    
    function estornoDePagamentoDoAfretador() public apenasOFretador payable {
        require (variavelNumeroTotalDeSlots > 1000);
        variavelContaDoAfretador.transfer(msg.value);
            bool estornoRealizado = true;
    }
}

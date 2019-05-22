pragma solidity 0.5.8;

contract FreteDeNavio {
    
    string variavelNomeDoFretador;
    string variavelNomeDoAfretador;
    address payable variavelContaDoFretador;
    address payable variavelContaDoAfretador;
    
    struct fichaDoFrete {

        string nomeDoFretador;
        string nomeDoAfretador;
        address payable contaDoFretador;
        address payable contaDoAfretador;
    }
    fichaDoFrete[] public fichasDosFretes;
    
    constructor (
        string memory nomeDoFretador,
        address payable contaDoFretador,
        string memory nomeDoAfretador,
        address payable contaDoAfretador
    )
    public payable {
        variavelNomeDoFretador = nomeDoFretador;
        variavelContaDoFretador = contaDoFretador;
        variavelNomeDoAfretador = nomeDoAfretador;
        variavelContaDoAfretador = contaDoAfretador;
    }
    modifier apenasOFretador () {
        require (msg.sender == variavelContaDoFretador, "Apenas o Fretador pode fazer essa operacao.");
        _;
    }
    function pagamentoDeFrete (
        require msg.value = variavelValorDoFrete,  "O valor esta errado. Por favor corrija e tente novamente.");
    }
    function estorno() public apenasOFretador payable {
        require (variavelValorPago > variavelValorDoFrete);
        variavelContaDoAfretador.transfer(msg.value);
    }
}

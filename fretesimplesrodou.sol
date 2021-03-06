pragma solidity 0.5.8;

contract FreteDeNavio {
    
    string public variavelNomeDoFretador;
    string public variavelNomeDoAfretador;
    address payable public variavelContaDoFretador;
    address payable public variavelContaDoAfretador;
    uint public variavelValorPorSlot;
    uint public variavelNumeroDeSlots;
    uint public variavelValorTotalDoFrete;
    uint public variavelValorPago;
    
    modifier soContasDoContrato() {
        require (msg.sender == variavelContaDoFretador || msg.sender == variavelContaDoAfretador, "Apenas os contratantes podem enviar pagamentos para este contrato.");
        _;
    }
    struct fichaDoFrete {

        string nomeDoFretador;
        string nomeDoAfretador;
        address contaDoFretador;
        address contaDoAfretador;
        uint valorPorSlot;
        uint numeroDeSlots;
        uint valorTotalDoFrete;
    }
    fichaDoFrete[] public fichasDosFretes;
    
    constructor (
        string memory nomeDoFretador,
        address payable contaDoFretador,
        string memory nomeDoAfretador,
        address payable contaDoAfretador,
        uint valorPorSlot,
        uint numeroDeSlots,
        uint valortotalDoFrete
    )
    public payable {
        variavelNomeDoFretador = nomeDoFretador;
        variavelContaDoFretador = contaDoFretador;
        variavelNomeDoAfretador = nomeDoAfretador;
        variavelContaDoAfretador = contaDoAfretador;
        variavelValorPorSlot = valorPorSlot;
        variavelNumeroDeSlots = numeroDeSlots;
        variavelValorTotalDoFrete = valortotalDoFrete;
    }
    
    modifier soOFretador () {
        require (msg.sender == variavelContaDoFretador, "So o Fretador pode fazer essa operacao.");
        _;
    }
    
    modifier soOAfretador () {
        require (msg.sender == variavelContaDoAfretador, "So o Afretador pode pagar pelo frete.");
        _;
    }
    
    function pagamentoDeFrete () public payable {
        require (msg.value == variavelValorTotalDoFrete,  "O valor esta errado. Por favor corrija e tente novamente.");
            variavelValorTotalDoFrete = variavelValorPorSlot * variavelNumeroDeSlots;
    }
    function estorno() public payable soOFretador {
        if (variavelValorPago > variavelValorTotalDoFrete) {address(variavelContaDoFretador).transfer(variavelValorPago-variavelValorTotalDoFrete);
        }
        require (msg.sender == variavelContaDoFretador);
        require (msg.value == variavelValorPago-variavelValorTotalDoFrete);
        require (variavelValorPago > variavelValorTotalDoFrete);
    }
}

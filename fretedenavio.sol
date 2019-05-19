pragma solidity 0.5.8;

contract FreteDeNavio {
    
    string variavelNomeDoNavio;
    string variavelNomeDoFretador;
    string variavelNomeDoAfretador;
    uint variavelDuracaoDoFrete;
    uint variavelNumeroDeContainersFretados;
    uint variavelNumeroTotalDeSlots;
    uint variavelValorTotalDoFrete;
    uint variavelDataDeInicioDoFrete;
    uint variavelDataDeEncerramentoDoFrete;
    uint variavelDataDeCancelamentoDoContrato;
    uint variavelDataLimiteParaNotificacaoDeCancelamentoDoContrato;
    string variavelCondicaoInicialDoNavioFretador;
    string variavelTipoDeCargaASerTransportada;
    string variavelTipoDeCargaProibida;
    string variavelPaisesDePassagemProibida;
    string variavelPermissaoDePassagemPeloGelo;
    string variavelPermissaoDeAportarNoGelo;
    address payable contaDoFretador;
    address payable contaDoAfretador;
    uint variavelValorPagoPeloAfretador;
    string variavelForoDeEleicao;
    uint variavelNumeroDeContainersTransportados;
    
    struct DadosDoFrete {
        uint numeroDoSlotUtilizado;
        uint numeroDoContrato;
        string nomeDoNavio;
        string nomeDoFretador;
        string nomeDoAfretador;
        uint duracaoDoFrete;
        uint numeroTotalDeSlots;
        uint valorTotalDoFrete;
        uint dataDeInicioDoFrete;
        uint dataDeEncerramentoDoFrete;
        string condicaoInicialDoNavioFretador;
        string tipoDeCargaASerTransportada;
        string tipoDeCargaProibida;
        string paisesDePassagemProibida;
        string permissaoDePassagemPeloGelo;
        string permissaoDeAportarNoGelo;
        address payable contaDoFretador;
        address contaDoAfretador;
        uint valorPagoPeloAfretador;
        string foroDeEleicao;
    }
    
    DadosDoFrete[] public RegistrosDeFrete;
    
    mapping(address => DadosDoFrete) public RegistroDeFreteNumero;
    
    constructor (
        string memory nomeDoNavio,
        string memory nomeDoFretador,
        string memory nomeDoAfretador,
        uint dataDeInicioDoFrete,
        uint dataDeEncerramentoDoFrete,
        uint numeroTotalDeSlots,
        uint numeroDoRegistroDoFrete,
        uint valorTotalDoFrete,
        uint valorPagoPeloAfretador,
        uint duracaoDoFrete,
        uint numeroDeContainersTransportados,
        uint DataDeCancelamentoDoContrato)
    
    public {
        variavelNomeDoNavio = nomeDoNavio;
        variavelNomeDoFretador = nomeDoFretador;
        variavelNomeDoAfretador = nomeDoAfretador;
        variavelDataDeInicioDoFrete = dataDeInicioDoFrete;
        variavelDataDeEncerramentoDoFrete = dataDeEncerramentoDoFrete;
        variavelValorTotalDoFrete = valorTotalDoFrete;
        variavelValorPagoPeloAfretador = valorPagoPeloAfretador;
        variavelDuracaoDoFrete = duracaoDoFrete;
        variavelNumeroDeContainersTransportados = numeroDeContainersTransportados;
        variavelDataDeCancelamentoDoContrato = DataDeCancelamentoDoContrato;
    
    }
    
    modifier ApenasOFretador () {
        require (msg.sender == contaDoFretador, "Apenas o Fretador pode fazer essa alteracao");
        _;
    }
    
    function ReservaDeSlot (address payable ContaDoFretador, string memory NomeDoFretador) public payable {
        require (msg.value == valorTotalDoFrete, "O valor esta errado. Por favor corrija e tente novamente.");
        
        DadosDoFrete memory Slot = DadosDoFrete(numeroDoSlotUtilizado, nomeDoAfretador);
    }
        
    function EncerrarVendaDeSlots () public ApenasOFretador {
        require (msg.sender == contaDoFretador, "Somente o Fretador pode encerrar a venda de slots.");

    }
       
    
    function Estorno() public ApenasOFretador payable {
        require (SlotsPreenchidos == true);
        require (RegistrosDeFrete.lenght > DadosDoFrete);
        for (uint i=(numeroTotalDeSlots+1); i<=numeroTotalDeSlots; i++) {
            DadosDoFrete memory SlotNegado = RegistrosDeFrete[i];
            SlotNegado.nomeDoAfretador.transfer(valorPagoPeloAfretador);
            EstornoRealizado = true;
        }
    }
    function ReembolsarAfretador (uint) public payable {
        require (EstornoRealizado == true);
        contaDoAfretador.transfer(address(this).balance);
        
    }
}

pragma solidity 0.5.8;

contract FreteDeNavio {
    
    string public variavelNomeDoNavio;
    string public variavelNomeDoFretador;
    string public variavelNomeDoAfretador;
    uint public variavelDuracaoDoFrete;
    uint public variavelNumeroDeContainersTransportados;
    uint public variavelValorTotalDoFrete;
    uint public variavelDataDeInicioDoFrete;
    uint public variavelDataDeEncerramentoDoFrete;
    uint public variavelDataDeCancelamentoDoContrato;
    uint public variavelDataLimiteParaNotificacaoDeCancelamentoDoContrato;
    string public variavelCondicaoInicialDoNavioFretador;
    string public variavelTipoDeCargaASerTransportada;
    string public variavelTipoDeCargaProibida;
    string public variavelPaisesDePassagemProibida;
    string public variavelPermissaoDePassagemPeloGelo;
    string public variavelPermissaoDeAportarNoGelo;
    address payable public variavelContaDoFretador;
    address payable public variaveloContaDoAfretador;
    uint public variavelValorPagoPeloAfretador;
    string public variavelForoDeEleicao;
    string public variavelNumerosDosSlotsUtilizados;
    string public variavelNumeroDeTelefoneParaContato;
    string public variavelEmailInformado;
    
    struct FichasDosFretes {
        string NomeDoNavio;
        string NomeDoFretador;
        string NomeDoAfretador;
        uint DuracaoDoFrete;
        uint ValorTotalDoFrete;
        uint DataDeInicioDoFrete;
        uint DataDeEncerramentoDoFrete;
        uint DataDeCancelamentoDoContrato;
        uint DataLimiteParaNotificacaoDeCancelamentoDoContrato;
        string CondicaoInicialDoNavioFretador;
        string TipoDeCargaASerTransportada;
        string TipoDeCargaProibida;
        string PaisesDePassagemProibida;
        string PermissaoDePassagemPeloGelo;
        string PermissaoDeAportarNoGelo;
        address payable ContaDoFretador;
        address payable ContaDoAfretador;
        uint ValorPagoPeloAfretador;
        string ForoDeEleicao;
        uint NumeroDeContainersTransportados;
        string NumerosDosSlotUtilizados;
        string NumeroDeTelefoneParaContato;
        string EmailInformadoPAraContato;
    }
    
    struct FichasDosClientes {
        string NumerosDosSlotsUtilizados;
        string NomeDoNavio;
        string NomeDoFretador;
        string NomeDoAfretador;
        uint DuracaoDoFrete;
        uint ValorTotalDoFrete;
        uint DataDeInicioDoFrete;
        uint DataDeEncerramentoDoFrete;
        uint DataDeCancelamentoDoContrato;
        uint DataLimiteParaNotificacaoDeCancelamentoDoContrato;
        string CondicaoInicialDoNavioFretador;
        string TipoDeCargaASerTransportada;
        string TipoDeCargaProibida;
        string PaisesDePassagemProibida;
        string PermissaoDePassagemPeloGelo;
        string PermissaoDeAportarNoGelo;
        address payable ContaDoFretador;
        address payable ContaDoAfretador;
        uint ValorPagoPeloAfretador;
        string ForoDeEleicao;
        string NumeroDeTelefoneParaContato;
        string EmailInformadoParaContato;
    }
    FichasDosFretes[] public FichaDoFrete;
    
    mapping(address => FichasDosClientes) public FichaDoCliente;
    
    constructor (
        string memory NomeDoNavio,
        string memory NomeDoFretador,
        string memory NomeDoAfretador,
        uint DuracaoDoFrete,
        uint DataDeInicioDoFrete,
        uint DataDeEncerramentoDoFrete,
        string memory NumerosDosSlotsUtilizados,
        uint ValorTotalDoFrete,
        uint ValorPagoPeloAfretador,
        uint NumeroDeContainersTransportados,
        string memory EmailInformadoParaContato,
        string memory NumeroDeTelefoneParaContato,
        string memory TipoDeCargaASerTransportada,
        string memory TipoDeCargaProibida,
        string memory PaisesDePassagemProibida,
        string memory PermissaoDeAportarNoGelo,
        string memory PermissaoDePassagemPeloGelo,
        uint DataLimiteParaNotificacaoDeCancelamentoDoContrato,
        string memory CondicaoInicialDoNavioFretador
        )

    
    public {
        variavelNomeDoNavio = NomeDoNavio;
        variavelNomeDoFretador = NomeDoFretador;
        variavelNomeDoAfretador = NomeDoAfretador;
        variavelDataDeInicioDoFrete = DataDeInicioDoFrete;
        variavelDataDeEncerramentoDoFrete = DataDeEncerramentoDoFrete;
        variavelValorTotalDoFrete = ValorTotalDoFrete;
        variavelValorPagoPeloAfretador = ValorPagoPeloAfretador;
        variavelDuracaoDoFrete = DuracaoDoFrete;
        variavelNumeroDeContainersTransportados = NumeroDeContainersTransportados;

    
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

pragma solidity 0.5.9;

contract RegistraLivro {
    
    struct Obra {
        string autor;
        uint cpf;
        uint rg;
        string titulo;
        uint paginas;
        string resumo;
    }
    
    Obra[] public livroTodasAsInfos;
    mapping(string => Obra) public livroMostraAutor;
    mapping(uint => Obra) public livroMostraCpf;
    mapping(uint => Obra) public livroMostraRg;
    mapping(string => Obra) public livroMostraTitulo;
    mapping(uint => Obra) public livroMostraPaginas;
    mapping(string => Obra) public livroMostraResumo;
    
    function lancaTodasAsInfos(
        string memory insereAutor,
        uint insereCpf,
        uint insereRg,
        string memory insereTitulo,
        uint inserePaginas,
        string memory insereResumo) public
            {
                Obra memory novaObra = Obra(
                    insereAutor,
                    insereCpf,
                    insereRg,
                    insereTitulo,
                    inserePaginas,
                    insereResumo);   
                livroTodasAsInfos.push(novaObra);
                livroMostraAutor[insereAutor] = novaObra;
                livroMostraCpf[insereCpf] = novaObra;
                livroMostraRg[insereRg] = novaObra;
                livroMostraTitulo[insereTitulo] = novaObra;
                livroMostraPaginas[inserePaginas] = novaObra;
                livroMostraResumo[insereResumo] = novaObra;
    }
    
    function devolveTodasAsInfos(uint numeroDeRegistro) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroTodasAsInfos[numeroDeRegistro].autor,
                livroTodasAsInfos[numeroDeRegistro].cpf,
                livroTodasAsInfos[numeroDeRegistro].rg,
                livroTodasAsInfos[numeroDeRegistro].titulo,
                livroTodasAsInfos[numeroDeRegistro].paginas,
                livroTodasAsInfos[numeroDeRegistro].resumo);
    }
    
    function devolveLivroMostraAutor(string memory insereAutor) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroMostraAutor[insereAutor].autor,
                livroMostraAutor[insereAutor].cpf,
                livroMostraAutor[insereAutor].rg,
                livroMostraAutor[insereAutor].titulo,
                livroMostraAutor[insereAutor].paginas,
                livroMostraAutor[insereAutor].resumo);
    }
    function devolveLivroMostraCpf(uint insereCpf) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroMostraCpf[insereCpf].autor,
                livroMostraCpf[insereCpf].cpf,
                livroMostraCpf[insereCpf].rg,
                livroMostraCpf[insereCpf].titulo,
                livroMostraCpf[insereCpf].paginas,
                livroMostraCpf[insereCpf].resumo);
            }
    
    function devolveLivroMostraRg(uint insereRg) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroMostraRg[insereRg].autor,
                livroMostraRg[insereRg].cpf,
                livroMostraRg[insereRg].rg,
                livroMostraRg[insereRg].titulo,
                livroMostraRg[insereRg].paginas,
                livroMostraRg[insereRg].resumo);
            }
    
    function devolveLivroMostraTitulo(string memory insereTitulo) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroMostraTitulo[insereTitulo].autor,
                livroMostraTitulo[insereTitulo].cpf,
                livroMostraTitulo[insereTitulo].rg,
                livroMostraTitulo[insereTitulo].titulo,
                livroMostraTitulo[insereTitulo].paginas,
                livroMostraTitulo[insereTitulo].resumo);
            }
    
    
    function devolveLivroMostraPaginas(uint inserePaginas) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroMostraPaginas[inserePaginas].autor,
                livroMostraPaginas[inserePaginas].cpf,
                livroMostraPaginas[inserePaginas].rg,
                livroMostraPaginas[inserePaginas].titulo,
                livroMostraPaginas[inserePaginas].paginas,
                livroMostraPaginas[inserePaginas].resumo);
            }
    
    function devolveLivroMostraResumo(string memory insereResumo) public view returns
        (
        string memory,
        uint256, 
        uint256,
        string memory,
        uint256,
        string memory) 
            {
            return (
                livroMostraResumo[insereResumo].autor,
                livroMostraResumo[insereResumo].cpf,
                livroMostraResumo[insereResumo].rg,
                livroMostraResumo[insereResumo].titulo,
                livroMostraResumo[insereResumo].paginas,
                livroMostraResumo[insereResumo].resumo);
            }
}
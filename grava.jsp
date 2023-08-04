<%@ page language="java" import="java.sql.*"  %>
<%

  // cria as variaveis  
  // e obtem os dados digitados pelo usuario
  String vnome  = request.getParameter( "nome" ) ;
  int    vnasc = Integer.parseInt(request.getParameter( "nasc" )) ;
  String vemail = request.getParameter( "email" ) ;
  int    vfisica = Integer.parseInt(request.getParameter( "fisica" )) ;
  int    vjuridica = Integer.parseInt(request.getParameter( "juridica" )) ;
  
  // mostra na tela as informações
  //
  out.print( "Nome: "  +  vnome + "<br>") ;
  out.print( "Nascimento: "  +  vnasc + "<br>") ;
  out.print( "Email: "  +  vemail + "<br>") ;
  out.print( "CPF: "  +  vfisica + "<br>") ;
  out.print( "CNPJ: "  +  vjuridica + "<br>") ;

  // cria as variaveis para conexao com o banco de dados
  //
  String driver = "net.sourceforge.jtds.jdbc.Driver" ;
  String url     = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd238602017" ;
  String usuario = "bd238602017" ;
  String senha   = "123456" ;

  // carrega o driver na memória
  //
  Class.forName(driver) ;

  // cria a conexao com o banco
  //
  Connection conexao = DriverManager.getConnection(url,usuario,senha) ;

  // prepara o comando para inserir 
  String sql = "insert into clientes (nome,nasc,email,fisica,juridica)"
      + " values(\'"+vnome+"\',\'"+vnasc+"\',\"+vemail+"\',\'"+vfisica+"\',\'"+vjuridica+"\'") ;*/

  // cria o objeto statement para executar
  // o comando do sql
  Statement stm = conexao.createStatement() ;


  // executa o comando do sql
  stm.executeUpdate(sql) ;  



  out.print("<br><br>") ;
  out.print("Cadastro efetuado com sucesso!!!") ;

  out.print("<br>") ;
  out.print("<a href='Home.html']>Voltar ao Home</a>") ; 

%>







Sample.TestASP.Unit
===================

Some demos for something, with NUnit Visual Studio 2012 and Classic ASP. Executando testes unitários em páginas ASP com .NET 4.5.

Passos para testar:

* No Windows Seven
- Acesse "Control Panel" > "Programs and Features"
- Acesse "Turn Windows features on or off"
- Selecione Internet Information Service
- Verifique se as opções das subpastas estão marcadas:
	- World Wide Web Services
		- Application Development Features
			- ASP
			- ASP.NET
- Acesse o Internet Information Services (IIS) Manager
- Em Default Web Site. Crie um diretório virtual ("Add Virtual Directory")
- Dê o nome de : siteasp
- Em Physical path, aponte para o diretório public_html, dentro da pasta do projeto
- Acesse o endereço "http://localhost/testasp/", para verificar se o IIS está executando o ASP
- Abra a solução "Sample.TestASP.Unit.sln", do Visual Studio 2012
- Execute o projeto de teste com F5.
Sample.TestASP.Unit
===================

Some demos for something, with NUnit, Selenium WebDriver, Visual Studio 2012 and Classic ASP. Executando testes unitários em páginas ASP com .NET 4.5.


Instalando pacotes utilizados com NuGet:
- install-package NUnit
- install-package Selenium.WebDriver (browser automation)
- install-package Selenium.WebDriver.ChromeDriver


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
- Dê o nome de "testeasp"
- Em Physical path, aponte para o diretório "public_html", dentro da pasta do projeto
- Acesse o endereço "http://localhost/testeasp/", para verificar se o IIS está executando o ASP
- Instale o "NUnit". Utilize o arquivo "NUnit-2.6.3.msi" na raiz da pasta do projeto ou faça download em http://www.nunit.org/
- Instale o "TestDriven.NET" para executar o teste pelo Visual Studio. Utilize o link http://testdriven.net/
- Abra a solução "Sample.TestASP.Unit.sln", do Visual Studio 2012
- Abra o arquivo UnitTestASP.cs
- Execute o teste "TestaTelaDeLogin" utilizando o TestDriven ("Run Test(s)")
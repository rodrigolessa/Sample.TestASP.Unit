using System;
using System.Threading;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace Sample.TestASP.Unit
{
    [TestFixture]
    public class UnitTestASP
    {
        IWebDriver driver;

        [SetUp]
        public void Setup()
        {
            // Cria uma instância do mecanismo para escrever testes contra o Chrome
            driver = new ChromeDriver();
        }

        [TearDown]
        public void Teardown()
        {
            driver.Quit();
        }

        [Test]
        public void TestaTelaDeLogin()
        {
            // WebDriverWait aguardar;
            driver.Manage().Timeouts().ImplicitlyWait(new TimeSpan(0, 0, 5));

            // Acessa o site em ASP, criado no localhost
            driver.Navigate().GoToUrl("http://localhost/testeasp/");

            // Localiza o campo texto em HTML pelo nome
            IWebElement campoLogin = driver.FindElement(By.Name("login"));
            // Insere um texto/valor para o campo
            campoLogin.SendKeys("rodrigo@mail.com");

            // Localiza o campo texto, senha, em HTML pelo nome
            IWebElement campoSenha = driver.FindElement(By.Name("senha"));
            // Insere um texto/valor para o campo
            campoSenha.SendKeys("123456");

            // Aguardar;
            Thread.Sleep(4000);

            campoSenha.Submit();

            // Aguardar;
            Thread.Sleep(3000);

            // Verifica o título da página
            Assert.AreEqual("TestASP - Resultado de Login", driver.Title);
        }
    }
}

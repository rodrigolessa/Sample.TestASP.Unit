using System;
//using Microsoft.VisualStudio.TestTools.UnitTesting;
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
            // Acessa o site em ASP, criado no localhost
            driver.Navigate().GoToUrl("http://localhost/testasp/");

            // Localiza o campo texto em HTML pelo nome
            IWebElement campoLogin = driver.FindElement(By.Name("login"));
            // Insere um texto/valor para o campo
            campoLogin.SendKeys("rodrigo@mail.com");

            // Localiza o campo texto, senha, em HTML pelo nome
            IWebElement campoSenha = driver.FindElement(By.Name("senha"));
            // Insere um texto/valor para o campo
            campoSenha.SendKeys("123456");

            campoSenha.Submit();

            //WebDriverWait aguardar;
            // Verifica o título da página
            Assert.AreEqual("TestASP - Resultado de Login", driver.Title);
        }
    }
}

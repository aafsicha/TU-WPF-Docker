using NUnit.Framework;

namespace TestApp.Tests
{
    [TestFixture]
    public class Class1
    {
        [Test]
        public void Test1()
        {
            Assert.That(TestApp.MainWindow.TestedMethod(4), Is.EqualTo(8));
        }
    }
}

//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 10/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// CREATIONAL
//        testFactoryMethod()
//        testAbstractFactory()
//        testBuilder()
//        testPrototype()
//        testSingleton()
        
        /// BEHAVIOURAL
//        testChainOfResponsability()
//        testCommand()
//        testIterator()
//        testMediator()
//        testMemento()
//        testObserver()
//        testState()
//        testInterpreter()
//        testStrategy()
//        testTemplate()
//        testVisitor()
        
        /// STRUCTURAL
//        testAdapter()
//        testBridge()
//        testComposite()
//        testDecorator()
//        testFacade()
//        testFlyweight()
        testProxy()
    }
    
    
    // MARK: - Creational / Creación

    func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(type: .GOOGLE)
        payment.doPayment()
    }
    
    func testAbstractFactory() {
        // Pago Mensual + Google
        PaymentMethodClient.codigoCliente(factory: MontlyGoogleFactory())
        // Pago Adelantado + Tarjeta
        PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
    }
    
    func testBuilder() {
        var card: Card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .number(number: "1111 2222 3333 4444")
            .expires(expires: 2030)
            .build()
        card.showCard()
    }
    
    func testPrototype() {
        let original = VisaCard(cardNumber: 1111, cardType: "CREDIT")
        guard let copy = original.copy() as? VisaCard else { return }
        print("original: \(original.cardName) - \(original.cardNumber)")
        print("copy: \(copy.cardName) - \(copy.cardNumber)")
    }
    
    func testSingleton() {
        let instancia1 = CardSingleton.shared
        let instancia2 = CardSingleton.shared
        
        if (instancia2 === instancia1) {
            print("La instancia1 es la misma que instancia2")
        }
        
        instancia1.doSomething()
    }
    
    
    // MARK: - Behavioral / Comportamiento
    
    func testChainOfResponsability() {
        let bank = BankHandler()
        /**
         0 a 10.000             ->  Gold
         10.000 a  50.000   ->  Platinium
         50.000+                 ->  Black
         */
        bank.creditCardRequest(totalLoan: 3000)
        
    }
    
    func testCommand() {
        let creditCard = CreditCardReceiver()
        let invoker = CreditCardInvoker()
        /// Instancia para "activar" una tarjeta
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        invoker.run()
        /// Instancia para "desactivar" una tarjeta
        invoker.setCommand(command: CreditCardDesactivateCommand(creditCardReceiver: creditCard))
        invoker.run()
    }
    
    func testIterator() {
        let misTarjetas = CreditCardCollection()
        misTarjetas.append(CreditCard(type: "Gold"))
        misTarjetas.append(CreditCard(type: "Black"))
        misTarjetas.append(CreditCard(type: "Platinium"))
        
        for card in misTarjetas {
            print(card.type)
        }
    }
    
    func testMediator() {
        let mediator = ConcreteMediator()
        let user1 = ConcreteColleague1(mediator: mediator)
        let user2 = ConcreteColleague2(mediator: mediator)
        
        mediator.setColleague1(colleague1: user1)
        mediator.setColleague2(colleague2: user2)
        
        user1.send(message: "Hola como estas soy el Usuario 1")
        user2.send(message: "Estoy bien")
    }
    
    func testMemento() {
        let caretaker = Caretaker()
        var article = ArticleOriginator(
            id: 1,
            title: "Memento",
            text: "Memento es una pelicula"
        )
        
        // Agregamos Memento1 [0]
        caretaker.addMemento(memento: article.createMemento())
        
        article.text = "Memento es una pelicula de Nolam protagonizada por Guy Pearce"
        print(article.text)
        
        // Agregamos Memento2 [1]
        caretaker.addMemento(memento: article.createMemento())
        
        let memento1: ArticleMemento = caretaker.getMemento(index: 0)
        let memento2: ArticleMemento = caretaker.getMemento(index: 1)
        
        // Hacemos restore a Memento1 e imprimimos: "Memento es una pelicula"
        article.restore(memento: memento1)
        print(article.text)
        
        // Hacemos restore a Memento2 e imprimimos: "Memento es una pelicula de Nolam protagonizada por Guy Pearce"
        article.restore(memento: memento2)
        print(article.text)
    }
    
    func testObserver() {
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()
        
        messagePublisher.attach(o: car)
        messagePublisher.attach(o: pedestrian)
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        /// Semaforo coche Verde -> Coche SI puede pasar
        /// Semaforo peaton Rojo -> Peaton NO puede pasar
        
        sleep(2)
        
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        /// Semaforo coche Rojo -> Coche NO puede pasar
        /// Semaforo peaton Verde -> Peaton SI puede pasar
    }
    
    func testState() {
        let context = MobileAlertStateContext()
        
        /// Se inicializa como "Sound" por lo tanto imprime "Sonando..."
        context.alert()
        context.alert()
        
        sleep(2)
        
        /// Se cambia state por "Vibración"
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        
        sleep(2)
        
        /// Se cambia state por "Silencio"
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }
    
    func testInterpreter() {
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")
        
        let containsOneOrCero = OrExpression(expression1: cero, expression2: uno)
        print(containsOneOrCero.interpret(context: "cero")) // FALSE
        print(containsOneOrCero.interpret(context: "0")) // TRUE
        
        let containsOneAndCero = AndExpression(expression1: cero, expression2: uno)
        print(containsOneAndCero.interpret(context: "cero, 0")) // FALSE
        print(containsOneAndCero.interpret(context: "0, 1")) // TRUE
    }
    
    func testStrategy() {
        let context = Context(strategyTextFormatter: CapitalStrategyTextFormatter())
        context.publishText(text: "este texto sera convertido a Mayusculas a través de nuestro algoritmo")
        
        let contextLower = Context(strategyTextFormatter: LowerStrategyTextFormatter())
        contextLower.publishText(text: "este texto sera convertido a Mayusculas a través de nuestro algoritmo")
        
    }
    
    func testTemplate() {
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
        
        let paymentMethodPaypal = Paypal()
        paymentMethodPaypal.makePayment()
    }
    
    func testVisitor() {
        let oferta = GassolineOffer()
        oferta.accept(visitor: BlackCreditCardVisitor()) // Ofrece descuento para Black
        oferta.accept(visitor: ClassicCreditCardVisitor()) // Ofrece descuento para Classic
    }
    
    
    // MARK: - Estructurales
    
    func testAdapter() {
        /// El objeto original retornará un INT
        let adaptee = OperationAdaptee(a: 3, b: 4)
        
        if (adaptee.sum() == 7) {
            print("OK int")
        }
        
        /// El objeto adaptado permite retornar un STRING
        let target = OperationAdapter(adaptee: adaptee)
        
        if (target.getSum == "7") {
            print("OK string")
        }
        print(target.getSum) // "7" (String)
    }
    
    func testBridge() {
        var classic = ClassicCreditCard(creditCard: UnsecureCreditCard())
        classic.makePayment() // Pago no seguro
        
        classic = ClassicCreditCard(creditCard: SecureCreditCard())
        classic.makePayment() // Pago seguro
    }
    
    func testComposite() {
        let savings = SavingAccountLeaf()
        let current = CurrentAccountLeaf()
        let composite = AccountComposite()
        
        composite.addAccount(savings)
        composite.addAccount(current)
        
        composite.showAccountName()
    }
    
    func testDecorator() {
        let blackInternationalPayment = InternationalPaymentDecorator(decorated: BlackCreditComponent())
        print("-----Tarjeta Black Configurada-----")
        blackInternationalPayment.showCredit()
        
        let goldSecurePayment = SecureDecorator(decorated: GoldCreditComponent())
        print("-----Tarjeta Gold Configurada-----")
        goldSecurePayment.showCredit()
    }
    
    func testFacade() {
        let facade = CreditMarketFacade()
        
        facade.showCreditGold()
        facade.showCreditSilver()
        facade.showCreditBlack()
    }
    
    
    // testFlyweight
    let enemyType = ["Private", "Detective"]
    let weapon = ["Fusil", "Revolver", "Pistola", "9mm"]
    
    func getRandomEnemyType() -> String {
        let number = Int.random(in: 0 ..< enemyType.count)
        return enemyType[number]
    }
    
    func getRandomWeapon() -> String {
        let number = Int.random(in: 0 ..< weapon.count)
        return enemyType[number]
    }
    
    func testFlyweight() {
        let enemyFactory = EnemyFactory()
        for _ in 0...10 {
            let enemy = enemyFactory.getEnemy(type: getRandomEnemyType())
            enemy.setWeapon(weapon: getRandomWeapon())
            enemy.lifePoints()
        }
    }
    
    func testProxy() {
        let internet = ProxyInternet()
        
        internet.connectTo(url: "udemy.com") // OK
        internet.connectTo(url: "twitter.com") // Acceso Denegado
    }
    
}

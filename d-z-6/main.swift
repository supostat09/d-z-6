//1) Создать 2 опциональных  переменных  типа Int number1 и number2. Создать 3 ридлайн. 1 для ввода первого числа, 2 для ввода операции, 3 для ввода второго числа. Составить калькулятор с 4 операциями: +, -, /, *. Сделать так чтобы значение ридлайнов присваивалось переменным number1 и number2 используя 3 способа. 1) Используя оператор "??" сделать так чтобы если неправильно введены данные, то присваивать вместо nil число 0. 2) Используя проверку на nil, выводить сообщение неправильно введены данные, при неправильном вводе. 3) Используя if let и guard посчитать числа, если неправильно введены данные, то ничего не делать.

var number1: Int?

var number2: Int?

func calculator () {
    
    print("Введите первую цифру")
    let enterFirstNumber = Int(readLine ()!) ?? 0
    number1 = enterFirstNumber
    
    let enterFirst: Int? = Int(enterFirstNumber)
    guard enterFirst != nil else {
        print("Введены не коректные данные")
        return}
    
    print("Введите операцию")
    let enterOperation = readLine ()!
    
    print("Введите вторую цифру")
    let enterSecondNumber = Int(readLine ()!) ?? 0
    number2 = enterSecondNumber
    
    let enterSecond: Int? = Int(enterSecondNumber)
    guard enterSecond != nil else {
        print("Введены не коректные данные")
        return}
    
    switch enterOperation {
    case "+":
        let sum = enterFirstNumber + enterSecondNumber
        print("\(number1!) \(enterOperation) \(number2!) = \(sum)")
    case "-":
        let sum = enterFirstNumber - enterSecondNumber
        print("\(number1!) \(enterOperation) \(number2!) = \(sum)")
    case "/":
        let sum = enterFirstNumber / enterSecondNumber
        print("\(number1!) \(enterOperation) \(number2!) = \(sum)")
    case "*":
        let sum = enterFirstNumber * enterSecondNumber
        print("\(number1!) \(enterOperation) \(number2!) = \(sum)")
    default:
        print("Введены не коректные данные")
    }
}

calculator()

print(number1 ?? 0)

print(number2 ?? 0)

if number1 == nil {
    print("Не правильно введены данные")
} else {
    print(number1!)
}

if number2 == nil {
    print("Не правильно введены данные")
} else {
    print(number2!)
}

func chekNumber1() {
    guard number1 != nil else {
        print(number1!)
        return}
}

func chekNumber2() {
    guard number2 != nil else {
        print(number2!)
        return}
}


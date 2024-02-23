import UIKit


//MARK: - 1
// Создать класс родитель и 2 класса наследника
class Animal {
    let name: String
    let age: Int
    let type: String
    
    init(name: String, age: Int, type: String) {
        self.name = name
        self.age = age
        self.type = type
    }
}
class Cat: Animal {
    
}
class Dog: Animal {
    
}


//MARK: - 2
//Создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов: *create*(выводит площадь),*destroy*(отображает что дом уничтожен)

class House {
   private var width: Int
   private var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height

    }
    
    func create() {
       print( "The house area = \(width * height) sq m")
        
    }
    
    func destroy() {
        width = 0
        height = 0
        print ("The house is destroyed")
 
    }
}

let someHouse = House(width: 15, height: 15)

someHouse.create()
someHouse.destroy()


//MARK: - 3
//Создайте класс с методами, которые сортируют массив учеников по разным параметрам

class Student: CustomStringConvertible {
    let name: String
    let age: Int
    let grade: Int
    
    var description: String {
        "Name: \(name), age: \(age), grade: \(grade)"
    }
    
    init(name: String, age: Int, grade: Int) {
        self.name = name
        self.age = age
        self.grade = grade
    }
}


var students: [Student] = [Student(name: "Kawassaki", age: 13, grade: 5),
                           Student(name: "Cago", age: 10, grade: 2),
                           Student(name: "Krico", age: 7, grade: 1)]

class FilterStudent {
    
    func nameSorted () {
        
        let nameSorted = students.sorted(by: {$0.name < $1.name})
        print(nameSorted)
    }
    
    func ageSorted () {
        
        let ageSorted = students.sorted(by: {$0.age < $1.age})
        print(ageSorted)
    }
    
    func gradeSorted () {
        
        let gradeSorted = students.sorted(by: {$0.grade < $1.grade})
        print(gradeSorted)
    }
    
}


let filterStudent = FilterStudent()

filterStudent.nameSorted() //фильтрация по имени в алфавитном порядке
filterStudent.ageSorted() //фильтрация по возрасту в порядке возрастания
filterStudent.gradeSorted() //фильтрация по классу в порядке возрастания





    //MARK: - 4
    //Написать свою структуру и класс, и пояснить в комментариях - чем отличаются структуры от классов
    
struct FamilyOne {
    
    var nameOne: String
    var ageOne: Int
}


class FamilyTwo {
    
    var nameTwo: String
    var ageTwo: Int
    
    init(nameTwo: String, ageTwo: Int) {
        self.nameTwo = nameTwo
        self.ageTwo = ageTwo
    }
}


class Mother: FamilyTwo {
    
}

    
    
    /*
     1. Структуры имеют встроенный инициализатор (все свойства по умолчанию являются параметрами инициализации), в классах нет инициализатора по умолчанию
     2. В классах есть наследование, a cтруктуры не могут наследоваться от других структур (Наследование позволяет одному классу наследовать характеристики другого)
     3. Классы - это ReferenceType, структуры - ValueType (они по разносу работают с типами данных). Структуры не являются сcылочным типом данных (при создании экземпляра структуры, данные копируются, а не передаются ссылкой)
     
     */
    
    
    //MARK: - 5
    /*
     Напишите простую программу, которая отбирает комбинации в покере из рандомно выбранных 5 карт
     Сохраняйте комбинации в массив
     Если выпала определённая комбинация - выводим соответствующую запись в консоль
     Результат в консоли примерно такой: 'У вас бубновый стрит флеш'.
     */
class Poker {
    
    enum Mast: String {
        case hearts = "Червовый" //я не шарю в покере, если не правильно назвала комбинации, прошу понимания
        case spades = "Пиковый"
        case diamonds = "Бубновый"
        case clubs = "Трифовый"
        
    }
    
    enum Combination: String {
        case royalFlash = "Роял Флеш"
        case flash = "Флеш"
        case stritFkash = "Стрит Флеш"
        case strit = "Стрит"
    }
    
    var combinationArray = [String]()
    
    func choosingCombination (mast: Mast, combination: Combination) {
        
        combinationArray.append("У вас выпал \(mast.rawValue) \(combination.rawValue)")
        
        print(combinationArray)
    }
}

let randomCombination = Poker()

randomCombination.choosingCombination(mast: .diamonds, combination: .flash)


import UIKit

//==========================
var problem1 = "problem1"
print("===============")
print(problem1)

//problem1

protocol SomeProtocol1 {
    var property1: Int {get}
    var property2: String {get set}
    var property3: (()->Int)? {get}
    static var property4: String? {get set}
    
    static func method1(arg param: Int)
    func method2(arg param: Int) -> Int?
    mutating func method3()-> String?
    
}

class Class1: SomeProtocol1 {
    var property1: Int
    var property2: String
    var property3: (() -> Int)?
    static var property4: String?
    
    init(property1: Int, property2: String, property3: (() -> Int)?) {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
    }
    
    static func method1(arg param: Int) {
        print(param)
    }
    
    func method2(arg param: Int) -> Int? {
        return param == 100 ? param : nil
    }
    
    func method3() -> String? {
        self.property1 = 100
        return String(property1)
    }
}

struct Struct1: SomeProtocol1 {
    var property1: Int
    var property2: String
    var property3: (() -> Int)?
    static var property4: String?
    
    static func method1(arg param: Int) {
        print(param)
    }
    
    func method2(arg param: Int) -> Int? {
        return param == 100 ? param : nil
    }
    
    mutating func method3() -> String? {
        self.property1 = 100
        return String(property1)
    }
}

//enum Enum1: SomeProtocol1 {
//    case property1(Int)
//    case property2(String)
//    case property3((() -> Int)?)
//    case property4(String?)
//    case method1(param: Int)
//    case method2(param: Int); -> Int?
//    case method3(Void); -> String?
//}

//==========================
var problem2 = "problem2"
print("===============")
print(problem2)

//problem2

class CarRepairServiceProvider {
    
    var Description: String
    var Carmodel: String
    
    init(description: String, carmodel: String) {
        self.Description = description
        self.Carmodel = carmodel
    }
}

class HomeServiceProvider {
}

enum HomeService {
    case CookingService
    case WashingService
    case BabySittingService
}

class StudentServicesProvider {
    var studentServiceDescription: String
    
    init(studentServiceDescription: String) {
        self.studentServiceDescription = studentServiceDescription
    }
}

class clientA: CarRepairServiceProvider {
    
}

class ClientB: HomeServiceProvider {
    
}

class ClientC: StudentServicesProvider {
    
}

//==========================
var problem3 = "problem3"
print("===============")
print(problem3)





//==========================
var problem4 = "problem4"
print("===============")
print(problem4)

class ViewClass {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class TableClass {
    var studentsList: [ViewClass]
    var height = 0
    var row = 0
    
    init(studentsList: [ViewClass], height: Int, row: Int) {
        self.studentsList = studentsList
        self.height = height
        self.row = row
    }
}

class TableViewClass {
    var firstName: String
    var LastName: String
    var GPA = 0
    
    init(firstName: String, LastName: String, GPA: Int) {
        self.firstName = firstName
        self.LastName = LastName
        self.GPA = GPA
    }
}

//==========================
var problem5 = "problem5"
print("===============")
print(problem5)

protocol SpecialStringProtocol {
    
    //it checks whether a given condition is met on the current string
    func verifiableStringForACondition( _ conditionPredicate: (String)->Bool) -> Bool
    
    /*it checks whether the string is a double repeated string. For instance abab is a double
    repeated because the ab is repeated*/
 
    func repeatedString()-> Bool
}

extension String: SpecialStringProtocol {
    func verifiableStringForACondition(_ conditionPredicate: (String) -> Bool) -> Bool {
        if conditionPredicate(self) {
            return true
        }
        return false
    }

    func repeatedString() -> Bool {
        let str = "CICCC.CJCCC.CKCCC"
        let word = "CICCC"
        
        var count = 0
        var nextRange = str.startIndex..<str.endIndex
        
        while let range = str.range(of: word, options: .caseInsensitive, range: nextRange) {
            count += 1
            nextRange = range.upperBound..<str.endIndex
        }
        if count == 1 {
            return true
        }
        print(count)
        return true
    }
}
//let test1 = SpecialStringProtocol.repeatedString()
//print(test1)
//
//let test2 = "I"
//print(test2.repeatedString())
//
//let test3 = "A"
//print(test3.repeatedString())

//==========================
var problem6 = "problem6"
print("===============")
print(problem6)

protocol Protocol6_1 {
    var property1: Int? { get }
}

protocol Protocol6_2 {
    var property2: String { get }
}

protocol Protocol6_3 {
    var property3: (Int?) -> String  { get }
}

class Testclass1: Protocol6_1, Protocol6_2, Protocol6_3 {
    var property1: Int?
    var property2: String
    var property3: (Int?) -> String
    
    init(property1: Int?, property2: String, property3: @escaping (Int?) -> String) {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
    }
}



// Day 11

struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// Static properties and methods

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}


//First, I use static properties to organize common data in my apps. For example, I might have a struct like AppData to store lots of shared values I use in many places:

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

// The second reason I commonly use static data is to create examples of my structs

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

/*
Structs are used almost everywhere in Swift: String, Int, Double, Array and even Bool are all implemented as structs, and now you can recognize that a function such as isMultiple(of:) is really a method belonging to Int.

Let’s recap what else we learned:

- You can create your own structs by writing struct, giving it a name, then placing the struct’s code inside braces.
- Structs can have variable and constants (known as properties) and functions (known as methods)
- If a method tries to modify properties of its struct, you must mark it as mutating.
- You can store properties in memory, or create computed properties that calculate a value every time they are accessed.
- We can attach didSet and willSet property observers to properties inside a struct, which is helpful when we need to be sure that some code is always executed when the property changes.
- Initializers are a bit like specialized functions, and Swift generates one for all structs using their property names.
- You can create your own custom initializers if you want, but you must always make sure all properties in your struct have a value by the time the initializer finishes, and before you call any other methods.
- We can use access to mark any properties and methods as being available or unavailable externally, as needed.
- It’s possible to attach a property or methods directly to a struct, so you can use them without creating an instance of the struct.
*/


/*
Checkpoint 6: 
 create a struct to store information about a car. Include:
    it's model
    number of seats
    current gear
 
 add a method to change gears up and down
 
 think about variables and access control
 
 dont allow invalid gears. (allow 1 - 10)
 
 */


struct Car {
    let model: String
    let seats: Int
    
    private(set) var currentGear = 1
    
    mutating func shiftUp() {
        if currentGear < 10 {
            currentGear += 1
            print("Shifted up to gear \(currentGear).")
        } else {
            print("The car can't shift any higher.")
        }
    }
    
    mutating func shiftDown() {
        if currentGear > 1 {
            currentGear -= 1
            print("Shifted down to gear \(currentGear).")
        } else {
            print("The car can't shift any lower.")
        }
    }
}
                  
var tribeca = Car(model: "Tribeca", seats: 5)
print(tribeca.currentGear)
tribeca.shiftUp()
tribeca.shiftDown()
tribeca.shiftDown()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftUp()
tribeca.shiftDown()
tribeca.shiftDown()

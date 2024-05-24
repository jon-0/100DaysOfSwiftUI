import Cocoa

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

print(playerName.hasPrefix("A day"))
print(playerName.hasSuffix("A day"))


//integers
let score = 10

let reallyBig = 100_000_000

var counter = 10
counter = counter + 5
counter += 5

let number = 120
print(number.isMultiple(of: 3))
print(number.isMultiple(of: 7))
print(120.isMultiple(of: 4))

// floating-point numbers


// Type Annotations
let surname: String = "Lasso"
var score: Double = 0
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"] // array
var user: [String: String] = ["id", "@twostraws"] // dictionary
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

// new empty array of strings, different syntax:
var teams: [String] = [String]() 
var cities: [String] = []
var clues = [String]()

var album: String = "12345"

var year: Int = 1989
var year2: Double = 1000
var whatIsIt: Bool = false
let username: String

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark // don't need the type any more

// string interpolation
print("5 x 5 is \(5 * 5)")

var testNumber = 11
print("5 x \(testNumber) is \(5 * testNumber)")


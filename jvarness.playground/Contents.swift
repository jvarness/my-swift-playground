/*
 Sometimes the best way to learn is to read a book or get advice
 and tips from others... Or you can try a bunch of different stuff,
 fail a bunch, and then succeed.
 
 This playground is one that I made while I was learning how to
 program in Swift.
 
 I read this book to learn how to program in Swift:
 
 https://www.amazon.com/Swift-Beginners-Develop-Design-2nd/dp/0134289773

 Date: 9-3-2016
 Author: Jake Varness (http://github.com/jvarness)
 
*/
// Btw, this is a single-line comment. Above was a multi-line comment.

/* 
 import statements can be used to add other libraries (known as modules
 in Swift) to the source.
 */
import Foundation

// Declaring variables is easy! Just type 'var', give it a name, and
// assign it to something!
var str = "Hello, playground"

// You can print what variable says by invoking the 'print' function on
// it!
print(str)

// You can tell Swift to make your variables a specific type.
// M_PI is a constant in UIKit that resolve to the value of π.
let pi : Double = M_PI
// ... let also makes a variable a constant.

// You can print a variable into a meaningful statement using
// string interpolation.
print("The value of π is \(pi)")

// Making collections, like this array, are pretty easy.
// The "1...100" is a range. It basically says "use numbers
// 1 through 100".
var numbers = [Int](1...100)
var count : Int = 0;

// You can write loops and do math. This loop executes 100 times.
for num in numbers {
    // This is a mod operator. It returns the remainder of the number
    // on the left divided by the number on the right.
    if num % 35 == 0 {
        print("\(num) is divisible by 5 AND 7")
    }
    else {
        if num % 7 == 0 {
            print("\(num) is divisible by 7")
        }
        else if num % 5 == 0 {
            print("\(num) is divisible by 5")
        }
        else {
            print ("\(num) is not divisible by 5 OR 7")
        }
    }
    count += 1
}

print("The loop was executed \(count) times!")

// Another collection, the dictionary, is also very easy
// to make:
var storeRatings = [ "Wal-Mart" : 1.0, "Price Chopper" : 2.5, "HyVee" : 5.0 ]
storeRatings["HyVee"]

// storeRatings is a dictionary of Strings to Doubles. You can access
// the value of the entry using it's key. In this case, Strings are 
// the keys, Doubles are the values.
for key in storeRatings.keys {
    var value : Double? = storeRatings[key]
    print("You gave \(key) a rating of \(value) stars!")
}

// Making code that you can use over and over again is a must. That's
// where functions come in:
func calculateCircleArea(radius : Double) -> Double {
    return pi * pow(radius, 2);
}

// Then you can calculate the area of circles with lots of different
// radii.
calculateCircleArea(radius: 2.0)
calculateCircleArea(radius: 3.5)
calculateCircleArea(radius: 1)

// You can also tell a function to take more than one parameter:
func calculateRightTriangleHypotenuse(a : Double, b : Double) -> Double {
    return sqrt(pow(a, 2) + pow(b,2))
}

calculateRightTriangleHypotenuse(a: 1, b : 1)
calculateRightTriangleHypotenuse(a: 2.3, b: 4.5)

// You can ALSO pass many parameters of the same type without specifying 
// a placeholder for each one:
func describeDay(name : String, actions: String...) {
    print("Things that \(name) did today:")
    
    if actions.count == 0 {
        print("\(name) did nothing")
    }
    else {
        for action in actions {
            print("\(name) \(action)")
        }
    }
}

describeDay(name: "I", actions: "did laundry", "went to the store", "ate breakfast")
describeDay(name: "Darth Vader")
describeDay(name: "Chuck Norris", actions: "killed a house fly just by staring at it", "worked out on his Total Gym and it cried \"Uncle\"", "did a cartwheel and it created a tornado")

// You can ALSO return functions in your functions!
func badRating(storeName : String) -> String {
    return "Customers do not like \(storeName)."
}

func mediocreRating(storeName : String) -> String {
    return "Customers think \(storeName) is okay."
}

func goodRating(storeName : String) -> String {
    return "Customers think \(storeName) is great!"
}

func getRating(rating : Double) -> (String) -> String {
    if rating >= 0.0 && rating <= 2.0 {
        return badRating
    }
    else if rating > 2.0 && rating < 3.5 {
        return mediocreRating
    }
    else {
        return goodRating
    }
}

// Once you get the function you want, you can call it!
for key in storeRatings.keys {
    getRating(rating : storeRatings[key]!)(key)
}

// Closures allow you to write encapsulated blocks of code
// without giving a concrete definition for it.
let fahrenheitToCelcius = { (temp : Double) -> Double in
    return (temp - 32) * (5.0 / 9.0)
}

let celciusToFahrenheit = { (temp : Double) -> Double in
    return (temp * (9.0 / 5.0)) + 32
}

let celciusToKelvin = { (temp : Double) -> Double in
    return temp + 273.15
}

let kelvinToCelcius = { (temp : Double) -> Double in
    return temp - 273.15
}

func temperatureConverter(temperature : Double, converter : (Double) -> Double) -> Double {
    return converter(temperature)
}

// You can pass closures into a function just like you
// can with functions!
temperatureConverter(temperature: 32.0, converter: fahrenheitToCelcius)
temperatureConverter(temperature: 0, converter: celciusToFahrenheit)
temperatureConverter(temperature: 0, converter: celciusToKelvin)
temperatureConverter(temperature: 273.15, converter: kelvinToCelcius)

// String, Double, Int, arrays, and dictionaries are great 
// objects, but what if you want to make your own? Define
// an object using the class keyword:
public class Car {
    // These are the member variables of the Car class
    private var make : String
    private var model : String
    private var year : Int
    private var horsePower : Int
    
    // This is used to construct a Car.
    public init (make : String, model : String, year : Int, horsePower : Int) {
        self.make = make
        self.model = model
        self.year = year
        self.horsePower = horsePower
    }
    
    // This can ALSO be used to construct a car, but it doesn't
    // require as much information.
    public convenience init (make : String, model : String) {
        self.init(make: make, model: model, year: 2016, horsePower: 100)
    }
    
    // Below are accessor functions, designed to get information
    // about the Car.
    public func getMake() -> String {
        return self.make
    }
    
    public func getModel() -> String {
        return self.model
    }
    
    public func getYear() -> Int {
        return self.year
    }
    
    public func getHorsePower() -> Int {
        return self.horsePower
    }
}

// You can construct an object using it's constructor...
var myCar = Car(make: "Honda", model: "Civic", year: 2010, horsePower: 82)
var dreamCar = Car(make : "Nissan", model : "Skyline GT-R")

// ... and call functions to get the variables you constructed it with!
print("My car is a \(myCar.getYear()) \(myCar.getMake()) \(myCar.getModel()), and it has \(myCar.getHorsePower()) horse power")
print("My dream car is a \(dreamCar.getYear()) \(dreamCar.getMake()) \(dreamCar.getModel()), and it has \(dreamCar.getHorsePower()) horse power")
// I have no idea if those are accurate... Pretty sure the second one is wrong.


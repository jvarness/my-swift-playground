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
import UIKit

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
var storeRatings = [ "Wal-Mart" : 1.0, "Price Chopper" : 3.5, "HyVee" : 5.0 ]
storeRatings["HyVee"]

// storeRatings is a dictionary of Strings to Doubles. You can access
// the value of the entry using it's key. In this case, Strings are 
// the keys, Doubles are the values.
for key in storeRatings.keys {
    var value : Double? = storeRatings[key]
    print("You gave \(key) a rating of \(value) stars!")
}
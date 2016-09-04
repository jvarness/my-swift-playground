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

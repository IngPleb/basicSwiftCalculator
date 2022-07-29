//
//  main.swift
//  basicCalculator
//
//  Created by Matěj Vnouček on 29.07.2022.
//

import CoreFoundation

let LEFT_HAND_NUMBER = 1
let RIGHT_HAND_NUMBER = 2
let MATH_OPERATION = 3


// Welcome message for a user
print("Welcome to BASIC CALCULATOR made by IngPleb, type exit to terminate the program")

var input:String?
var mode = LEFT_HAND_NUMBER

var firstNumber:Double = 0
var secondNumber:Double = 0

while true {
    
    if mode > MATH_OPERATION {
        mode = LEFT_HAND_NUMBER
    }
        
    if mode == LEFT_HAND_NUMBER {
        print("Please enter the first number:")
    } else if mode == RIGHT_HAND_NUMBER {
        print("Please enter the second number:")
    } else {
        print("Print desired mathematical operation (+, -, /, *):")
    }
    
    input = readLine()
    
//  input clear block
    if (input == nil) {
        continue
    }
    
    
    if "exit" == input {
        break
    }
    
    if mode == LEFT_HAND_NUMBER || mode == RIGHT_HAND_NUMBER {
        let parsedNumber = Double(input!) ?? nil
        
        if parsedNumber == nil {
            print("Enter a valid number!")
            continue
        }
        
        if mode == LEFT_HAND_NUMBER {
            firstNumber = parsedNumber!
        } else {
            secondNumber = parsedNumber!
        }
    } else {
        var result:Double
        switch input! {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            result = firstNumber / secondNumber
        default:
            print("Invalid operation!")
            continue
        }
        print("The result is \(result)")
    }
    
    mode = mode + 1
    
}
print("Goodbye!")

//
//  main.swift
//  unknown-number-game-console
//
//  Created by Александр Владыко on 19.01.22.
//

let randomNumber = UInt8.random(in: 1...250)

var guessed: String?
print("Please, guess the number")

repeat {
    guessed = readLine()
    let unwrappedValue = UInt8(guessed!)!
    
    if unwrappedValue == randomNumber {
        print("Correct!")
    } else if unwrappedValue < randomNumber {
         print("Bigger!")
    } else {
        print("Smaller!")
    }
} while UInt8(guessed!)! != randomNumber

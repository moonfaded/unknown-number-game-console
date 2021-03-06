//
//  main.swift
//  unknown-number-game-console
//
//  Created by Александр Владыко on 19.01.22.
//

var userWantToPlay: Bool = true

while userWantToPlay {
    
    let randomNumber = UInt8.random(in: 1...250)
    print("Machine have chosen the number. Try to guess it!")
    
    while true {
        guard let unwrappedValue = UInt8(readLine() ?? "") else {
            print("Number isn't correct, please, try another one")
            continue
        }
        
        if unwrappedValue > randomNumber {
            print("Smaller!")
        } else if unwrappedValue < randomNumber {
            print("Bigger!")
        } else {
            print("Correct!")
            userWantToPlay = false
            break
        }
    }
    
    print("Wanna play a game again? Type 'y' if you do!")
    if let userAnswer = readLine() {
        userWantToPlay = userAnswer == "y" ? true : false
    }
}

//
// RecursiveFactorial.swift
//
// Created by Ina Tolo
// Created on 2022-3-30
// Version 1.0
// Copyright (c) 2022 Ina Tolo. All rights reserved.
//
// The RecursiveFactorial program implements an application
// that uses a recursive function to determine the answer of
// some number, factorial.

// determines the factorial of the user's number
func factorial(userNum: Int) -> Double {
    if userNum == 1 || userNum == 0 {
        return Double(1)
    } else {
        return Double(factorial(userNum: Int(userNum) - 1) * Double(userNum))
    }
}

// stores exception at runtime
enum MyError: Error {
    case runtimeError(String)
}

// function that throws exception
func catchString() throws {
    throw MyError.runtimeError("Value cannot be accepted!")
}

// declaring variables
var userString: String
var userNumInt: Int
var userAnswer: Double

print("Today you will find out the answer when a number is put with factorial.")
print()

// gets input from the user
print("Please enter a positive integer (0 inclusive): ", terminator: "")
userString = readLine()!
print()

do {
    userNumInt = Int(userString) ?? 0

    if userNumInt != Int(userString) {
      try catchString()
    }

    if userNumInt >= 0 {
        userAnswer = factorial(userNum: userNumInt)

        print("The answer to \(userNumInt)! is \(userAnswer)")
    } else {
        print("Number type is invalid!")
    }

// checks if there are any errors in input
} catch MyError.runtimeError(let errorMessage) {
    print(errorMessage)
    print()
}

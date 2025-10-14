// Beginning iOS & Swift: Week 2 Homework Assignment
print("Beginning iOS & Swift: Week 2 Homework Assignment")
print("-----\n")

//  XcodeDebuggingAssignments.swift
//  IntroToXcode Homework
//
//  Instructions:
//  Complete each task below. Each task represents one of the six assignments.
//  Read the task description in the comment block and follow the instructions to fix or complete the code.
//
import Foundation
// -----------------------------
// 🧪 Task 1: Fix the Broken Loop
// -----------------------------
// The loop below causes a runtime crash due to accessing an out-of-bounds index.
// Fix the loop so that it prints all names correctly.
func task1() {
    print("Task 1 Output:")
    let names = ["Ana", "Ben", "Cory"]
    for i in 0..<names.count {
        print(names[i])
    }
    print("-----\n")
}


// -----------------------------
// 🧪 Task 2: Repair False Positive Errors
// -----------------------------
// This function contains syntax errors caused by improper brace placement.
// Fix the syntax so the code compiles and runs correctly.
func task2() {
    print("Task 2 Output:")
    func greet(name: String) {
        if name.isEmpty {
            print("Hello, stranger!")
        } else {
            print("Hello, \(name)!")
        }
        
    }
    greet(name: "")
    print("-----\n")
}


// -----------------------------
// 🧪 Task 3: Add and Use a Snippet
// -----------------------------
// Use this for loop as a custom code snippet:
// for number in 1...5 {
//     print("Number: \\(number)")
// }
//
// Then reuse it to print the letters A-E below.
func task3() {
    print("Task 3 Output:")
    let letters = ["A", "B", "C", "D", "E"]
    for letter in letters {
        print("Letter: \(letter)")
    }
    print("-----\n")
}


// -----------------------------
// 🧪 Task 4: Use Quick Help to Document Code
// -----------------------------
// Add a Quick Help comment above the function so it shows up in autocomplete and the Quick Help inspector.
/// Adds two integers and returns the result.
/// - Parameters:
///   - a: The first integer.
///   - b: The second integer.
/// - Returns: The sum of `a` and `b`.
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}


func task4() {
    print("Task 4 Output:")
    let result = add(3, 4)
    print(result)
    print("-----\n")
}


// -----------------------------
// 🧪 Task 5: Debug with LLDB Console
// -----------------------------
// Set a breakpoint on `x = x + 1`, and in the LLDB console, change the value of `x` to 10.
// Then continue running the app and confirm the updated output.
func task5() {
    print("Task 5 Output:")
    var x = 10
    print("Initial value of x: \(x)")
    x = x + 1 // <- Set breakpoint here and modify x to 10 using LLDB
    print("Updated value of x: \(x)")
    print("-----\n")
}


// -----------------------------
// 🧪 Task 6: Trigger and Fix Warnings
// -----------------------------
// Xcode will warn about the unused variable and custom warning below.
// Fix the code by either removing the unused variable or using it.
func task6() {
    print("Task 6 Output:")
    let unusedVariable = 42
    print("Value is \(unusedVariable)")
    print("-----\n")
}

// -----------------------------
// 🧪 Optional Task 7: Diagnose and Fix a Loop Logic Bug
// -----------------------------
// This function is supposed to calculate the sum of all even numbers between `start` and `end`, inclusive.
// However, the current logic is flawed. Your tasks are:
//
// 1. Use breakpoints and LLDB to step through and inspect variable values.
// 2. Fix the logic so it correctly sums even numbers only.
// 3. Add Quick Help documentation for the function.
// 4. Add a TODO comment to remind yourself to test with negative ranges later.
/// Returns the sum of even integers in the given range (inclusive).
/// - Parameters:
///   - start: The beginning of the range.
///   - end: The end of the range.

func sumEvenNumbers(from start: Int, to end: Int) -> Int {
    var sum = 0
    var current = start % 2 == 0 ? start : start + 1 // Ensure `current` starts as even
    while current <= end {
        sum += current
        current += 2
    }
    return sum
}

func task7() {
    print("Task 7 Output:")
    let result = sumEvenNumbers(from: 2, to: 10)
    print("Expected: 2 + 4 + 6 + 8 + 10 = 30")
    print("Actual: \(result)")
    print("-----\n")
}


// Run all tasks
task1()
task2()
task3()
task4()
task5()
task6()
task7()



print("Beginning iOS & Swift: Week 3 Homework Assignment")

performAction()
print("-----\n")

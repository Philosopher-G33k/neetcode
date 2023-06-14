import UIKit

var greeting = "Hello, playground"

// Remove Duplicates --EASY
var arr = [1,2,2,2,2,4,5,6,7,7,7,8,9]
let arr1 = removeDuplicates(nums: &arr)
print(arr1)

// Remove Element --EASY
arr = [1,2,2,2,2,4,5,6,7,7,7,8,9]
let count = removeElement(&arr, 2)
print(count)

// Concatenate Arrays --EASY
arr = [1,2,2,2,2,4,5,6,7,7,7,8,9]
let concatenatedArray = concatenateArray(&arr, 3)
print(concatenatedArray)

// Stack BaseBall --EASY
var ops = ["5","2","C","D","+"]
let points = calculatePoints(&ops)
print(points)

// Validate braces --EASY

let s = "{}[{()}]"
let isValid = validateParentheses(s)

// Min Stack -- Medium
var minStack = MinStack()
minStack.push(0)
minStack.push(-4)
minStack.push(10)
minStack.push(11)
minStack.top()
minStack.getMin()
minStack.pop()
minStack.top()
minStack.getMin()

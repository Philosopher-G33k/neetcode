import UIKit

var greeting = "Hello, playground"

// Remove Duplicates
var arr = [1,2,2,2,2,4,5,6,7,7,7,8,9]
let arr1 = removeDuplicates(nums: &arr)
print(arr1)

// Remove Element
arr = [1,2,2,2,2,4,5,6,7,7,7,8,9]
let count = removeElement(&arr, 2)
print(count)

// Concatenate Arrays
arr = [1,2,2,2,2,4,5,6,7,7,7,8,9]
let concatenatedArray = concatenateArray(&arr, 3)
print(concatenatedArray)

// Stack BaseBall
var ops = ["5","2","C","D","+"]
let points = calculatePoints(&ops)
print(points)

// Validate braces

let s = "{}[{()}]"
let isValid = validateParentheses(s)

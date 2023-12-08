//
//  BOJ2504.swift
//  Algorithm
//
//  Created by Erick on 2023/11/28.
//  괄호의 값: https://www.acmicpc.net/problem/2504
//

var input = readLine()!
var stack: [Character] = []
var beforeInput = Character(" ")
var isSuccess = true
var temp = 1
var result = 0

for i in input {
    
    if i == "(" {
        temp *= 2
        stack.append(i)
    } else if i == "[" {
        temp *= 3
        stack.append(i)
    } else if i == ")" {
        if stack.isEmpty || stack.last != "(" {
            isSuccess = false
            break
        }
        
        if beforeInput == "(" {
            result += temp
        }
        stack.removeLast()
        temp /= 2
    } else if i == "]" {
        if stack.isEmpty || stack.last != "[" {
            isSuccess = false
            break
        }
        
        if beforeInput == "[" {
            result += temp
        }
        stack.removeLast()
        temp /= 3
    }
    
    beforeInput = i
}

if !isSuccess || !stack.isEmpty {
    print(0)
} else {
    print(result)
}

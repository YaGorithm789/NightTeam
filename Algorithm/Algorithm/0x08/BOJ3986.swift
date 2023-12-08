//
//  BOJ3986.swift
//  Algorithm
//
//  Created by Erick on 2023/11/26.
//  좋은 단어: https://www.acmicpc.net/problem/3986
//

let n = Int(readLine()!)!
var result = 0

for _ in 1...n {
    let input = readLine()!
    var stack: [Character] = []
    
    for a in input {
        if stack.isEmpty {
            stack.append(a)
        } else if a == "A" {
            if stack.last == "A" {
                stack.removeLast()
                continue
            } else {
                stack.append(a)
            }
        } else if a == "B" {
            if stack.last == "B" {
                stack.removeLast()
                continue
            } else {
                stack.append(a)
            }
        }
    }
    
    if stack.isEmpty {
        result += 1
    }
}

print(result)

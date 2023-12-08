//
//  BOJ4949.swift
//  Algorithm
//
//  Created by Erick on 2023/11/26.
//  균형잡힌 세상: https://www.acmicpc.net/problem/4949
//

var result: [String] = []

while true {
    let input = readLine()!
    
    if input == "." {
        break
    }
    
    var stack: [String] = []
    var isFail = false
    
    for str in input {
        switch str {
        case "(", "[":
            stack.append(String(str))
        case ")":
            guard stack.last == "(" else {
                isFail = true
                break
            }
            stack.removeLast()
        case "]":
            guard stack.last == "[" else {
                isFail = true
                break
            }
            stack.removeLast()
        default:
            continue
        }
    }
    
    result.append(stack.isEmpty && !isFail ? "yes" : "no")
}

print(result.joined(separator: "\n"))

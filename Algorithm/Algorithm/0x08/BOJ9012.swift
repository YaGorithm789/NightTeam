//
//  BOJ9012.swift
//  Algorithm
//
//  Created by Erick on 2023/11/26.
//  괄호: https://www.acmicpc.net/problem/9012
//

let n = Int(readLine()!)!
var result: [String] = []

for _ in 1...n {
    let input = readLine()!
    
    var count = 0
    
    for str in input {
        switch str {
        case "(":
            count += 1
        case ")":
            count -= 1
        default:
            continue
        }
        
        if count < 0 {
            break
        }
    }
    
    result.append(count == 0 ? "YES" : "NO")
}

print(result.joined(separator: "\n"))

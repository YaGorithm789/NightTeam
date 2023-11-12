//
//  BOJ5397.swift
//  Algorithm
//
//  Created by Erick on 2023/11/12.
//  키로커: https://www.acmicpc.net/problem/5397
//

var front = ""
var back = ""
var result: [String] = []
let input = Int(readLine()!)!

for _ in 1...input {
    let inputList = readLine()!
    
    for item in inputList {
        switch item {
        case "<":
            if !front.isEmpty {
                back.append(front.popLast()!)
            }
        case ">":
            if !back.isEmpty {
                front.append(back.popLast()!)
            }
        case "-":
            if !front.isEmpty {
                front.removeLast()
            }
        default:
            front.append(item)
        }
    }
    
    result.append(front + back.reversed())
    
    front = ""
    back = ""
}

result.forEach {
    print($0)
}

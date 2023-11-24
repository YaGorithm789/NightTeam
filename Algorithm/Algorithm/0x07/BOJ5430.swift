//
//  BOJ5430.swift
//  Algorithm
//
//  Created by Erick on 2023/11/22.
//  AC: https://www.acmicpc.net/problem/5430
//

let t = Int(readLine()!)!
var result: [String] = []

for _ in 1...t {
    let commands = readLine()!
    let n = Int(readLine()!)!
    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map { String($0) }
    var isReversed = false
    var head = 0
    var tail = n - 1
    
    for command in commands {
        if command == "R" {
            isReversed.toggle()
        } else if isReversed {
            tail -= 1
        } else {
            head += 1
        }
    }
    
    if head > tail + 1 {
        result.append("error")
    } else if head == tail + 1 {
        result.append("[]")
    } else {
        let resultArr = "[\(arr[head...tail].map { String($0) }.joined(separator: ","))]"
        let reversedResultArr = "[\(arr[head...tail].reversed().map { String($0) }.joined(separator: ","))]"
        result.append(isReversed ? reversedResultArr : resultArr)
    }
}

print(result.joined(separator: "\n"))

//
//  BOJ15652.swift
//  Algorithm
//
//  Created by Erick on 2023/12/26.
//  N과 M (4): https://www.acmicpc.net/problem/15652
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var stack: [Int] = []
var result: [String] = []

recursion(1)

print(result.joined(separator: "\n"))

func recursion(_ start: Int) {
    if stack.count == m {
        result.append(stack.map { String($0) }.joined(separator: " "))
        return
    } else {
        for i in start...n {
            stack.append(i)
            recursion(i)
            stack.removeLast()
        }
    }
}

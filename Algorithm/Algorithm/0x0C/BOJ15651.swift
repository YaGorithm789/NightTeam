//
//  BOJ15651.swift
//  Algorithm
//
//  Created by Erick on 2023/12/26.
//  N과 M (3): https://www.acmicpc.net/problem/15651
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var stack: [Int] = []
var result: [String] = []

recursion(0)

print(result.joined(separator: "\n"))

func recursion(_ depth: Int) {
    if depth == m {
        result.append(stack.map { String($0) }.joined(separator: " "))
        return
    } else {
        for i in 1...n {
            stack.append(i)
            recursion(depth + 1)
            stack.removeLast()
        }
    }
}

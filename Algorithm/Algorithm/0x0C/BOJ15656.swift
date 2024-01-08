//
//  BOJ15656.swift
//  Algorithm
//
//  Created by Erick on 2023/12/27.
//  N과 M (7): https://www.acmicpc.net/problem/15656
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var stack: [String] = []
var result: [String] = []

recursion()
print(result.joined(separator: "\n"))

func recursion() {
    if stack.count == m {
        result.append(stack.joined(separator: " "))
        return
    } else {
        for i in 0..<n {
            stack.append(String(sequence[i]))
            recursion()
            stack.removeLast()
        }
    }
}

//
//  BOJ15657.swift
//  Algorithm
//
//  Created by Erick on 2023/12/29.
//  N과 M (8): https://www.acmicpc.net/problem/15657
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var stack: [String] = []
var result: [String] = []

recursion(0)
print(result.joined(separator: "\n"))

func recursion(_ start: Int) {
    if stack.count == m {
        result.append(stack.joined(separator: " "))
        return
    } else {
        for i in start..<n {
            stack.append(String(sequence[i]))
            recursion(i)
            stack.removeLast()
        }
    }
}

//
//  BOJ15654.swift
//  Algorithm
//
//  Created by Erick on 2023/12/27.
//  N과 M (5): https://www.acmicpc.net/problem/15654
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var visit = Array(repeating: false, count: n)
var stack: [Int] = []
var result: [String] = []

recursion()
print(result.joined(separator: "\n"))

func recursion() {
    if stack.count == m {
        result.append(stack.map { String($0) }.joined(separator: " "))
        return
    } else {
        for i in 0..<n {
            if !visit[i] {
                visit[i] = true
                stack.append(sequence[i])
                recursion()
                visit[i] = false
                stack.removeLast()
            }
        }
    }
}

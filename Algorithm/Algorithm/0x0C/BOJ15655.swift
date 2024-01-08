//
//  BOJ15655.swift
//  Algorithm
//
//  Created by Erick on 2023/12/27.
//  N과 M (6): https://www.acmicpc.net/problem/15655
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var visit = Array(repeating: false, count: n)
var stack: [Int] = []
var result: [String] = []

recursion(0)
print(result.joined(separator: "\n"))

func recursion(_ start: Int) {
    if stack.count == m {
        result.append(stack.map { String($0) }.joined(separator: " "))
        return
    } else {
        for i in start..<n {
            if !visit[i] {
                visit[i] = true
                stack.append(sequence[i])
                recursion(i)
                visit[i] = false
                stack.removeLast()
            }
        }
    }
}

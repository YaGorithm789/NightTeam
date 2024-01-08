//
//  BOJ15664.swift
//  Algorithm
//
//  Created by Erick on 2023/12/29.
//  N과 M (10): https://www.acmicpc.net/problem/15664
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var visit = Array(repeating: false, count: n)
var stack: [String] = []
var check: Set<String> = []

recursion(0)

func recursion(_ start: Int) {
    if stack.count == m {
        let resultText = stack.joined(separator: " ")
        
        if !check.contains(resultText) {
            check.insert(resultText)
            print(resultText)
        }
    } else {
        for i in start..<n {
            if !visit[i] {
                visit[i] = true
                stack.append(String(sequence[i]))
                recursion(i)
                visit[i] = false
                stack.removeLast()
            }
        }
    }
}

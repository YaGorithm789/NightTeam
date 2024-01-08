//
//  BOJ15665.swift
//  Algorithm
//
//  Created by Erick on 2023/12/29.
//  N과 M (11): https://www.acmicpc.net/problem/15665
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var stack: [String] = []
var check: Set<String> = []

recursion()

func recursion() {
    if stack.count == m {
        let resultText = stack.joined(separator: " ")
        
        if !check.contains(resultText) {
            check.insert(resultText)
            print(resultText)
        }
    } else {
        for i in 0..<n {
            stack.append(String(sequence[i]))
            recursion()
            stack.removeLast()
        }
    }
}

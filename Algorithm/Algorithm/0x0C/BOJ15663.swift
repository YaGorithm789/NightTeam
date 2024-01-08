//
//  BOJ15663.swift
//  Algorithm
//
//  Created by Erick on 2023/12/29.
//  N과 M (9): https://www.acmicpc.net/problem/15663
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var visit = Array(repeating: false, count: n)
var result: [String] = []
var check: Set<String> = []

recursion()

func recursion() {
    if result.count == m {
        let resultText = result.joined(separator: " ")
        
        if !check.contains(resultText) {
            check.insert(resultText)
            print(resultText)
        }
    } else {
        for i in 0..<n {
            if !visit[i] {
                visit[i] = true
                result.append(String(sequence[i]))
                recursion()
                visit[i] = false
                result.removeLast()
            }
        }
    }
}

//
//  BOJ15649.swift
//  Algorithm
//
//  Created by Erick on 2023/12/20.
//  N과 M (1): https://www.acmicpc.net/problem/15649
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var visit = Array(repeating: false, count: n + 1)
var result: [Int] = []

recursion(0)

func recursion(_ depth: Int) {
    if depth == m {
        print(result.map { String($0) }.joined(separator: " "))
        return
    } else {
        for i in 1...n {
            if !visit[i]{
                visit[i] = true
                result.append(i)
                recursion(depth + 1)
                visit[i] = false
                result.removeLast()
            }
        }
    }
}

//
//  BOJ15650.swift
//  Algorithm
//
//  Created by Erick on 2023/12/23.
//  N과 M(2): https://www.acmicpc.net/problem/15650
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var visit = Array(repeating: false, count: n + 1)
var result: [Int] = []

recursion(1)

func recursion(_ start: Int) {
    if result.count == m {
        print(result.map { String($0) }.joined(separator: " "))
        return
    } else {
        for i in start...n {
            if !visit[i] {
                visit[i] = true
                result.append(i)
                recursion(i)
                visit[i] = false
                result.removeLast()
            }
        }
    }
}

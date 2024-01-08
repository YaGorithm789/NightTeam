//
//  BOJ15666.swift
//  Algorithm
//
//  Created by Erick on 2023/12/29.
//  N과 M (12): https://www.acmicpc.net/problem/15666
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let l = input[0]
let c = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var visit = Array(repeating: false, count: c)
var stack: [String] = []

recursion(0)

func recursion(_ start: Int) {
    if stack.count == l {
        let vowelCount = stack.filter({ ["a", "e", "i", "o", "u"].contains($0) }).count
        
        if (1...l-2).contains(vowelCount) {
            print(stack.joined(separator: ""))
        }
    } else {
        for i in start..<c {
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

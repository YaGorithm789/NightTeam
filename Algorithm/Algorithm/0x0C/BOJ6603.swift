//
//  BOJ6603.swift
//  Algorithm
//
//  Created by Erick on 2023/12/23.
//  로또: https://www.acmicpc.net/problem/6603
//

var visit = Array(repeating: false, count: 14)
var input: [Int] = []
var stack: [Int] = []
var count = 0

while true {
    input = readLine()!.split(separator: " ").map{Int(String($0))!}
    count = input.removeFirst()
    
    if count == 0 {
        break
    } else {
        recursion(0)
        print("")
    }
}

func recursion(_ start: Int) {
    if stack.count == 6 {
        print(stack.map{ String($0) }.joined(separator: " "))
    } else {
        for i in start..<count {
            if !visit[i] {
                visit[i] = true
                stack.append(input[i])
                recursion(i)
                stack.removeLast()
                visit[i] = false
            }
        }
    }
}

//
//  BOJ1182.swift
//  Algorithm
//
//  Created by Erick on 2023/12/21.
//  부분수열의 합: https://www.acmicpc.net/problem/1182
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let s = input[1]
let sequence = readLine()!.split(separator: " ").compactMap { Int($0) }

var visit = Array(repeating: false, count: n)
var count = 0
var sum = 0

recursion(0, 0)
print(count)

func recursion(_ depth: Int, _ start: Int){
    if sum == s, depth > 0 {
        count += 1
    }
    
    for i in start..<n {
        if !visit[i] {
            visit[i] = true
            sum += sequence[i]
            recursion(depth + 1, i)
            visit[i] = false
            sum -= sequence[i]
        }
    }
}

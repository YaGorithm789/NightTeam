//
//  BOJ1026.swift
//  Algorithm
//
//  Created by Erick on 2024/02/13.
//  보물: https://www.acmicpc.net/problem/1026
//

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").compactMap { Int($0) }
var b = readLine()!.split(separator: " ").compactMap { Int($0) }
var result = 0
a.sort()
b.sort(by: >)

for i in 0..<n {
    result += a[i] * b[i]
}

print(result)

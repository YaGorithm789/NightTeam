//
//  BOJ11399.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  ATM: https://www.acmicpc.net/problem/11399
//

let n = Int(readLine()!)!
let times = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
var result = 0

for i in 0..<n {
    result += times[0...i].reduce(0, +)
}

print(result)

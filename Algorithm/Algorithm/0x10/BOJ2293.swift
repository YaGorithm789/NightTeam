//
//  BOJ2293.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  동전 1: https://www.acmicpc.net/problem/2293
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let k = input[1]
var coins: [Int] = []
var dp = Array(repeating: 0.0, count: k+1)
dp[0] = 1

for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

for coin in coins {
    guard k >= coin
    else { continue }

    for i in coin...k {
        dp[i] += dp[i - coin]
    }
}

print(Int(dp[k]))

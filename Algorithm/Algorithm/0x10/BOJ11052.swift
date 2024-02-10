//
//  BOJ11052.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  카드 구매하기: https://www.acmicpc.net/problem/11052
//

let n = Int(readLine()!)!
let cards = [0] + readLine()!.split(separator: " ").compactMap { Int($0) }
var dp = Array(repeating: 0, count: n+1)

for i in 1...n {
    for j in 1...i {
        dp[i] = max(dp[i-j] + cards[j], dp[i])
    }
}

print(dp[n])

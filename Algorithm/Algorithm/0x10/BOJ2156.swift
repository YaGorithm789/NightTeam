//
//  BOJ2156.swift
//  Algorithm
//
//  Created by Erick on 2024/02/02.
//  포도주 시식: https://www.acmicpc.net/problem/2156
//

let n = Int(readLine()!)!
var wines: [Int] = [0, 0, 0]
var dp: [Int] = [0, 0, 0] + Array(repeating: 0, count: n)

for _ in 0..<n {
    wines.append(Int(readLine()!)!)
}

for i in 3..<n+3 {
    dp[i] = max(wines[i] + wines[i-1] + dp[i-3], wines[i] + dp[i-2], dp[i-1])
}

print(dp.max()!)

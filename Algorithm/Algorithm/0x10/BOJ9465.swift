//
//  BOJ9465.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  스티커: https://www.acmicpc.net/problem/9465
//

let t = Int(readLine()!)!
var result: [String] = []

for _ in 0..<t {
    let n = Int(readLine()!)!
    var stickers: [[Int]] = []
    stickers.append(readLine()!.split(separator: " ").compactMap { Int($0) })
    stickers.append(readLine()!.split(separator: " ").compactMap { Int($0) })
    var dp = Array(repeating: Array(repeating: 0, count: n), count: 2)

    if n == 1 {
        result.append(String(max(stickers[0][0], stickers[1][0])))
    } else {
        dp[0][0] = stickers[0][0]
        dp[1][0] = stickers[1][0]
        dp[0][1] = dp[1][0] + stickers[0][1]
        dp[1][1] = dp[0][0] + stickers[1][1]

        for i in 2..<n {
            dp[0][i] = max(dp[1][i-1], dp[1][i-2]) + stickers[0][i]
            dp[1][i] = max(dp[0][i-1], dp[0][i-2]) + stickers[1][i]
        }

        result.append(String(max(dp[0][n-1], dp[1][n-1])))
    }
}

print(result.joined(separator: "\n"))

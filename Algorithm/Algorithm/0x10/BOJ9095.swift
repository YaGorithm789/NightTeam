//
//  BOJ9095.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  1, 2, 3 더하기: https://www.acmicpc.net/problem/9095
//

let t = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<t {
    let n = Int(readLine()!)!

    var dp = Array(repeating: 0, count: 11)
    dp[1] = 1
    dp[2] = 2
    dp[3] = 4

    if n < 4 {
        result.append(dp[n])
        continue
    }

    for i in 4..<11 {
        dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
    }

    result.append(dp[n])
}

result.forEach {
    print($0)
}

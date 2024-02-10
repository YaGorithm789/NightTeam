//
//  BOJ9461.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  파도반 수열: https://www.acmicpc.net/problem/9461
//

let n = Int(readLine()!)!
var result: [String] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    var dp = Array(repeating: 0, count: 101)
    dp[1] = 1
    dp[2] = 1
    dp[3] = 1
    dp[4] = 2
    dp[5] = 2
    
    if input > 5 {
        for i in 6...input {
            dp[i] = dp[i-1] + dp[i-5]
        }
    }
    
    result.append(String(dp[input]))
}

print(result.joined(separator: "\n"))

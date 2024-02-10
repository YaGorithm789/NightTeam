//
//  BOJ15988.swift
//  Algorithm
//
//  Created by Erick on 2024/02/02.
//  1, 2, 3 더하기 3: https://www.acmicpc.net/problem/15988
//

let n = Int(readLine()!)!
var dp = [0, 1, 2, 4]
var pointer = 3
var result: [String] = []

for _ in 0..<n {
    let input = Int(readLine()!)!

    while pointer <= input {
        pointer += 1
        dp.append((dp[pointer - 1] + dp[pointer - 2] + dp[pointer - 3]) % 1000000009)
    }

    result.append(String(dp[input]))
}

print(result.joined(separator: "\n"))

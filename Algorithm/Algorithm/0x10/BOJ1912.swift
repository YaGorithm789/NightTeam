//
//  BOJ1912.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  연속합: https://www.acmicpc.net/problem/1912
//

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }
var dp = Array(repeating: 0, count: n)

for i in 0..<n {
    if i == 0 {
        dp[i] = nums[i]
        continue
    }

    dp[i] = max(dp[i-1] + nums[i], nums[i])
}

print(dp.max()!)

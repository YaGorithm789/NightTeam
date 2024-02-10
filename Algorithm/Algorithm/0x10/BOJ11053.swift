//
//  BOJ11053.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  가장 긴 증가하는 부분 수열: https://www.acmicpc.net/problem/11053
//

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }
var dp = Array(repeating: 1, count: n)

for i in 0..<n {
    for j in 0..<i {
        if nums[i] > nums[j] {
            dp[i] = max(dp[j] + 1, dp[i])
        }
    }
}

print(dp.max()!)

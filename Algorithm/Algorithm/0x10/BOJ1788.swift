//
//  BOJ1788.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  피보나치 수의 확장: https://www.acmicpc.net/problem/1788
//

var n = Int(readLine()!)!
var dp: [Int] = [0, 1]
var result: [Int] = [1]

if n == 0 {
    result[0] = 0
} else if n < 0 {
    n = (n * -1)
    
    if n % 2 == 0 {
        result[0] = -1
    }
}

if n > 1 {
    for i in 2...n {
        dp.append((dp[i-1] + dp[i-2]) % 1000000000)
    }
}

result.append(dp[n])

result.forEach {
    print($0)
}

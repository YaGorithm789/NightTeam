//
//  BOJ1541.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  잃어버린 괄호: https://www.acmicpc.net/problem/1541
//

let input = readLine()!.split(separator: "-").map(String.init)
var result = 0

for i in 0..<input.count {
    let nums = input[i].split(separator: "+").compactMap { Int($0) }
    var sum = 0

    for n in nums {
        sum += Int(n)
    }

    if i == 0 {
        result += sum
    } else {
        result -= sum
    }
}

print(result)

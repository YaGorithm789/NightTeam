//
//  BOJ3273.swift
//  Algorithm
//
//  Created by Erick on 2023/11/07.
//  두 수의 합: https://www.acmicpc.net/problem/3273
//

let count = Int(readLine()!)!
let numList = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let num = Int(readLine()!)!
var result = 0

// MARK: 풀이 1
var start = 0
var end = count - 1

while start < end {
    let sum = numList[start] + numList[end]

    if num == sum {
        result += 1
        start += 1
        end -= 1
    } else if num < sum {
        end -= 1
    } else {
        start += 1
    }
}

print(result)

// MARK: 풀이 2
var checkList = Array(repeating: 0, count: 2000001)

for n in numList {
    if num - n > 0, checkList[num - n] == 1 {
        result += 1
    }

    checkList[n] = 1
}

print(result)

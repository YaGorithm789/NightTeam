//
//  BOJ1475.swift
//  Algorithm
//
//  Created by Erick on 2023/11/07.
//  방번호: https://www.acmicpc.net/problem/1475
//

let input = readLine()!

var numList: [Int] = Array(repeating: 0, count: 10)

for num in input {
    let index = Int(String(num))!

    numList[index] += 1
}

numList[6] = (numList[6] + numList.removeLast()) / 2

print(numList.max()!)

//
//  BOJ11656.swift
//  Algorithm
//
//  Created by Erick on 2024/01/10.
//  접미사 배열: https://www.acmicpc.net/problem/11656
//

var input = readLine()!
var list: [String] = []

for _ in input {
    list.append(input)
    input.removeFirst()
}

print(list.sorted().joined(separator: "\n"))

//
//  BOJ10807.swift
//  Algorithm
//
//  Created by Erick on 2023/11/07.
//  개수 세기: https://www.acmicpc.net/problem/10807
//

let count = Int(readLine()!)!
let numList = readLine()!.split(separator: " ").map { Int($0)! }
let num = Int(readLine()!)!

let result = numList.filter {
    $0 == num
}.count

print(result)

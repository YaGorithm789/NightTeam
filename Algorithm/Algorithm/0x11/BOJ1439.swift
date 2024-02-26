//
//  BOJ1439.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  뒤집기: https://www.acmicpc.net/problem/1439
//

let input = readLine()!
var path: Character = "c"
var count = -1

for chr in input {
    if path != chr {
        count += 1
        path = chr
    }
}

print((count/2) + (count%2))

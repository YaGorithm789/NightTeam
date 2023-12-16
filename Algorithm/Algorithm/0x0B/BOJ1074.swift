//
//  BOJ1074.swift
//  Algorithm
//
//  Created by Erick on 2023/12/16.
//  Z: https://www.acmicpc.net/problem/1074
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let r = input[1]
let c = input[2]

let point = [[0, 1], [2, 3]]

func recursion(_ n: Int, _ r: Int, _ c: Int, _ count: Int) -> Int {
    if n == 1 {
        return point[r][c] + count
    }

    // Decimal to Int
    let harf = (pow(2, n - 1) as NSDecimalNumber).intValue
    let harfSquare = harf * harf

    if r < harf, c < harf {
        return recursion(n - 1, r, c, count)
    } else if r < harf, c >= harf {
        return recursion(n - 1, r, c - harf, count + harfSquare)
    } else if r >= harf, c < harf {
        return recursion(n - 1, r - harf, c, count + (harfSquare * 2))
    } else {
        return recursion(n - 1, r - harf, c - harf, count + (harfSquare * 3))
    }
}

print(recursion(n, r, c, 0))

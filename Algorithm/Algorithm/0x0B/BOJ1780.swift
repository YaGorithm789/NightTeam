//
//  BOJ1780.swift
//  Algorithm
//
//  Created by Erick on 2023/12/16.
//  종이의 개수: https://www.acmicpc.net/problem/1780
//

let n = Int(readLine()!)!
var paper: [[Int]] = []
var result = Array(repeating: 0, count: 3)

for _ in 0..<n {
    paper.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

func recursion(_ y: Int, _ x: Int, _ n: Int) {
    var nCount = Array(repeating: 0, count: 3)

    for y in y..<y+n {
        for x in x..<x+n {
            let num = paper[y][x]

            if num == -1 {
                nCount[0] += 1
            } else if num == 0 {
                nCount[1] += 1
            } else {
                nCount[2] += 1
            }
        }
    }

    for i in 0..<3 {
        if nCount[i] == n * n {
            result[i] += 1
            return
        }
    }

    let nSplit = n / 3

    recursion(y, x, nSplit)
    recursion(y, x + nSplit, nSplit)
    recursion(y, x + nSplit * 2, nSplit)
    recursion(y + nSplit, x, nSplit)
    recursion(y + nSplit, x + nSplit, nSplit)
    recursion(y + nSplit, x + nSplit * 2, nSplit)
    recursion(y + nSplit * 2, x, nSplit)
    recursion(y + nSplit * 2, x + nSplit, nSplit)
    recursion(y + nSplit * 2, x + nSplit * 2, nSplit)
}

recursion(0, 0, n)

result.forEach {
    print($0)
}

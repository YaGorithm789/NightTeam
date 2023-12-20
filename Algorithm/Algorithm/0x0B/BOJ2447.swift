//
//  BOJ2447.swift
//  Algorithm
//
//  Created by Erick on 2023/12/16.
//  별 찍기 - 10: https://www.acmicpc.net/problem/2447
//

let n = Int(readLine()!)!

var result = Array(repeating: Array(repeating: "*", count: n), count: n)

func recursion(_ y: Int, _ x: Int, _ n: Int) {
    let nSplit = n / 3
    
    if nSplit == 1 {
        result[x+1][y+1] = " "
        return
    }
    
    for y in y+nSplit..<y+nSplit*2 {
        for x in x+nSplit..<x+nSplit*2 {
            result[y][x] = " "
        }
    }
    
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
    print($0.joined())
}

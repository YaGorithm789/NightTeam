//
//  BOJ11328.swift
//  Algorithm
//
//  Created by Erick on 2023/11/08.
//  Strfry: https://www.acmicpc.net/problem/11328
//

let count = Int(readLine()!)!
var result = Array(repeating: "", count: count)

for i in 0..<count {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    if input[0].sorted() == input[1].sorted() {
        result[i] = "Possible"
    } else {
        result[i] = "Impossible"
    }
}

result.forEach {
    print($0)
}

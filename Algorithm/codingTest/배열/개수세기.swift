//
//  개수세기.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

func 개수세기() {
    _ = readLine()!
    let array = readLine()!.split(separator: " ").map { String($0) }
    let v = readLine()!
    var result = 0

    for i in array {
        if i == v {
            result += 1
        }
    }

    print(result)
}

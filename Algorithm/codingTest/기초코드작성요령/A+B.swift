//
//  A+B.swift
//  codingTest
//
//  Created by MARY on 2023/11/08.
//

func AB() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    print(input[0] + input[1])
}

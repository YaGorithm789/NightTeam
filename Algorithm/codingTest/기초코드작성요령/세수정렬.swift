//
//  세수정렬.swift
//  codingTest
//
//  Created by MARY on 2023/11/08.
//

func 세수정렬() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    print(input.sorted().map { String($0) }.joined(separator: " "))
}

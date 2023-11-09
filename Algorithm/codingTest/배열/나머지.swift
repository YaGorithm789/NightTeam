//
//  나머지.swift
//  codingTest
//
//  Created by MARY on 2023/11/09.
//

func 나머지() {
    var set = Set<Int>()
    
    for _ in 0..<10 {
        set.insert(Int(readLine()!)! % 42)
    }
    
    print(set.count)
}

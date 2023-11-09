//
//  평균.swift
//  codingTest
//
//  Created by MARY on 2023/11/09.
//

func 평균() {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let new = Array(repeating: 0, count: n)
    let max = input.max()!
    
    (0..<n).forEach { new[$0] = input[$0]/max*100 }
    
    
}

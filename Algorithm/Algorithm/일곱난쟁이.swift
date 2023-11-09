//
//  BOJ02309.swift
//  Algorithm - 일곱난쟁이
//
//  Created by Rowan on 2023/11/06.
//

//var arr = readLine()!.split(separator: "\n").map { Int($0)! }

var arr: [Int] = []
while arr.count != 9 {
    arr.append(Int(readLine()!)!)
}

let sum = arr.reduce(0, +)
let target = sum - 100

for i in 0...8 {
    if let index = arr.firstIndex(where: { $0 + arr[i] == target }),
       index != i {
        arr.remove(at: i)
        arr.remove(at: index)
        break
    }
}

print(arr.sorted { $0 < $1 }.map(String.init).joined(separator: "\n"))

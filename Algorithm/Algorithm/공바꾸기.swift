//
//  BOJ10813.swift
//  Algorithm - 공 바꾸기
//
//  Created by Rowan on 2023/11/09.
//

let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
let n = input[0]
let m = input[1]
var arr: [String] = {
   var array: [String] = []
   for index in 1...n {
       array.append(String(index))
   }
   return array
}()

func change(i: Int, j: Int) {
    let buffer = arr[i-1]
    arr[i-1] = arr[j-1]
    arr[j-1] = buffer
}

for _ in 1...m {
    let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
    change(i: input[0], j: input[1])
}

print(arr.joined(separator: " "))

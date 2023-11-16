//
//  BOJ1874.swift
//  Algorithm
//
//  Created by Erick on 2023/11/14.
//  스택 수열: https://www.acmicpc.net/problem/1874
//

// MARK: - 풀이 1
//var n = Int(readLine()!)!
//var numList = Array(1...n).reversed().compactMap(Int.init)
//var stack: [Int] = []
//var result: [String] = []
//
//for _ in 1...n {
//    let input = Int(readLine()!)!
//
//    guard let last = stack.last else {
//        while !numList.isEmpty && !(numList.last == input+1) {
//            stack.append(numList.popLast()!)
//            result.append("+")
//        }
//
//        stack.removeLast()
//        result.append("-")
//        continue
//    }
//
//    if last == input {
//        stack.removeLast()
//        result.append("-")
//    } else if last > input {
//        result.append("NO")
//        continue
//    } else if last < input {
//        if numList.isEmpty {
//            stack.append(input)
//            result.append("+")
//        } else {
//            while !numList.isEmpty && !(numList.last == input+1) {
//                stack.append(numList.popLast()!)
//                result.append("+")
//            }
//        }
//
//        stack.removeLast()
//        result.append("-")
//    }
//}
//
//if result.contains("NO") {
//    print("NO")
//} else {
//    result.forEach {
//        print($0)
//    }
//}

// MARK: - 풀이 2
var numList: [Int] = []
var result = ""
var now = 0
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = Int(readLine()!)!

    if result == "NO" {
        continue
    }

    if now <= input {
        for i in now+1...input {
            numList.append(i)
            result += "+\n"
        }

        now = numList.removeLast()
        result += "-\n"
    } else if numList.last! == input {
        numList.removeLast()
        result += "-\n"
    } else {
        result = "NO"
    }
}

print(result)

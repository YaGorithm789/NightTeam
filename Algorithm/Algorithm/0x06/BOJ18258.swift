//
//  BOJ18258.swift
//  Algorithm
//
//  Created by Erick on 2023/11/18.
//  큐2: https://www.acmicpc.net/problem/18258
//

import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)]
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        while now == 10
                || now == 32 { now = read() }
        if now == 45{ isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        while now == 10
                || now == 32 { now = read() }

        while now != 10
                && now != 32 && now != 0 {
            str += Int(now)
            now = read()
        }
        return str
    }
}

func stringToAscii(_ str: String) -> Int {
    return str.map { $0.asciiValue! }.map { Int($0) }.reduce(0) {$0 + $1}
}

struct Queue {
    private var frontStack: [Int] = []
    private var backStack: [Int] = []
    
    var count = 0
    
    var first: Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return -1
        } else if frontStack.isEmpty {
            return backStack.first!
        } else {
            return frontStack.last!
        }
    }
    
    var last: Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return -1
        } else if backStack.isEmpty {
            return frontStack.first!
        } else {
            return backStack.last!
        }
    }
    
    var isEmpty: Bool {
        return frontStack.isEmpty && backStack.isEmpty
    }
    
    mutating func push(_ num: Int) {
        backStack.append(num)
        count += 1
    }
    
    mutating func pop() -> Int {
        if frontStack.isEmpty && backStack.isEmpty {
            return -1
        } else if frontStack.isEmpty {
            frontStack = backStack.reversed()
            backStack = []
            count -= 1
            return frontStack.popLast()!
        } else {
            count -= 1
            return frontStack.popLast()!
        }
    }
}

let front = stringToAscii("front")
let empty = stringToAscii("empty")
let back = stringToAscii("back")
let size = stringToAscii("size")
let pop = stringToAscii("pop")

let fileIO = FileIO()
let n = fileIO.readInt()
var queue = Queue()
var result: [Int] = []

for _ in 1...n {
    let input = fileIO.readString()

    switch input {
    case pop:
        result.append(queue.pop())
    case size:
        result.append(queue.count)
    case empty:
        result.append(queue.isEmpty ? 1 : 0)
    case front:
        result.append(queue.first)
    case back:
        result.append(queue.last)
    default:
        queue.push(fileIO.readInt())
    }
}

print(result.map { String($0) }.joined(separator: "\n"))

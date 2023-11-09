//
//  lecture03.swift
//  Algorithm
//
//  Created by Rowan on 2023/11/05.
//

/*
배열의 자료구조로써 성질
 1. O(1)에 k번째 원소를 확인/변경 가능
 2. 추가적으로 소모되는 메모리의 양(=overhead)가 거의 없음
 3. Cache hit rate가 높음
 4. 메모리 상에 연속한 구간을 잡아야 해서 할당에 제약이 걸림
*/

// 연습문제 1. BOJ 10808: 알파벳 개수
let input = readLine()!
var countArr: [Int] = .init(repeating: 0, count: 26)

for char in input {
    let index = Int(char.asciiValue!) - 97
    countArr[index] += 1
}

print(countArr.map { String($0) }.joined(separator: " "))

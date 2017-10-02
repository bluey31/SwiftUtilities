//
//  Array+removeDuplicates.swift
//
//  Created by Brendon Warwick on 14/03/2017.
//  Removes duplicates from Array's.
//

extension Array where Element:Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()

        for value in self {
            if !result.contains(value) {
                result.append(value)
            }
        }

        return result
    }
}

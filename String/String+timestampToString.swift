//
//  String+timestampToString.swift
//
//  Created by Brendon Warwick on 13/05/2017.
//  Converts a UNIX server timestamp to a String.
//

import Foundation

extension String {
    // Timestamp in form YYYYMMDDHHMMSS
    func timestampToString() -> String {
        let sa = Array(self.characters)
        // Makes sure we are using a correct timestamp to be converted
        if sa.count == 14 {
            let year = "\(sa[0])\(sa[1])\(sa[2])\(sa[3])"
            let month = "\(sa[4])\(sa[5])"
            let day = "\(sa[6])\(sa[7])"
            let hour = "\(sa[8])\(sa[9])"
            let minute = "\(sa[10])\(sa[11])"
            return "\(day)/\(month)/\(year) \(hour):\(minute)"
        }
        return self
    }
}

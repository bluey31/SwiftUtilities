//
//  String+removeTrailingNewlines.swift
//
//  Created by Brendon Warwick on 13/05/2017.
//  Removes trailing newlines from strings.
//

import Foundation

extension String {
    /// Removes unecessary newlines at the end of a string
    func removeTrailingNewLines() -> String{
        var strCharacters = Array(self.characters)
        while(strCharacters.last == "\n"){
            strCharacters.remove(at: strCharacters.count-1)
        }
        return String(strCharacters)
    }
}

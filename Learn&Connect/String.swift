//
//  String.swift
//  Connect
//
//  Created by Sara Mandic on 2/1/20.
//  Copyright © 2020 hacksc. All rights reserved.
//

import Foundation

extension String{
    static func randomNumber(length: Int) -> String
{
    var result = ""

    for _ in 0..<length {
        let digit = Int.random(in: 0...9)
        result += "\(digit)"
    }

    return result
}
  
    
    
    
    
    
    
    
}



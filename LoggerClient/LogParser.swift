//
//  LogParser.swift
//  LoggerClient
//
//  Created by Mauro Gonzalez on 11/11/15.
//  Copyright © 2015 Mauro Gonzalez. All rights reserved.
//

import Foundation


public func onParseToJson(log : Log)->String{

    var json:String = ""
    
    
    
    json = "{\"id\":\"\(log.getId())\",\"type\":\(log.getType()),\"time\":\(log.getTime()),\"message\":\"\(log.getMessage())\"}"
    
    return json
}
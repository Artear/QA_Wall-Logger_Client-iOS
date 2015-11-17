//
//  RemoteLogger.swift
//  LoggerClient
//
//  Created by Mauro Gonzalez on 11/12/15.
//  Copyright © 2015 Mauro Gonzalez. All rights reserved.
//

import Foundation

public class RemoteLogger{

    var url:String
    
    public init(url: String){
    
        self.url = url
        
    }
    
    
    public func send(log : Log){
        
        print("Enviando: \(log.toJsonString())")
        
        let request = NSMutableURLRequest(URL: NSURL(string: self.url)!)
        
        request.HTTPBody = log.toJson()
        request.HTTPMethod = "POST"
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil {
                print("error=\(error)")
                return
            }
            
            print("response = \(response)")
            
            let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            print("responseString = \(responseString)")
        }
        task.resume()
    }
    
}
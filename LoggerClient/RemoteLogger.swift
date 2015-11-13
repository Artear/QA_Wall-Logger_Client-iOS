//
//  RemoteLogger.swift
//  LoggerClient
//
//  Created by Mauro Gonzalez on 11/12/15.
//  Copyright © 2015 Mauro Gonzalez. All rights reserved.
//

import Foundation

public class RemoteLogger{

    
    
    
    // MARK: - Singleton Pattern
    
    class var sharedInstance: RemoteLogger {
        
        struct Singleton {
            static let instance = RemoteLogger()
        }
        
        return Singleton.instance
    }
    
    
    
    
    public class func send(log : Log){
        
        NSJSONSerialization
        
        print("Enviando: \(log.toJsonString())")
        
        let url:String = "http://www.tn.com.ar"
        
        let request = NSMutableURLRequest(URL: NSURL(string: url)!)
        
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
//
//  Log.swift
//  LoggerClient
//
//  Created by Mauro Gonzalez on 11/11/15.
//  Copyright © 2015 Mauro Gonzalez. All rights reserved.
//

import Foundation

public class Log : Serializable{

    public enum TypeService : Int{
    
        case PERIOD_START, PERIOD_END, EVENT
        
    }
    
    private var id:String = ""
    private var typeService:TypeService
    private var time:CLong = 0
    private var message:String = ""
    
    /**
     * @param id      String representing the event (ie: if you are sending a START-END event, both of them will be tied by this id)
     * @param type    {@link Type Type} indicating the log type;
     * @param time    Epoch (milliseconds since 1 jan 1970) when the period start;
     * @param message a message to identify the com.qa_wall_logger_client.log;
     */
    
    public init(let id:String,let type:TypeService,time:CLong,message:String){
    
        self.id = id
        self.typeService = type
        self.time = time
        self.message = message
        
    }

    
    public func getId() ->String{
    
        return self.id
    
    }
    
    public func getType() ->TypeService{
        
        return self.typeService
        
    }

    public func getTime() ->CLong{
        
        return self.time
        
    }

    public func getMessage() ->String{
        
        return self.message
        
    }

}
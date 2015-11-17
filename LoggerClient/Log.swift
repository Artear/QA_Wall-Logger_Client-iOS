//
//  Log.swift
//  LoggerClient
//
//  Created by Mauro Gonzalez on 11/11/15.
//  Copyright © 2015 Mauro Gonzalez. All rights reserved.
//

import Foundation

public class Log : Serializable{

    public enum TypeService : String{
    
        case PERIOD_START, PERIOD_END, EVENT
        
    }
    
    private var id:String = ""
    private var deviceId:String = ""
    private var typeService:String
    private var time:CLong = 0
    private var message:String = ""
    
    /**
     * @param id        String representing the event (ie: if you are sending a START-END event, both of them will be tied by this id)
     * @param deviceId  String representing the device that is sending
     * @param type      {@link Type Type} indicating the log type;
     * @param time      Epoch (milliseconds since 1 jan 1970) when the period start;
     * @param message   a message to identify the com.qa_wall_logger_client.log;
     */
    
    public init(let id:String, deviceId:String, let type:TypeService,time:CLong,message:String){
    
        self.id = id
        self.deviceId = deviceId
        self.typeService = type.rawValue
        self.time = time
        self.message = message
        
    }

    
    public func getId() ->String{
    
        return self.id
    
    }
    
    public func getDeviceId() ->String{
        
        return self.deviceId
        
    }

    
    public func getType() ->String{
        
        return self.typeService
        
    }

    public func getTime() ->CLong{
        
        return self.time
        
    }

    public func getMessage() ->String{
        
        return self.message
        
    }

}
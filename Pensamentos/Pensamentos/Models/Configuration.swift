//
//  Configuration.swift
//  Pensamentos
//
//  Created by Vinicius Loss on 29/01/23.
//

import Foundation

enum userDefaultsKeys: String {
    case timeInterval = "timeInterval"
    case colorScheme = "colorScheme"
    case autorefresh = "autorefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double{
        get {
            return defaults.double(forKey: userDefaultsKeys.timeInterval.rawValue)
        }
        set{
            defaults.set(newValue, forKey: userDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    var colorScheme: Int{
        get {
            return defaults.integer(forKey: userDefaultsKeys.colorScheme.rawValue)
        }
        set{
            defaults.set(newValue, forKey: userDefaultsKeys.colorScheme.rawValue)
        }
    }
    
    var autorefresh: Bool{
        get {
            return defaults.bool(forKey: userDefaultsKeys.autorefresh.rawValue)
        }
        set{
            defaults.set(newValue, forKey: userDefaultsKeys.autorefresh.rawValue)
        }
    }
    
    
    private init(){
        
        if defaults.integer(forKey: userDefaultsKeys.timeInterval.rawValue)  == 0 {
            defaults.set(8.0, forKey: userDefaultsKeys.timeInterval.rawValue)
        }
        
    }
    
}
 

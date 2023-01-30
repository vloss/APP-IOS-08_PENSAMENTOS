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
            return defaults.double(forKey: userDefaultsKeys.colorScheme.rawValue)
        }
        set{
            defaults.set(newValue, forKey: userDefaultsKeys.colorScheme.rawValue)
        }
    }
    var timeInterval: Double{
        get {
            return defaults.double(forKey: userDefaultsKeys.timeInterval.rawValue)
        }
        set{
            defaults.set(newValue, forKey: userDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    
    private init(){
        
    }
    
}
 

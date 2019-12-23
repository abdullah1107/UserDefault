//  UserDefault+Extention.swift
//  UserDefaultExp
//  Created by Muhammad Abdullah Al Mamun on 18/12/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.


import Foundation

extension UserDefaults{
    
    func setValueForSwitch(value:Bool?){
        
        if value != nil{
            
            UserDefaults.standard.set(value, forKey: "Switch_state")
        }
        else{
            
            UserDefaults.standard.removeObject(forKey: "Switch_state")
        }
        
        UserDefaults.standard.synchronize()
    }
    
    
    func getValueofSwitch()->Bool?{
        return UserDefaults.standard.value(forKey: "Switch_state") as? Bool
    }
}

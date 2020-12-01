//
//  AppInfo.swift
//  word
//
//  Created by Rollin on 2020/12/1.
//  Copyright © 2020年 rulinma. All rights reserved.
//

import Foundation


class AppInfo {
    
    static func getSoftwareVersion() ->  String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "Version Number Not Available"
    }
    
}

extension Bundle {
    
    class var applicationVersionNumber: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "Version Number Not Available"
    }
    
    class var applicationBuildNumber: String {
        if let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return build
        }
        return "Build Number Not Available"
    }
    
}

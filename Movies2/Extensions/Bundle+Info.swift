//
//  Bundle+Info.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import Foundation

extension Bundle {
    
    var displayName: String? {
        return object(forInfoDictionaryKey: "CFBundleName") as? String
    }
    
    var version: String? {
        return object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    var build: String? {
        return object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
    var copyright: String? {
       return object(forInfoDictionaryKey: "NSHumanReadableCopyright") as? String
    }
}

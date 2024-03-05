//
//  Profile.swift
//  Landmarks
//
//  Created by Pedro Delmondes  on 01/03/2024.
//

import Foundation

struct Profile {
    var username: String
    var preferesNotificaions = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "p_delmondes")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}




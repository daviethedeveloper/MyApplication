//
//  FontStyles.swift
//  FigmaToCode
//
//  Created by daviethdev on 1/20/23.
//

import Foundation
import SwiftUI


extension Font {
    
    static var navTitle: Font{
        return Font.custom("Inter-Bold", size: 17)
    }
    
    static var taskText: Font{
        return Font.custom("Inter-SemiBold", size: 14)
    }
    
    static var taskAlarmText: Font{
        return Font.custom("Inter-SemiBold", size: 12)
    }
    
}

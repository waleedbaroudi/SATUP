//
//  Colors.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
import UIKit
class Colors{
    static var isDark = false;
    private static let lightPrimary: UIColor = #colorLiteral(red: 0.3514433205, green: 0.5455555916, blue: 0.6222632527, alpha: 1)
    private static let lightSecondary: UIColor = #colorLiteral(red: 1, green: 0.7401471734, blue: 0, alpha: 1)
    private static let lightTertiary: UIColor = #colorLiteral(red: 0.966457665, green: 0.9375386238, blue: 0.7693856359, alpha: 1)
    private static let lightText: UIColor = #colorLiteral(red: 0.9009854198, green: 0.9061080813, blue: 0.8669928908, alpha: 1)
    private static let lightBorder: UIColor = #colorLiteral(red: 0.2355021834, green: 0.4021787941, blue: 0.5100710392, alpha: 1)
    private static let darkPrimary: UIColor = #colorLiteral(red: 0.9009854198, green: 0.9061080813, blue: 0.8669928908, alpha: 1)
    private static let darkSecondary: UIColor = #colorLiteral(red: 0.9009854198, green: 0.9061080813, blue: 0.8669928908, alpha: 1)
    private static let darkTertairy: UIColor = #colorLiteral(red: 0.9009854198, green: 0.9061080813, blue: 0.8669928908, alpha: 1)
    private static let darkText: UIColor = #colorLiteral(red: 0.9009854198, green: 0.9061080813, blue: 0.8669928908, alpha: 1)
    private static let darkBorder: UIColor = #colorLiteral(red: 0.270979166, green: 0.4506219029, blue: 0.5718773007, alpha: 1)
    
    static func toggleDark(){
        isDark = !isDark
    }
    
    static func primaryColor() -> UIColor{
        if isDark {return darkPrimary}
        return lightPrimary
    }
    
    static func secondaryColor() -> UIColor{
        if isDark {return darkSecondary}
        return lightSecondary
    }
    
    static func tertiaryColor() -> UIColor{
        if isDark {return darkTertairy}
        return lightTertiary
    }
    
    static func textColor() -> UIColor{
        if isDark {return darkText}
        return lightText
    }
    
    static func borderColor() -> UIColor{
        if isDark {return darkBorder}
        return lightBorder
    }
}

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
    
    
    private static let questionSelected: UIColor = #colorLiteral(red: 0.581476748, green: 0.6084197164, blue: 0.5917012095, alpha: 1)
    private static let wrongAnswer: UIColor = #colorLiteral(red: 0.9590492845, green: 0.1828987002, blue: 0.2148449123, alpha: 1)
    private static let correctAnswer: UIColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    
    private static let lightPrimary: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    private static let lightSecondary: UIColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
    private static let lightTertiary: UIColor = #colorLiteral(red: 0.3525682688, green: 0.6153787971, blue: 0.7827124, alpha: 1)
    private static let lightText: UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    private static let lightBorder: UIColor = #colorLiteral(red: 0.2355021834, green: 0.4021787941, blue: 0.5100710392, alpha: 1)
    
    private static let darkPrimary: UIColor = #colorLiteral(red: 0.2137661278, green: 0.2610993385, blue: 0.3681392074, alpha: 1)
    private static let darkSecondary: UIColor = #colorLiteral(red: 0.187959671, green: 0.2495875359, blue: 0.3133328557, alpha: 1)
    private static let darkTertairy: UIColor = #colorLiteral(red: 0.3129273653, green: 0.3823279738, blue: 0.5389671326, alpha: 1)
    private static let darkText: UIColor = #colorLiteral(red: 0.9009854198, green: 0.9061080813, blue: 0.8669928908, alpha: 1)
    private static let darkBorder: UIColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
    
    private static let cardTextColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    static func toggleDark(){
        isDark = !isDark
    }
    // Questions colors
    static func questionaSelectedColor() -> UIColor{
        return questionSelected
    }
    static func answerIsWrong() -> UIColor{
          return wrongAnswer
      }
    static func answerIsCorrect() -> UIColor{
          return correctAnswer
      }
    
    static func cardsTextColor() -> UIColor{
        return cardTextColor
    }
    //Theme colors
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

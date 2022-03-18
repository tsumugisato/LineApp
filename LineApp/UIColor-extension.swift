//
//  UIColor-extension.swift
//  LineApp
//
//  Created by 佐藤紬 on 2022/03/17.
//

import UIKit

extension UIColor{
    static func rgb(red:CGFloat,green:CGFloat,blue:CGFloat) -> UIColor{
        return self.init(red: red/255, green: green/255, blue: blue/255, alpha:1)
        
    }
}

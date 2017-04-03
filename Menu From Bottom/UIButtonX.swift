//
//  UIButtonX.swift
//  Menu From Bottom
//
//  Created by Yawo Echitey on 4/3/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

@IBDesignable
class UIButtonX: UIButton {
    
    @IBInspectable
    var _border : CGFloat = 0{
        didSet{
            self.layer.borderWidth = _border
        }
    }
    
    @IBInspectable
    var _borderColor : UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = _borderColor.cgColor
        }
    }
    
    @IBInspectable
    var _cornerRadius : CGFloat = 0{
        didSet{
            self.layer.cornerRadius = _cornerRadius
        }
    }

}

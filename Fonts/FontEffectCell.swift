//
//  FontEffectCell.swift
//  Fonts
//
//  Created by ZHK on 2017/8/14.
//  Copyright © 2017年 ZHK. All rights reserved.
//

import UIKit

class FontEffectCell: UITableViewCell {
    var _fontName: String = ""
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    var fontName: String {
        set(newFontName) {
            _fontName = newFontName
            textLabel?.text = _fontName
            textLabel?.font = UIFont.init(name: _fontName, size: 15)
        }
        get {
            return _fontName
        }
    }
    
}

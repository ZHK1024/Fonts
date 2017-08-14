//
//  FontEffectViewController.swift
//  Fonts
//
//  Created by ZHK on 2017/8/14.
//  Copyright © 2017年 ZHK. All rights reserved.
//

import UIKit

class FontEffectViewController: ViewController {
    
    var fontName: String = ""
    

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = fontName
        
        let font = UIFont.init(name: fontName, size: 15)
        
        textView.font = font
        
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.borderWidth = 0.5
        textView.layer.cornerRadius = 5.0

//        print(textView.contentOffset)
        textView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0)
//        textView.contentOffset = CGPointFromString("{0, -64}")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

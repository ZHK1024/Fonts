//
//  FontEffectViewController.swift
//  Fonts
//
//  Created by ZHK on 2017/8/14.
//  Copyright © 2017年 ZHK. All rights reserved.
//

import UIKit

class FontEffectViewController: ViewController, UITextViewDelegate {
    
    var fontName: String = ""
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = fontName
        
        let font = UIFont.init(name: fontName, size: 15)
        
        textView.font = font

        backView.layer.borderColor = UIColor.gray.cgColor
        backView.layer.borderWidth = 1.0
        backView.layer.cornerRadius = 5.0

        textView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0)
        textView.scrollIndicatorInsets = UIEdgeInsetsMake(-64, 0, 0, 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        backView.layer.borderWidth = 1.5
        backView.layer.borderColor = UIColor.init(colorLiteralRed: 39 / 255.0, green: 45 / 255.0, blue: 112 / 255.0, alpha: 0.7).cgColor
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        backView.layer.borderWidth = 1.0
        backView.layer.borderColor = UIColor.gray.cgColor
    }
}

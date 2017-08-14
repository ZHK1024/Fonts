//
//  ViewController.swift
//  Fonts
//
//  Created by ZHK on 2017/8/14.
//  Copyright © 2017年 ZHK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var names: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("HomeTitle", comment: "Fonts")
        
        let familtNames = UIFont.familyNames;
        for familyName: String in familtNames {
            names.append(contentsOf: UIFont.fontNames(forFamilyName: familyName))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: UITableView dataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FontEffectCell;
        cell.fontName = names[indexPath.row];
        return cell;
    }
    
    // MARK: UITableView delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let effectVC = storyboard?.instantiateViewController(withIdentifier: "FontEffectViewController") as! FontEffectViewController
        effectVC.fontName = names[indexPath.row];
        navigationItem.leftBarButtonItem?.title = ""
        navigationController?.pushViewController(effectVC, animated: true);
    }
}


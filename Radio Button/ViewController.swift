//
//  ViewController.swift
//  Radio Button
//
//  Created by Nahin Ahmed Ltd on 2/28/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // All the radio buttons of RadioButton type
    
    @IBOutlet weak var mRadioBtn: RadioButton!
    @IBOutlet weak var wRadioBtn: RadioButton!
    
    @IBOutlet weak var lbl: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Alternating radio buttons
        
        mRadioBtn.alternateButton = [wRadioBtn]
        wRadioBtn.alternateButton = [mRadioBtn]
    }
    
    
    override func awakeFromNib() {
        self.view.layoutIfNeeded()
    }
    
    @IBAction func currentSelectedBtnTapped(_ sender: UIButton) {
        print("is M selected? M:\(mRadioBtn.isSelected), is W selected? W:\(wRadioBtn.isSelected)")
        lbl.text = "M: \(mRadioBtn.isSelected), W: \(wRadioBtn.isSelected)"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


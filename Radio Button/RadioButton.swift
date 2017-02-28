//
//  RadioButton.swift
//  Radio Button
//
//  Created by Nahin Ahmed Ltd on 2/28/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit

class RadioButton: UIButton {

    var alternateButton:Array<RadioButton>?
    
    override func awakeFromNib() {
        
        //Radio buttons round
        
        self.layer.cornerRadius = frame.size.height/2
        self.layer.masksToBounds = true
    }
    
    func unselectAlternateButtons(){
        if alternateButton != nil {
            self.isSelected = true
            for aButton:RadioButton in alternateButton! {
                aButton.isSelected = false
            }
        } else {
           toggleButton()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unselectAlternateButtons()
        super.touchesBegan(touches, with: event)
    }
    
    func toggleButton(){
        self.isSelected = !isSelected
    }
    
    override var isSelected: Bool {
        didSet{
            if isSelected{
                
                // If button is selected
                
                self.layer.borderColor = UIColor.white.cgColor
                self.layer.backgroundColor = UIColor.blue.cgColor
                self.layer.borderWidth = 5.0
                
            } else {
                self.layer.backgroundColor = UIColor.white.cgColor
            }
        }
    }
}

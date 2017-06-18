//
//  ViewController.swift
//  MindwaveHueApp
//
//  Created by Melissa on 6/18/17.
//  Copyright © 2017 Melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    //MARK: Properties
    
    

    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var userNum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        //self.userNum.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func setBackground() {
        let userNumVal = CGFloat(Float(userNum.text!)!);
        let rgbVal = 255 - (userNumVal * 255) / 100
        self.view.backgroundColor = UIColor(red: 255/255, green: rgbVal/255, blue: rgbVal/255, alpha: 1);
    }
    
    @IBAction func givenNum(_ sender: UITextField) {
        heading.text = "Attention: " + userNum.text!;
        setBackground();
    }
}

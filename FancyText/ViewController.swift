//
//  ViewController.swift
//  FancyText
//
//  Created by mohamed goda on 12/23/17.
//  Copyright © 2017 mohamed goda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shadowButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    var fontSize = 30
    var state = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func enterText(_ sender: Any) {
        label.text = textField.text
        self.resignFirstResponder()
    }
    
    
    @IBAction func red(_ sender: Any) {
        label.textColor = UIColor.red
    }
    @IBAction func blue(_ sender: Any) {
        label.textColor = UIColor.blue
    }
    
    @IBAction func green(_ sender: Any) {
        label.textColor = UIColor.green
    }
    
    @IBAction func font1(_ sender: Any) {
        label.font = UIFont(name: "Blacksword", size: CGFloat(fontSize))
    }
    
    @IBAction func font2(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk", size: CGFloat(fontSize))
    }
    
    
    @IBAction func font3(_ sender: Any) {
        label.font = UIFont(name: "Moon Flower", size: CGFloat(fontSize))
    }
    
    @IBAction func font4(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: CGFloat(fontSize))
    }
    
    @IBAction func shadow(_ sender: Any) {
        if state == false {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width : 2 , height : 2)
        label.layer.shadowRadius = 2
        label.layer.shadowOpacity = 0.25
            state = true
            shadowButton.setTitle("Remove Shadow", for: UIControlState.normal)
           
        }else{
            label.layer.shadowOpacity = 0
            state = false
            shadowButton.setTitle("Set Shadow", for: UIControlState.normal)

        }
    }
    
    @IBAction func small(_ sender: Any) {
        label.font = label.font.withSize(CGFloat(fontSize))
    }
    @IBAction func meduim(_ sender: Any) {
        label.font = label.font.withSize(CGFloat(fontSize + 20))
    }
    
    @IBAction func large(_ sender: Any) {
        label.font = label.font.withSize(CGFloat(fontSize + 50))
    }
    
    
}


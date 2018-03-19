//
//  ViewController.swift
//  WineCellar
//
//  Created by Martina Calluori on 1/22/18.
//  Copyright © 2018 Martina Calluori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var addWine: UIButton!
    
    @IBAction func AddFunc(_ sender: Any) {
        
        let myAlert = UIAlertController(title: "Added", message: "Wine Added", preferredStyle: .alert)
        myAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))

        
        
        self.present(myAlert, animated:true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        let customColor =  UIColor.black

        name.layer.borderWidth = 0.5
        name.layer.borderColor = customColor.cgColor
        name.layer.cornerRadius = 5;
        year.layer.borderWidth = 0.5
        year.layer.borderColor = customColor.cgColor
        year.layer.cornerRadius = 5;
        price.layer.borderWidth = 0.5
        price.layer.borderColor = customColor.cgColor
        price.layer.cornerRadius = 5;
        type.layer.borderWidth = 0.5
        type.layer.borderColor = customColor.cgColor
        type.layer.cornerRadius = 5;
        addWine.layer.borderWidth = 0.5
        addWine.layer.borderColor = customColor.cgColor
        addWine.layer.cornerRadius = 5;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


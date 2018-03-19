//
//  DetailViewController.swift
//  WineCellar
//
//  Created by Martina Calluori on 3/2/18.
//  Copyright © 2018 Martina Calluori. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detImage: UIImageView!
    @IBOutlet weak var detName: UILabel!
    @IBOutlet weak var detKind: UILabel!
    @IBOutlet weak var detYear: UILabel!
    @IBOutlet weak var detPrice: UILabel!
    
    var transImage:String?
    var transName:String?
    var transPrice:String?
    var transKind:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tmpStr = transName {
            detName.text = tmpStr
        }
        if let tmpStr = transImage {
            detImage?.image = UIImage.init(named: tmpStr)
        }
        if let tmpStr = transPrice {
            detPrice?.text = tmpStr
        }
        if let tmpStr = transKind {
            detKind?.text = tmpStr
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  AllViewController.swift
//  WineCellar
//
//  Created by Martina Calluori on 2/4/18.
//  Copyright © 2018 Martina Calluori. All rights reserved.
//

import UIKit

class AllViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myNames:[String] = ["Cavit", "Dreaming Tree", "Sutter Home", "Josh"]
    var myPrices:[String] = ["$14.99", "$16.99", "$12.99", "$17.99"]
    var myThumbnails:[String] = ["cavit", "crush", "sutter", "josh"]
    var myKinds:[String] = ["Pinot Grigio", "Crush", "Cabernet Sauvignon", "Cabernet Sauvignon"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "proCell", for: indexPath) as! CustomViewCell
        
        //        myCell.textLabel?.text = myNames[indexPath.row]
        //        myCell.detailTextLabel?.text = myBdays[indexPath.row]
        //        myCell.imageView?.image = UIImage.init(named: myThumbNails[indexPath.row])
        
        myCell.cusWine?.text = myNames[indexPath.row]
        myCell.cusPrice?.text = myPrices[indexPath.row]
        myCell.cusIcon?.image = UIImage.init(named:myThumbnails[indexPath.row])
        myCell.cusKind?.text = myKinds[indexPath.row]
        
        return myCell
    }
    
    var selName:String = ""
    var selBigImage:String = ""
    var selPrice:String = ""
    var selKind:String = ""
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myNames[indexPath.row])
        
        selName = myNames[indexPath.row]
        selBigImage = myThumbnails[indexPath.row]
        selPrice = myPrices[indexPath.row]
        selKind = myKinds[indexPath.row]
        
        self.performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let detailObj = segue.destination as! DetailViewController
        detailObj.transName = selName
        detailObj.transImage = selBigImage
        detailObj.transPrice = selPrice
        detailObj.transKind = selKind
 
    
}

}

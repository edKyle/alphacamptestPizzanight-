//
//  WriteNameViewController.swift
//  Movie App test
//
//  Created by Kyle on 2016/6/17.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class WriteNameViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var signText: UITextField?
    @IBOutlet weak var signupNameTableView: UITableView!
    @IBAction func signUpSave(sender: AnyObject) {
        
        if signText!.text != ""{
            
            if nameArray.count < 3{
                nameArray.append(signText!.text!)
                signText!.text = ""
                
                signupNameTableView.reloadData()
                
            }else if nameArray.count == 3{
                nameArray.insert(signText!.text!, atIndex: 0)
                nameArray.removeLast()
                signText!.text = ""
                
                signupNameTableView.reloadData()
            }
            
        }else if signText!.text == ""{
                       
            let alert = UIAlertController(title: "OH NO!!", message: "please sign name please", preferredStyle: .Alert)
            let alertAction = UIAlertAction(title: "Sorry, my bad~", style: .Cancel, handler: nil)
            alert.addAction(alertAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
            return
        }
    }
    
    
    var nameArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupNameTableView.delegate = self
        signupNameTableView.dataSource = self
        
        
        signupNameTableView.estimatedRowHeight = 80
        signupNameTableView.rowHeight = UITableViewAutomaticDimension
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "signcell")
        
        cell.backgroundColor = UIColor(red: 255, green: 200, blue: 0, alpha: 0.5)
        
        cell.textLabel?.text = nameArray[indexPath.row]
        
        return cell
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


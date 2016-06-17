//
//  ShowMovieViewController.swift
//  Movie App test
//
//  Created by Kyle on 2016/6/17.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class ShowMovieViewController: UIViewController {

    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showLabel: UILabel!
    
    var showPicture:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showImage.image = UIImage(named: showPicture!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

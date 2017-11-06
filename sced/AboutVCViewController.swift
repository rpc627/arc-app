//
//  aboutVC.swift
//  dra
//
//  Created by Ryan on 10/24/17.
//  Copyright © 2017 Ryan. All rights reserved.
//

import UIKit

protocol AboutVCDelegate: class {
    func aboutViewControllerDidFinish(_ aboutVC: AboutVCViewController)
}
    class AboutVCViewController: UIViewController {
        
        override var prefersStatusBarHidden: Bool {
            return true
        }
        @IBOutlet var popView: UIView!

        @IBAction func back(_ sender:Any) {
        }
       
        override func viewDidLoad() {
        super.viewDidLoad()
        
        popView.layer.cornerRadius = 10
        popView.layer.masksToBounds = true

       
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

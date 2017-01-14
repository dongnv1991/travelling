//
//  LoginViewController.swift
//  Travelling
//
//  Created by Dong Nguyen on 1/14/17.
//  Copyright © 2017 Minh Nhat. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var completionHandler: (()->(Void))?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = MAIN_BACKGROUND_COLOR
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didTouchBtnLogin(_ sender: Any) {
        // check success > complete
        let STORYBOARD_MAIN = UIStoryboard(name: "Main", bundle: nil)
        let tabbar = STORYBOARD_MAIN.instantiateViewController(withIdentifier: "MyTabbarViewController") as! MyTabbarViewController

        UIApplication.shared.keyWindow?.rootViewController = tabbar;
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

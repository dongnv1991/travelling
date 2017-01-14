//
//  MyNavigationViewController.swift
//  Travelling
//
//  Created by Dong Nguyen on 1/14/17.
//  Copyright © 2017 Minh Nhat. All rights reserved.
//

import UIKit

class MyNavigationViewController: UINavigationController, UINavigationControllerDelegate {

    var userBarItem : UIBarButtonItem = UIBarButtonItem()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = MAIN_BACKGROUND_COLOR
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view.
        userBarItem = UIBarButtonItem.init(image: UIImage.init(named: "ic_user"), style: .done, target: self, action: #selector(didTouchBtnUser))
        self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func didTouchBtnUser() {
        let userVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
        let naviVC = MyNavigationViewController.init(rootViewController: userVC)
        self.present(naviVC, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if !viewController.isKind(of: UserViewController.self) {
            viewController.navigationItem.rightBarButtonItem = userBarItem
        }
        
    }
 

}

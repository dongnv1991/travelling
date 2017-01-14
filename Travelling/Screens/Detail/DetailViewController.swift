//
//  DetailViewController.swift
//  Travelling
//
//  Created by Dong Nguyen on 1/14/17.
//  Copyright © 2017 Minh Nhat. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var artwork: UIImageView!

    @IBOutlet weak var tvDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        lbName.text = ""
//        artwork.image = UIImage.init(named: "")
//        tvDetail.text = ""
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

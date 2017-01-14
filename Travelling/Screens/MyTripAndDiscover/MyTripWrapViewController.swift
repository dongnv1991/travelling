//
//  MyTripAndDiscoverViewController.swift
//  Travelling
//
//  Created by Dong Nguyen on 1/14/17.
//  Copyright © 2017 Minh Nhat. All rights reserved.
//

import UIKit
import MXSegmentedPager

class MyTripWrapViewController: MXSegmentedPagerController {

    let header = ["RECENT", "UPCOMING", "FAVORITE"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My trip"
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view.
        segmentedPager.backgroundColor = UIColor.white
        
        // Segmented Control customization
        segmentedPager.segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocation.down;
        segmentedPager.segmentedControl.backgroundColor = MAIN_BACKGROUND_COLOR
        segmentedPager.segmentedControl.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.lightGray, NSFontAttributeName : UIFont.systemFont(ofSize: 15)];
        segmentedPager.segmentedControl.selectedTitleTextAttributes = [NSForegroundColorAttributeName : UIColor.white, NSFontAttributeName : UIFont.systemFont(ofSize: 15)]
        segmentedPager.segmentedControl.selectionIndicatorColor = UIColor.yellow
        segmentedPager.segmentedControl.selectionStyle = HMSegmentedControlSelectionStyle.fullWidthStripe
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func segmentedPager(_ segmentedPager: MXSegmentedPager, titleForSectionAt index: Int) -> String {
        return header[index];
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

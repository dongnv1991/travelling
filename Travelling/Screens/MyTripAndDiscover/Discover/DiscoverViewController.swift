//
//  DiscoverViewController.swift
//  Travelling
//
//  Created by Dong Nguyen on 1/14/17.
//  Copyright © 2017 Minh Nhat. All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    var searchBar : UISearchBar = UISearchBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "Discover"
        
        searchBar = UISearchBar.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 44))
        searchBar.layer.borderColor = MAIN_BACKGROUND_COLOR.cgColor
        searchBar.barTintColor = MAIN_BACKGROUND_COLOR
        searchBar.layer.borderWidth = 1
        searchBar.tintColor = UIColor.white
        //        searchBar.backgroundImage = UIImage.image
        if let textField  = searchBar.value(forKey: "_searchField") as? UITextField {
            textField.backgroundColor = UIColor.white
            textField.textColor = UIColor.black;
            let attributedString = NSAttributedString(string: "Search", attributes: [NSForegroundColorAttributeName : UIColor.white])
            
            textField.attributedPlaceholder = attributedString
        }
        searchBar.delegate = self
        tableView.tableHeaderView = searchBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverTableViewCell", for: indexPath) as! DiscoverTableViewCell
        
//        cell.artwork.image = UIImage.init(named: "")
//        cell.lbDes.text = ""
//        cell.lbName.text = ""
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        self.navigationController?.pushViewController(detailVC, animated: true)
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

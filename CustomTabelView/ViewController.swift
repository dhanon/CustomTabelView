//
//  ViewController.swift
//  CustomTabelView
//
//  Created by Anon's MacBook Pro on 14/8/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var elements = ["চিকেন বিরিয়ানি", "কাচ্চি বিরিয়ানি", "সরিষা ইলিশ", "গরুর মাংস ভুনা", "খাসির মাংস ভুনা", "কাঁচা গোল্লা","সন্দেশ","লাচ্চি"]

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.foodsLabel.text = elements[indexPath.row]
        cell.imagesOfFoods.image = UIImage(named: elements[indexPath.row])
        cell.imagesOfFoods.layer.cornerRadius = cell.imagesOfFoods.frame.height / 2
        
        
        
        return cell
        
        
    }

}


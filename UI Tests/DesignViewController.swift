//
//  ViewController.swift
//  UI Tests
//
//  Created by Jotno on 8/31/23.
//

import UIKit

class DesignViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        
    }


}

extension DesignViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var rand = indexPath.row
        //rand = rand + 1
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        rand = (rand % 4) + 1
        cell.backgroundImage.image = UIImage(named: "gradient\(rand)")
        
        return cell
        
        
    }
    
    
    
    
    
}


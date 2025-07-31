//
//  TableViewController.swift
//  WellDevTraining_Project 4
//
//  Created by Ehsanul Karim on 31/7/25.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websites = ["www.apple.com", "www.hackingwithswift.com","www.facebook.com", "www.youtube.com", "www.yahoo.com"]
    var notAllowedwebsites = ["www.facebook.com", "www.youtube.com", "www.yahoo.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let webVC = ViewController()
        webVC.url = URL(string: "https://" + websites[indexPath.row])
        webVC.notAllowedSites = notAllowedwebsites
        webVC.websites = websites
        navigationController?.pushViewController(webVC, animated: true)
    }

}

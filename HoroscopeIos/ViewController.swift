//
//  ViewController.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var horoscopeTableView: UITableView!
    
    var horoscopeSigns = HoroscopeList().horoscopeList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        horoscopeTableView.delegate = self
        horoscopeTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeSigns.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //let model = horoscopeSigns[indexPath.row]
        //var cell = tableView.dequeueReusableCell(withIdentifier: "HoroscopeTableViewCell", for: indexPath)
        //cell.textLabel?.text = "This is row \(indexPath.row)"
        cell.textLabel?.text = horoscopeSigns[indexPath.row]
        

        return cell
    }
}


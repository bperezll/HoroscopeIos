//
//  ViewController.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Table View object
    @IBOutlet var horoscopeTableView: UITableView!
    
    // Variable to get the horoscope signs
    var horoscopeSigns = HoroscopeList().horoscopeList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initializing delegate and dataSource
        horoscopeTableView.delegate = self
        horoscopeTableView.dataSource = self
        
        // Get the height of the cells (delegate)
        horoscopeTableView.rowHeight = 130
    }
    
    // Display the number of items on the Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeSigns.count
    }

    // Render the items on the Table View
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = horoscopeSigns[indexPath.row]
        
        //let signImage = Horoscope().image
        
        let cell: HoroscopeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HoroscopeTableViewCell
        
        cell.titleLabel.text = item
        //cell.subtitleLabel.text = item
        cell.signImageView.image = UIImage(named: "ic-aries")
        
        return cell
        
    }
    
    // Print horoscope sign names
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(horoscopeSigns[indexPath.row])
    }
    
    // Go to individual sign details
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = horoscopeTableView.indexPathForSelectedRow
        
        if (indexPath != nil) {
            print("segue: selected row \(indexPath!.row)")
        }
    }
}


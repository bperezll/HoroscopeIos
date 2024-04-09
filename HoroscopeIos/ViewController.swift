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
        
        // Constant variable to access the horoscope sign fields
        let item = horoscopeSigns[indexPath.row]
        
        // Constant variable creation connected to identifier
        let cell: HoroscopeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HoroscopeTableViewCell
        
        // Accessing the horoscope sign fields
        cell.titleLabel.text = item.name
        cell.subtitleLabel.text = item.date
        cell.signImageView.image = UIImage(named: item.image)
        
        return cell
        
    }
    
    // Print horoscope sign names
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Print signs on console
        print(horoscopeSigns[indexPath.row])
        
        // On return to the list, deselected the visited sign
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Go to individual sign details
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // If is not null the index path, continue with code
        guard let indexPath = horoscopeTableView.indexPathForSelectedRow else {
            print("No horoscope selected")
            return
        }
        
        // Assign constant variable horoscope to the signs
        let horoscope = horoscopeSigns[indexPath.row]
        
        // Assign constant variable to HoroscopeDetailViewController and segue the destination
        let viewController: HoroscopeDetailViewController = segue.destination as! HoroscopeDetailViewController
        
        viewController.horoscope = horoscope
    }
}


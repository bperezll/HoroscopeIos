//
//  HoroscopeDetailControllerViewController.swift
//  HoroscopeIos
//
//  Created by Mañanas on 9/4/24.
//

import UIKit

class HoroscopeDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.title = HoroscopeList().horoscopeList
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

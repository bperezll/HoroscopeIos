//
//  HoroscopeDetailControllerViewController.swift
//  HoroscopeIos
//
//  Created by Mañanas on 9/4/24.
//

import UIKit

class HoroscopeDetailViewController: UIViewController {

    // Available navigation title after add custom class on controller settings
    @IBOutlet var navigationTitle: UINavigationItem!
    
    // Detail image view for zodiac signs
    @IBOutlet var detailImageView: UIImageView!
    
    // Label for zodiac sign dates on detail view
    @IBOutlet var dateLabel: UILabel!
    
    // Text View to load sign data from the API
    @IBOutlet var signDataTextView: UITextView!
    
    // Declaration of variable horoscope of type Horoscope as null
    var horoscope: Horoscope? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Detail View Controller title asigned to horoscope sign name
        navigationTitle.title = horoscope?.name
        
        // Sign image for the detail view
        detailImageView.image = UIImage(named: horoscope!.image)
        
        // Date label for the detail view
        dateLabel.text = horoscope?.date
        
        
        //signDataTextView.text = fetchHoroscopeFromApi(horoscopeId: horoscope!.id)
    }
}

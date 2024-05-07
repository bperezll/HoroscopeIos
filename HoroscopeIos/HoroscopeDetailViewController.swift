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
    
    // Favorite button
    @IBOutlet var favoriteButtonItem: UIBarButtonItem!
    
    // Declaration of variable horoscope to recieve data from the segue, of type Horoscope, as null
    var horoscope: Horoscope? = nil
    
    // Boolean for the favorite button
    var isFavorite: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Save favorite button state with UserDefaults
        let favoriteHoroscope = UserDefaults.standard.string(forKey: "FAVORITE_HOROSCOPE") ?? ""
        isFavorite = horoscope?.id == favoriteHoroscope
        
        // Load function to set favorite sign
        setFavoriteButtonItem()

        // Detail View Controller title asigned to horoscope sign name
        navigationItem.title = horoscope?.name
        
        // Sign image for the detail view
        detailImageView.image = UIImage(named: horoscope!.image)
        
        // Date label for the detail view
        dateLabel.text = horoscope?.date
        
        // Load function to get text from API
        getHoroscopeLuck()
    }
    
    // Set favorite sign and store with UserDefaults
    @IBAction func setFavorite(_ sender: UIBarButtonItem) {
        isFavorite = !isFavorite
        if (isFavorite) {
            UserDefaults.standard.setValue(horoscope?.id, forKey: "FAVORITE_HOROSCOPE")
        } else {
            UserDefaults.standard.setValue("", forKey: "FAVORITE_HOROSCOPE")
        }
        setFavoriteButtonItem()
    }
    
    // Setting the state of the favorite button
    func setFavoriteButtonItem() {
        if (isFavorite) {
            favoriteButtonItem.image = UIImage(systemName: "heart.fill")
        } else {
            favoriteButtonItem.image = UIImage(systemName: "heart")
        }
    }
    
    // Get API field text to signDataTextView
    func getHoroscopeLuck() {
        Task {
            do {
                let luck = try await fetchHoroscopeFromApi(horoscopeId: horoscope!.id)
                signDataTextView.text = luck
            } catch {
                print(error)
            }
        }
    }
    
    // Intentar que navegue entre signos con los dos botones
    @IBAction func prevSignButton(_ sender: UIButton) {
        //HoroscopeList().horoscopeList[currentIndex - 1]
    }
    
    @IBAction func nextSignButton(_ sender: UIButton) {
        
    }
}

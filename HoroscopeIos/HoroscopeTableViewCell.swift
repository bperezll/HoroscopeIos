//
//  HoroscopeTableViewCell.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

class HoroscopeTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var signImageView: UIImageView!
    @IBOutlet var favoriteButton: UIButton!
    
    // Display favorite button in the sign row
    func favoriteRow(horoscope: Horoscope) {
            
        let favoriteHoroscope = UserDefaults.standard.string(forKey: "FAVORITE_HOROSCOPE") ?? ""
        let isFavorite = horoscope.id == favoriteHoroscope
            
        favoriteButton.isHidden = !isFavorite
    }
}

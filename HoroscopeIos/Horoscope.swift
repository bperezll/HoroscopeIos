//
//  Horoscope.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

class HoroscopeList {
    var horoscopeList: Array = ["Aries",
                                "Taurus",
                                "Gemini",
                                "Cancer",
                                "Leo",
                                "Virgo",
                                "Libra",
                                "Scorpio",
                                "Sagittarius",
                                "Capricorn",
                                "Aquarius",
                                "Pisces"]
}

struct HoroscopeResponse : Decodable {
    let data: [Horoscope]
}

struct Horoscope: Decodable {
    let id: String
    let name: String
    let image: String
    let date: String
    let signData: String
}

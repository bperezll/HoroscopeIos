//
//  Horoscope.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

class HoroscopeList {
    
    // Array of the struct Horoscope
    var horoscopeList: [Horoscope] = [
        Horoscope(id: "aries", name: "Aries", image: "ic-aries", date: "March 21 – April 19", signData: ""),
        Horoscope(id: "taurus", name: "Taurus", image: "ic-taurus", date: "April 20 – May 20", signData: ""),
        Horoscope(id: "gemini", name: "Gemini", image: "ic-gemini", date: "May 21 – June 20", signData: ""),
        Horoscope(id: "cancer", name: "Cancer", image: "ic-cancer", date: "June 21 – July 22", signData: ""),
        Horoscope(id: "leo", name: "Leo", image: "ic-leo", date: "July 23 – August 22", signData: ""),
        Horoscope(id: "virgo", name: "Virgo", image: "ic-virgo", date: "August 23 – September 22", signData: ""),
        Horoscope(id: "libra", name: "Libra", image: "ic-libra", date: "September 23 – October 22", signData: ""),
        Horoscope(id: "scorpio", name: "Scorpio", image: "ic-scorpio", date: "October 23 – November 21", signData: ""),
        Horoscope(id: "sagittarius", name: "Sagittarius", image: "ic-sagittarius", date: "November 22 – December 21", signData: ""),
        Horoscope(id: "capricorn", name: "Capricorn", image: "ic-capricorn", date: "December 22 – January 19", signData: ""),
        Horoscope(id: "aquarius", name: "Aquarius", image: "ic-aquarius", date: "January 20 – February 18", signData: ""),
        Horoscope(id: "pisces", name: "Pisces", image: "ic-pisces", date: "February 19 – March 20", signData: "")
    ]
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

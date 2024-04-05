//
//  HoroscopeProvider.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

func fetchHoroscopeFromApi(horoscopeId: String) async throws -> [Horoscope] {
    let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(horoscopeId)&day=TODAY")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let decoded = try JSONDecoder().decode(HoroscopeResponse.self, from: data)
    return decoded.data
}

//
//  HoroscopeProvider.swift
//  HoroscopeIos
//
//  Created by Mañanas on 5/4/24.
//

import UIKit

// async: hilo secundario; await: los async se llaman con await
func fetchHoroscopeFromApi(horoscopeId: String) async throws -> String {
    
    var result: String
    
    let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(horoscopeId)&day=TODAY")
    
    guard let url = url else {
        throw RuntimeError("No url provided")
    }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    // Parse automático
    let decoded = try JSONDecoder().decode(HoroscopeResponse.self, from: data)
    
    // Parse a mano
    /*guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
        throw RuntimeError("JSON parse exception")
    }
    
    let jsonData = json["data"] as? [String: String]
    result = jsonData?["horoscope_data"] ?? ""*/
    
    result = decoded.data.horoscope_data
    
    return result
    
    /*let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(horoscopeId)&day=TODAY")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let decoded = try JSONDecoder().decode(HoroscopeResponse.self, from: data)
    return decoded.data*/
}

struct RuntimeError: Error {
    let description: String

    init(_ description: String) {
        self.description = description
    }
}

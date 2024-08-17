//
//  Breed.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

struct CatBreed: Codable, Identifiable {
    let id: String?
    let name: String?
    let origin: String?
    let temperament: String?
    let description: String?
    let lifeSpan: String?
    let image: String?
    var isFavourite: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case origin
        case lifeSpan
        case description
        case temperament
        case image
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        origin = try values.decodeIfPresent(String.self, forKey: .origin)
        lifeSpan = try values.decodeIfPresent(String.self, forKey: .lifeSpan)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        temperament = try values.decodeIfPresent(String.self, forKey: .temperament)
        image = try values.decode(String.self, forKey: .image)
    }
}

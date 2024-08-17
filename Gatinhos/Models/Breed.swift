//
//  Breed.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

struct Breed: Codable, Identifiable {
    
    let id: String?
    let name: String?
    let origin: String?
    let temperament: String?
    let description: String?
    let lifeSpan: String?
    let imageURL: String?
    var isFavourite: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case origin
        case lifeSpan
        case description
        case temperament
        case imageURL
    }
    
    init(id: String? = UUID().uuidString, name: String?, origin: String?, temperament: String?, description: String?, lifeSpan: String?, imageURL: String?, isFavourite: Bool) {
        self.id = id
        self.name = name
        self.origin = origin
        self.temperament = temperament
        self.description = description
        self.lifeSpan = lifeSpan
        self.imageURL = imageURL
        self.isFavourite = isFavourite
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        origin = try values.decodeIfPresent(String.self, forKey: .origin)
        lifeSpan = try values.decodeIfPresent(String.self, forKey: .lifeSpan)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        temperament = try values.decodeIfPresent(String.self, forKey: .temperament)
        imageURL = try values.decode(String.self, forKey: .imageURL)
    }
}

//
//  MockBreedRepository.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

class MockBreedRepository: BreedRepository {
    
    var breeds: [Breed] = Array(repeating: Breed(name: "Gato", origin: "Portugal", temperament: "Fluffy and nice", description: "Nice and cute", lifeSpan: "12 years", imageURL: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg", isFavourite: true), count: 70)
    
    
    func fetchBreedBy(id: String) -> Breed? {
        return breeds.first { $0.id == id } ?? Breed(name: "Gato", origin: "Portugal", temperament: "Fluffy and nice", description: "Nice and cute", lifeSpan: "12 years", imageURL: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg", isFavourite: true)
    }
    
    func fetchBreeds(page: Int?, breedsPerPage: Int?) -> [Breed] {
        return Array(breeds[0..<20])
    }
    
    func toggleFavouriteForBreed(withId id: String) {
        
        if let index = breeds.firstIndex(where: { $0.id == id }) {
            breeds[index].isFavourite.toggle()
        }
    }
}

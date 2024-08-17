//
//  BreedRepository.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

protocol BreedRepository {
    
    func fetchBreedBy(id: String) -> Breed?
    func fetchBreeds(page: Int?, breedsPerPage: Int?) -> [Breed]
    func toggleFavouriteForBreed(withId id: String)
    func getFavourites() -> [Breed]
}

//
//  BreedListViewmodel.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

class BreedListViewmodel: ObservableObject {
    
    private var breedRepository: BreedRepository
    @Published private(set) var breeds: [Breed] = []
    static private let BreedsPerPage = 20
    private var page = 0
    
    init(breedRepository: BreedRepository) {
        self.breedRepository = breedRepository
    }
    
    func fetchBreedBy(id: String) -> Breed? {
        return breedRepository.fetchBreedBy(id: id)
    }
    
    func fetchBreeds(page: Int?, breedsPerPage: Int?) {
        breeds.append(contentsOf: breedRepository.fetchBreeds(page: page, breedsPerPage: BreedListViewmodel.BreedsPerPage))
        self.page += 1
    }
    
    func toggleFavouriteForBreed(withId id: String) {
        return breedRepository.toggleFavouriteForBreed(withId: id)
    }
    
    func getFavourites() -> [Breed] {
        return breedRepository.getFavourites()
    }
}

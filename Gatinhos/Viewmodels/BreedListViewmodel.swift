//
//  BreedListViewmodel.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

class BreedListViewmodel: ObservableObject {
    
    private var breedRepository: BreedRepository
    
    init(breedRepository: BreedRepository) {
        self.breedRepository = breedRepository
    }
}

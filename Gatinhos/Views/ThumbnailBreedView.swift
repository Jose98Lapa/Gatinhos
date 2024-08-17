//
//  ThumbnailBreedView.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import SwiftUI

struct ThumbnailBreedView: View {
    
    var body: some View {
        
        Image("cat")
            .resizable()
            .scaledToFit()
            .cornerRadius(6)
            .overlay {
                ZStack {
                    LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .center)
                    
                    Text("Gato Lindo")
                        .padding(8)
                        .lineLimit(1, reservesSpace: false)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

#Preview {
    ThumbnailBreedView()
}

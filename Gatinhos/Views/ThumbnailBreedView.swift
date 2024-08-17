ZStack {
                            
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
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 6))
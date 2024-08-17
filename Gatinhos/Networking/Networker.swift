//
//  Networker.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import Foundation

class Networker {
    
    func request(endpoint: Endpoint) async -> Result<Data, Error> {
        
        var request = URLRequest(url: endpoint.url, timeoutInterval: 30)
        request.httpMethod = endpoint.method.rawValue
        
        if let APIKey = Bundle.main.infoDictionary?["API_KEY"] as? String {
            request.setValue(APIKey, forHTTPHeaderField: "x-api-key")
        }
        
        if let body = endpoint.body {
            request.httpBody = body
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            return .success(data)
        } catch {
            return .failure(error)
        }
    }
}

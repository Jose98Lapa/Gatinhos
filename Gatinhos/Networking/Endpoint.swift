//
//  Endpoint.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//


import Foundation

protocol Endpoint {
    var url: URL { get set }
    var method: HTTPMethod { get set }
    var contentType: HTTPBodyConfiguration { get set }
    var parameters: [String: Any]? { get set }
    var body: Data? { get set }
}

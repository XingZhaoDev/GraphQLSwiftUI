//
//  Apollo.swift
//  GraphQLSwiftUI
//
//  Created by Xing Zhao on 2022-03-19.
//

import Foundation
import Apollo

class Network {
    
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)
    
    private init() {
        
    }
}

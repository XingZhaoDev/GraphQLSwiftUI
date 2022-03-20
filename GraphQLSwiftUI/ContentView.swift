//
//  ContentView.swift
//  GraphQLSwiftUI
//
//  Created by Xing Zhao on 2022-03-19.
//

import SwiftUI

struct ContentView: View {
    @State var countryEmoji = ""
    
    var body: some View {
        VStack {
            Text(countryEmoji)
        }
        .onAppear {
            Network.shared.apollo.fetch(query: SpecificCountryQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    DispatchQueue.main.async {
                        if let emoji = graphQLResult.data?.country?.emoji {
                            self.countryEmoji = emoji
                        }
                    }
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

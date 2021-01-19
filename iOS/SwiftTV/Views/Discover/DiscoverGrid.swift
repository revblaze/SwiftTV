//
//  DiscoverGrid.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct DiscoverGrid: View {
    var categoryName: String
    var items: [Movie]
    
    let columns = [
            GridItem(.flexible()),
            //GridItem(.flexible()),
            //GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(items) { movie in
                    NavigationLink(destination: MovieDetail(movie: movie)) {
                        DiscoverItem(movie: movie)
                    }
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationTitle(categoryName)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct DiscoverGrid_Previews: PreviewProvider {
    static var movies = ModelData().movies
    
    static var previews: some View {
        DiscoverGrid(
            categoryName: movies[0].category.rawValue,
            items: Array(movies.prefix(6))
        )
    }
}

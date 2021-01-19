//
//  DiscoverRow.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct DiscoverRow: View {
    var categoryName: String
    var items: [Movie]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
                .padding(.bottom, -15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: -15) {
                    ForEach(items) { movie in
                        NavigationLink(destination: MovieDetail(movie: movie)) {
                            DiscoverItem(movie: movie)
                        }
                    }
                }
                .frame(height: 280)
            }
        }
    }
}

struct DiscoverRow_Previews: PreviewProvider {
    static var movies = ModelData().movies
    
    static var previews: some View {
        DiscoverRow(
            categoryName: movies[0].category.rawValue,
            items: Array(movies.prefix(4))
        )
    }
}

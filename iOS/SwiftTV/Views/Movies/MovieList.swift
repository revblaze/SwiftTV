//
//  MovieList.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredMovies: [Movie] {
        modelData.movies.filter { movie in
            (!showFavoritesOnly || movie.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Toggle Saved")
                }

                ForEach(filteredMovies) { movie in
                    NavigationLink(destination: MovieDetail(movie: movie)) {
                        MovieRow(movie: movie)
                    }
                }
            }
            .navigationTitle("Movies")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
            .environmentObject(ModelData())
    }
}

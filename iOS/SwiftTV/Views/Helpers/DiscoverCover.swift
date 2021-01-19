//
//  DiscoverCover.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct DiscoverCover: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: MovieDetail(movie: movie)) {
                CoverImageDetail(image: movie.cover)
            }
        }
    }
}

struct DiscoverCover_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverCover(movie: ModelData().features[0])
    }
}

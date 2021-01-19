//
//  MovieRow.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            movie.poster
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
            Text(movie.name)
                
                Text("\(movie.year) • \(movie.genre)")
                .font(.caption)
                .foregroundColor(.secondary)
            }
            
            Spacer()
            
            if movie.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var movies = ModelData().movies
    
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

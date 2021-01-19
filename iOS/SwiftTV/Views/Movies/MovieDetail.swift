//
//  MovieDetail.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct MovieDetail: View {
    @EnvironmentObject var modelData: ModelData
    var movie: Movie
    
    var movieIndex: Int {
        modelData.movies.firstIndex(where: { $0.id == movie.id })!
    }
    
    var body: some View {
        ScrollView {
            CoverImage(image: movie.cover)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            PosterImageDetail(image: movie.poster)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(movie.name)
                        .font(.title)
                        .fontWeight(.bold)
                    FavoriteButton(isSet: $modelData.movies[movieIndex].isFavorite)
                }

                HStack {
                    VStack {
                        Text("\(movie.year) • \(movie.genre)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Rating(movie: movie)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 0)
                        .padding(.top, 0)
                }
                .padding(.top, -5)
                
                
                Divider()

                Text("Description")
                    .font(.title2)
                Spacer()
                Text(movie.description)
                    .font(.system(size: 14))
            }
            .padding()
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        MovieDetail(movie: modelData.movies[0])
            .previewDevice("iPhone 12 Pro")
            .environmentObject(modelData)
    }
}

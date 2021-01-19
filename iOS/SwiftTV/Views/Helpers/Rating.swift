//
//  Rating.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct Rating: View {
    var movie: Movie
    
    static func getScoreIcon(_ score: Int) -> Image {
        if (60...100).contains(score) {
            return Image("fresh")
        } else if (1...59).contains(score) {
            return Image("rotten")
        }
        return Image("unknown-dim")
    }
    
    var body: some View {
        let image = Rating.getScoreIcon(movie.rating)
        
        HStack {
            Spacer()
            image
                .resizable()
                .frame(width: 24, height: 24)
            Text("\(movie.rating.description)%")
                .fontWeight(.semibold)
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating(movie: ModelData().movies[0])
    }
}

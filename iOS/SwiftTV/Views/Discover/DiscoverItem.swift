//
//  DiscoverItem.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-18.
//

import SwiftUI

struct DiscoverItem: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            movie.poster
                .renderingMode(.original)
                .resizable()
                .frame(width: 134, height: 201)
                .cornerRadius(10)
                .shadow(radius: 5)
            Text(movie.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct DiscoverItem_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverItem(movie: ModelData().movies[0])
    }
}

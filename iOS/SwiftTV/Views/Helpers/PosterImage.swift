//
//  PosterImage.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-18.
//

import SwiftUI

struct PosterImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 300)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct PosterImage_Previews: PreviewProvider {
    static var previews: some View {
        PosterImage(image: Image("wonderwoman1984"))
    }
}

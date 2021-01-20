//
//  PosterImageDetail.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct PosterImageDetail: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 150, height: 225)
            .cornerRadius(8)
            .shadow(radius: 5)
    }
}

struct PosterImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        PosterImageDetail(image: Image("wonderwoman1984"))
    }
}

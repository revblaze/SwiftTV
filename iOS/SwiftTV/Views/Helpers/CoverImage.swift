//
//  CoverImage.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct CoverImage: View {
    var image: Image
    
    var body: some View {
        GeometryReader { geo in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct CoverImage_Previews: PreviewProvider {
    static var previews: some View {
        CoverImage(image: Image("wonderwoman1984-cover"))
    }
}

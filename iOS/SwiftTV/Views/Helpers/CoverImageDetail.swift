//
//  CoverImageDetail.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct CoverImageDetail: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct CoverImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageDetail(image: Image("wonderwoman1984-cover"))
    }
}

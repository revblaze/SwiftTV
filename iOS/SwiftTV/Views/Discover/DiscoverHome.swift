//
//  DiscoverHome.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-18.
//

import SwiftUI

struct DiscoverHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                DiscoverCover(movie: modelData.features[0])
                    .listRowInsets(EdgeInsets())
                    .padding(.trailing, -20)
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    DiscoverRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                //.listStyle(PlainListStyle())
            }
            .navigationTitle("Discover")
        }
    }
}

struct DiscoverHome_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverHome()
            .previewDevice("iPhone 12 Pro")
            .environmentObject(ModelData())
    }
}

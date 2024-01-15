//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by hasan bilgin on 31.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack {
                AsyncImage(url: URL(string: "https://tse2.mm.bing.net/th?id=OIP.HLuY60jzx5puuKjbqmWRRwHaEK&pid=Api&P=0&h=220")!){ image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                }placeholder: {
                    ProgressView()
                }
                
                
                
                List(superHeroArray){superhero in
                    Text(superhero.name).font(.title3).foregroundStyle(.blue)
                }.navigationTitle(Text("Superhero Book"))
            }
        }
    }
}

#Preview {
    ContentView()
}

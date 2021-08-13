//
//  ContentView.swift
//  HACKERNEWS
//
//  Created by mustafa demiröz on 10.08.2021.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url))
                     {
                        HStack {
                            
                            Text("\(post.points)")
                            Text(post.title)
                    
                        }
                    }
              
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


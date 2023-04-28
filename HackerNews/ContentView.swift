//
//  ContentView.swift
//  HackerNews
//
//  Created by Brandon Criss on 4/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                        .padding()
                    Text(post.title)
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

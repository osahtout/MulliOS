//
//  ContentView.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-22.
//

import SwiftUI

struct ContentView: View
{
    enum TabItem { case homepage, createEvent, machineLearning, profile }
    @State var selectedItem = TabItem.homepage
    
    var body: some View
    {
        
        TabView(selection: $selectedItem)
        {
            HomepageView()
                .tabItem
                {
                    Image(systemName: "house")
                }
                
            MachineLearningView()
                .tabItem
                {
                    Image(systemName: "camera.metering.spot")
                }
            
            CreateEventView()
                .tabItem
                {
                    Image(systemName: "plus")
                }
            MessagesView()
                .tabItem
                {
                    Image(systemName: "bubble.left")
                }
            ProfileView()
                .tabItem
                {
                    Image(systemName: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

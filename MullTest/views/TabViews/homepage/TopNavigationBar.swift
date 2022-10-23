//
//  TopNavigationBar.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-10-08.
//

import SwiftUI

struct TopNavigationBar: View
{
    @Binding var selectedItem: TabItem
    var body: some View
    {
        HStack
        {
            TopTabItemView(name: "Discover", item: .discover, selectedItem: $selectedItem)
            TopTabItemView(name: "Upcoming", item: .upcomming, selectedItem: $selectedItem)
            TopTabItemView(name: "My Events", item: .myEvents, selectedItem: $selectedItem)
        }
    }
}

struct TopTabItemView: View
{
    var name: String
    var color = Color.black
    var item: TabItem
    @Binding var selectedItem: TabItem
    var body: some View
    {
        Text(name)
            .padding(.horizontal)
            .foregroundColor(selectedItem == item ? Color.accentColor : Color.black)
            .onTapGesture
            {
                selectedItem = item
                // TODO query discover
            }
    }
}

//
//struct TopNavigationBar_Previews: PreviewProvider
//{
//    static var previews: some View
//    {
//        TopNavigationBar()
//    }
//}

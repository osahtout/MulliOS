//
//  Title.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-24.
//

import SwiftUI

struct Title: View
{
    var title: String
    var body: some View
    {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("AccentColor"))
    }
}

//struct Title_Previews: PreviewProvider {
//    static var previews: some View {
//        Title()
//    }
//}

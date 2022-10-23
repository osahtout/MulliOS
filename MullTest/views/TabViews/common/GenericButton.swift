//
//  GenericButton.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-24.
//

import SwiftUI

struct GenericButton: View
{
    var buttonName: String
    var color: Color = Color.accentColor
    var textColor = Color.white
    
    
    var body: some View
    {
//        Button(buttonName)
//        {
//
//        }
//        .padding()
//        .frame(width: 129.0, height: 44.0)
//        .background(color)
//        .foregroundColor(.white)
//        .cornerRadius(8)
        ZStack
        {
            Rectangle()
                .padding()
                .frame(width: 129.0, height: 44.0)
                .background(color)
                .foregroundColor(color)
                .cornerRadius(8)
            Text(buttonName)
                .foregroundColor(textColor)
        }
    }
}

struct GenericButton_Previews: PreviewProvider
{
    static var previews: some View
    {
        GenericButton(buttonName: "Done")
    }
}

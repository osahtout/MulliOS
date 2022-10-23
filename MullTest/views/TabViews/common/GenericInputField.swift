//
//  GenericInputField.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-24.
//

import SwiftUI

struct GenericInputField: View
{
    @Binding var text: String
    var title: String
    
    var body: some View
    {
        Group
        {
            HStack
            {
                Text(title)
                    .fontWeight(.bold)
                    .padding(.top)
                Spacer()
            }

            TextField("", text: $text)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .overlay(
                    RoundedRectangle(cornerRadius: 19)
                        .stroke(Color.accentColor, lineWidth: 1)
                    )
        }.padding(.horizontal)
    }
}

//struct GenericInputField_Previews: PreviewProvider
//{
//    static var previews: some View {
//        GenericInputField()
//    }
//}

//
//  PrivacyButtonsPicker.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-24.
//

import SwiftUI

struct PrivacyButtonsPicker: View
{
    @Binding var eventPrivacy: Int
    
    var body: some View
    {
        Picker("What is your favorite color?", selection: $eventPrivacy) {
            Text("Everyone").tag(0)
            Text("Friends").tag(1)
            Text("Invite").tag(2)
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).pickerStyle(SegmentedPickerStyle())
 
    }
}
//
//struct PrivacyButtonsPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        PrivacyButtonsPicker()
//    }
//}

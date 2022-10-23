//
//  TimePickerSlider.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-24.
//

import SwiftUI

struct TimePickerSlider: View
{
    @Binding var time: Double
    var title: String
    
    var body: some View
    {
        Text(getTimeString())
        HStack
        {
            Text(title)
                .fontWeight(.bold)
                .padding(.leading)
                
            Slider(value: $time, in: 0...24, step: 0.25)
                .padding(.trailing)
        }
    }
    
    private func getTimeString() -> String
    {
        let split = String(time).split(separator: ".")
        var minutes = String((Int(split[1])! * 60 / 100))
        if !(minutes.last! == "5")
        {
            minutes.append("0")
        }
        return split[0] + ":" + minutes
        // TODO split string and show time in 60
    }
}

//struct TimePickerSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        TimePickerSlider()
//    }
//}

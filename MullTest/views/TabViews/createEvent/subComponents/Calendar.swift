//
//  Calendar.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-24.
//

import SwiftUI

struct Calendar: View
{
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    
    @Binding var date: Date
    @State private var dates: Set<DateComponents> = []
    
//    var bounds: PartialRangeFrom<Date>
//    {
//        let start = calendar.date(
//            from: DateComponents(
//                timeZone: timeZone,
//                year: Date.now.f,
//                month: 6,
//                day: 20)
//        )!
//
//        return start...
//
//    }
//
    
    var body: some View
    {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
        
        
//        MultiDatePicker("date", selection: $dates, in: Date()...)
    }
}

//struct Calendar_Previews: PreviewProvider
//{
//    @State var date = Date()
//    static var previews: some View
//    {
//        Calendar($date)
//    }
//}

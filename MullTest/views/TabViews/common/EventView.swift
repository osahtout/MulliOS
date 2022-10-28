//
//  EventView.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-28.
//

import SwiftUI

struct EventView: View
{
    @State var titlePage = "Event Details"
    @State var eventTitle = "Event title"
    
    @State var image = "Image-1"
    
    @State var userName = "John Smith"
    @State var location = "1234 Some Street, AB, CD"
    @State var description = "This is where the discrition should be"
    @State var privacy = "Everyone"
    @State var picturesOfFriends = "pictures of friends"
    
    @State var startDayAndMonth = "May 23"
    @State var SartTime = "1:00 pm"
    @State var endDayAndMonth = "May 23"
    @State var endTime = "1:00 pm"
    
    var body: some View
    {

        NavigationView
        {
            VStack()
            {
                Text(eventTitle)
                Image(image)
                    .resizable()
                    .frame(height: 119.0)
                    .cornerRadius(8, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
                    .padding(.all)
                
                HStack
                {
                    Image(systemName: "clock")
                        .padding(.leading)
                    DateAndTime(monthAndDay: startDayAndMonth, time: SartTime)
                    Spacer()
                    Image(systemName: "arrowtriangle.forward")
                    Spacer()
                    DateAndTime(monthAndDay: endDayAndMonth, time: endTime)
                }
                .padding([.leading, .bottom, .trailing])
                
                Divider()
                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                
                ScrollView
                {
                    EventViewRowDetails(icon: "person.crop.circle", content: userName)
                    EventViewRowDetails(icon: "location.circle", content: location)
                    EventViewRowDetails(icon: "text.alignleft", content: description)
                    EventViewRowDetails(icon: "lock.circle", content: privacy)
                    
                    // navigation to friend list
                    
                    EventViewRowDetails(icon: "person.3.sequence", content: picturesOfFriends)
                    
                    if(titlePage == "Preview")
                    {
                        GenericButton(buttonName: "Done")
                            .padding(.top)
                    }
                }
                
            }
            .navigationBarTitle(titlePage, displayMode: .inline)
        }

    }
}

struct EventViewRowDetails: View
{
    var icon: String
    var content: String
    var body: some View
    {
        VStack
        {
            HStack
            {
                Image(systemName: icon)
                    .padding()
                Text(content)
                Spacer()
            }
            .padding()
            Divider()
                .padding(.horizontal)
        }
    }
}

struct DateAndTime: View
{
    var monthAndDay: String
    var time: String
    var body: some View
    {
        VStack
        {
            Text(monthAndDay)
            Text(time)
        }
        .padding(.horizontal)
    }
}

struct EventView_Previews: PreviewProvider
{
    static var previews: some View
    {
        EventView()
    }
}

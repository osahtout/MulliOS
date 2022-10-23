//
//  Homepage.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-22.
//

import SwiftUI
struct EventDetails
{
    
    let id = UUID()
    var image: String
    var title: String
    var location: String
    var date: String
    var time: String
}
enum TabItem { case discover, upcomming, myEvents }
struct HomepageView: View
{
    /**
        // TODO remove
     */
    let eventList: [EventDetails] = [
        EventDetails(image: "Image-1",title: "clean up 1", location: "123 here and there", date: "1 Jan", time: "13:00"),
        EventDetails(image: "Image-1",title: "clean up 2", location: "123 here and there", date: "1 Jan", time: "13:00"),
        EventDetails(image: "Image-1",title: "clean up 3", location: "123 here and there", date: "1 Jan", time: "13:00"),
        EventDetails(image: "Image-1",title: "clean up 4", location: "123 here and there", date: "1 Jan", time: "13:00"),
        EventDetails(image: "Image-1",title: "clean up 5", location: "123 here and there", date: "1 Jan", time: "13:00"),
        EventDetails(image: "Image-1",title: "clean up 6", location: "123 here and there", date: "1 Jan", time: "13:00")]
    
    let eventListUpcomming: [EventDetails] = [
        EventDetails(image: "Image-1",title: "clean up 1", location: "123 here and there", date: "1 Jan", time: "13:00")]
    
    let eventListMyEvents: [EventDetails] = []
    
    /**
        // end remove
     */
    
    
    
    @State var selectedItem = TabItem.discover
    
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                TopNavigationBar(selectedItem: $selectedItem)
                Divider()
                
                if selectedItem == .discover
                {
                    EventListView(eventList: eventList)
                }
                else if selectedItem == .upcomming
                {
                    EventListView(eventList: eventListUpcomming)
                }
                else
                {
                    EventListView(eventList: eventListMyEvents)
                }
            }
            .navigationBarTitle("Homepage", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}



struct EventListView: View
{
    let eventList: [EventDetails]
    var body: some View
    {
        List(eventList, id: \.id)
        {
            event in
            EventCard(image: event.image,title: event.title, location: event.location, date: event.date, time: event.time)
            .background(
                NavigationLink("",
                    destination: EventView(
                        titlePage: "Event Details",
                        eventTitle: event.title,
                        image: event.image,
                        location: event.location,
                        startDayAndMonth: event.date,
                        SartTime: event.time,
                        endDayAndMonth: event.date,
                        endTime: event.time
                        )
                    ).opacity(0)
                )
            .frame( maxWidth: .infinity)
            .listRowSeparator(.hidden)
        }
        .frame( maxWidth: .infinity)
        .edgesIgnoringSafeArea(.horizontal)
        .listStyle(.plain)
    }
}


struct Homepage_Previews: PreviewProvider
{
    static var previews: some View
    {
        HomepageView()
    }
}

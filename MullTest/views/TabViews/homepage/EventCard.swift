//
//  EventCard.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-27.
//

import SwiftUI

struct EventCard: View
{
    @State var image: String
    @State var title: String
    @State var location: String
    @State var date: String
    @State var time: String

    var body: some View
    {
        ZStack(alignment: .top)
        {
            Rectangle()
                .foregroundColor(.white)
                .background(.white)
                .frame(height: 170, alignment: .center)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 5)
            VStack
            {
                ZStack(alignment: .topLeading)
                {
                    ImagePartEventCard(date: $date, time: $time, image: $image)
                }
                BottomPartEventCard(title: $title, location: $location)
            }
        }
    }
}

struct BottomPartEventCard: View
{
    @Binding var title: String
    @Binding var location: String
    var body: some View
    {
        HStack
        {
            VStack(alignment: .leading)
            {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing)
                    .lineLimit(1)
                HStack
                {
                    Text("15km")
                        .font(.footnote)
                        
                    Text(location)
                        .font(.footnote)
                        .fontWeight(.bold)
                }
            }
            .padding(.horizontal)
            Spacer()
            HStack
            {
                Image(systemName: "person")
                Image(systemName: "person")
                Image(systemName: "person")

            }
            Image(systemName: "square.and.arrow.up")
                .foregroundColor(Color("AccentColor"))
                .padding(.trailing)
                .accentColor(.accentColor)
        }
    }
}

struct ImagePartEventCard: View
{
    @Binding var date: String
    @Binding var time: String
    @Binding var image: String
    
    var body: some View
    {
        Image(image) // change image
            .resizable()
            .frame(height: 119.0)
            .cornerRadius(8, corners: [.topLeft, .topRight])
        HStack
        {
            DateTimeEventCard(date: $date, time: $time)
            Spacer()
            JoinButton()
        }
    }
}

struct DateTimeEventCard: View
{
    @Binding var date: String
    @Binding var time: String
    
    var body: some View
    {
        VStack
        {
            Text(date) // change date
                .font(.caption)
                .padding([.top, .leading, .trailing], 0.5)
            Text(time) // change time
                .font(.caption)
                .padding([.leading, .bottom, .trailing], 0.5)
        }
        .padding(.horizontal, 3.0)
        .background(.white)
        .cornerRadius(6, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
        .offset(x: 4, y: 4)
    }
}

struct JoinButton: View
{
    // TODO update with custom icon
    @State var joined: Bool = false
    var body: some View
    {
        Image(systemName: getIconName())
            .clipped()
            .background(.white)
            .onTapGesture {
                self.joined = !self.joined
            }
            .foregroundColor(.accentColor)
            .padding(5.0)
    }
    
    private func getIconName() -> String
    {
        var icon: String
        
        if joined
        {
            icon = "calendar.circle.fill"
        }
        else
        {
            icon = "calendar.circle"
        }
        
        return icon
    }
}


struct RoundedCorner: Shape
{

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path
    {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View
{
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View
    {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}


struct EventCard_Previews: PreviewProvider {
    static var previews: some View {
        EventCard(image: "Image-1",title: "clean up on this streest and need help", location: "123 here and there", date: "1 Jan", time: "3:00 PM")
    }
}

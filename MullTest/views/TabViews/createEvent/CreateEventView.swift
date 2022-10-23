//
//  CreateEventView.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-22.
//

import SwiftUI

struct CreateEventView: View
{
    @State private var date = Date()
    
    @State private var startTime = 12.00
    @State private var endTime = 12.00
    
    @State private var eventTitle = ""
    @State private var eventDescription = ""
    @State private var location = ""
    
    @State private var eventPrivacy = 0
    
    
    var body: some View
    {
        NavigationView
        {
            ScrollView
            {
                VStack
                {
                    Title(title: "Create Event")
                    
                    
                    Button(action: {})
                    {
                        Image(systemName: "photo.on.rectangle")
                            .padding(25.0)
                    }.background(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.accentColor)
                        .frame(width: 200, height: 85))
                    
                        
                    
                    Calendar(date: $date)
                    
                    TimePickerSlider(time: $startTime, title: "Start")
                    TimePickerSlider(time: $endTime, title: "End  ")
                    
                    GenericInputField(text: $eventTitle, title: "Event Title")
                    GenericInputField(text: $eventDescription, title: "Description")
                    GenericInputField(text: $location, title: "Location")
                    
                    PrivacyButtonsPicker(eventPrivacy: $eventPrivacy)
                    
//                    GenericButton(buttonName: "Next")
//                        .background(
//                            NavigationLink("",
//                                destination: EventView(
//                                    titlePage: "Event Details",
//                                    eventTitle: "aaaaaa",
//                                    image: "Image-1",
//                                    location: "aaaaa",
//                                    startDayAndMonth: "aaaaa",
//                                    SartTime: "aaaa",
//                                    endDayAndMonth: "111111",
//                                    endTime: "aaaaaaa"
//                                    )
//                                ).opacity(0)
//                            )
//                        .frame( maxWidth: .infinity)
//                        .listRowSeparator(.hidden)
                }
            }
        }
        .navigationBarTitle("Create Event", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct ImagePicker: UIViewControllerRepresentable
{

    var sourceType: UIImagePickerController.SourceType = .photoLibrary

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController
    {

        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>)
    {

    }
}



struct CreateEventView_Previews: PreviewProvider
{
    static var previews: some View
    {
        CreateEventView()
    }
}

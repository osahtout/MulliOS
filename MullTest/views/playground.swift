//
//  playground.swift
//  MullTest
//
//  Created by Sahtout, Omar on 2022-05-25.
//

import SwiftUI

struct playground: View
{
    @State var joined: Bool = false
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
            ZStack(alignment: .topLeading)
            {
                Image("Image-1") // change image
                    .resizable()
                    .frame(height: 119.0)
                    .cornerRadius(8, corners: [.topLeft, .topRight])
                HStack
                {
                    VStack
                    {
                        Text("1 Jan") // change date
                            .font(.caption)
                            .padding([.top, .leading, .trailing], 0.5)
                        Text("12:00 AM") // change time
                            .font(.caption)
                            .padding([.leading, .bottom, .trailing], 0.5)
                    }
                    .background(.white)
                    .cornerRadius(6, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
                    .offset(x: 4, y: 4)
                    Spacer()
                    Button(action: {
                        self.joined = !self.joined
                    })
                    {
                        Image(systemName: getIconName())
                    }
                
                    .offset(x: -10)
                    
                    
                }
            }
                
        }
        .padding(.horizontal)
    }
    
    private func getIconName() -> String
    {
        var icon = "square.and.arrow.down"
        
        if joined
        {
            icon = "square.and.arrow.down"
        }
        else
        {
            icon = "square.and.arrow.up.fill"
        }
        
        return icon
    }
}


//struct RoundedCorner: Shape {
//
//    var radius: CGFloat = .infinity
//    var corners: UIRectCorner = .allCorners
//
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        return Path(path.cgPath)
//    }
//}
//
//extension View {
//    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
//        clipShape( RoundedCorner(radius: radius, corners: corners) )
//    }
//}





struct playground_Previews: PreviewProvider {
    static var previews: some View {
        playground()
    }
}

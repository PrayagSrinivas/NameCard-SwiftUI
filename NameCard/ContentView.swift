//
//  ContentView.swift
//  NameCard
//
//  Created by Jovial Software on 11/11/1941 Saka.
//  Copyright © 1941 Jovial Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.96, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("Natasha")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 300)
                    .clipShape(Circle())
                    .overlay(
                       Circle().stroke(Color.white,lineWidth: 5)
                        //RoundedRectangle(cornerRadius:20)
                       //.frame(width: 100, height: 100)
                )
                
                Text("Natasha")
                    .font(Font.custom("Pacifico-Regular", size: 40.0))
                       .bold()
                       .italic()
                       .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+1 8456908920", imageName: "phone.fill")
                InfoView(text: "iamnatasha@gmail.com", imageName: "envelope.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text :String
    let imageName:String
    var body: some View {
        RoundedRectangle(cornerRadius:30)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

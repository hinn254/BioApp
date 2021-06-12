//
//  ContentView.swift
//  BennyCard
//
//  Created by Benny Hinn on 12/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Benny").resizable().aspectRatio(contentMode: .fill).frame(width: 150, height: 150).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle()                                .stroke(Color.white, lineWidth: 5)
                )
                Text("Benny Otieno")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+254 712 345 678", imageName: "phone.fill")
                InfoView(text: "bennyhinnotieno@gmail.com", imageName: "envelope.fill")
            }
            
        }
 
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
            .background(Color.black)
            .previewDevice("iPhobe 12 Pro")
    }
}


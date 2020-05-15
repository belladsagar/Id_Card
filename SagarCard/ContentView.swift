//
//  ContentView.swift
//  SagarCard
//
//  Created by Sagar c bellad on 29/04/20.
//  Copyright © 2020 Sagar c bellad. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52,opacity: 1.0).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("myPic").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 5))

                Text("Sagar c Bellad")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                ExtractedView(value: "+91 6361842210", photoKey: "phone.fill")
                ExtractedView(value: "scbellad2025@gmail.com", photoKey: "envelope.fill")
            }
        }
    }
}

struct ExtractedView: View {
    let value: String
    let photoKey: String
    var body: some View {
        RoundedRectangle(cornerRadius: 40).frame(width: 412, height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: photoKey).foregroundColor(.green)
                Text(value)
            })
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//phone.fill
//+91 6361842210

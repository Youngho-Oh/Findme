//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Youngho Oh on 2019/12/29.
//  Copyright © 2019 Youngho Oh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CircleImage().offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("Where Am i").truncationMode(.middle).font(.largeTitle).multilineTextAlignment(.center).foregroundColor(Color.black).lineSpacing(50)
                HStack{
                    Text("Tracer App").font(.subheadline)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CircleImage: View{
    var body: some View {
        Image("locator").clipShape(Circle()).overlay(Circle().stroke(Color.gray,lineWidth:4)).shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View{
        CircleImage()
    }
}

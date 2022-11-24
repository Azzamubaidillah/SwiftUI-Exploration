//
//  ContentView.swift
//  EV Marketplace
//
//  Created by azzam on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Product()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product : View {
    var body: some View{
        
        VStack(alignment:.leading){
            ZStack(alignment: .topTrailing){
                Image("ioniq-5").resizable().aspectRatio(contentMode: .fill).frame(height:180 ).clipped()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart").padding().foregroundColor(.red)}
                )
            }
            Text("Hyundai Ioniq 5").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().padding(.leading).padding(.trailing)
            
            Text("Starts from Rp. 200M").font(.caption).bold() .padding(.leading).padding(.trailing).foregroundColor(.red)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("Hyundai Moto Bintaro")}.padding(.leading).padding(.trailing).font(.caption)
            
            Button(
                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        Spacer()
                        HStack{
                            Image(systemName: "cart")
                            Text("Add to Cart").font(.callout).padding()
                        }
                        Spacer()
                    }.background(Color.green).foregroundColor(.white).cornerRadius(10).padding()
                }
            )
        }.background(Color("light-gray")).cornerRadius(15).padding()
    }
}

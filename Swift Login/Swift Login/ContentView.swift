//
//  ContentView.swift
//  Swift Login
//
//  Created by azzam on 26/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Login( )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login : View {
    
    @State var username : String = ""
    @State var password : String = ""
    
    var body: some View{
        ZStack {
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    HStack{
                        VStack{
                            Text("Hi!").bold().font(.largeTitle).foregroundColor(Color.white)
                            
                            Text("Welcome back!").bold().foregroundColor(Color.white)
                        }
                        
                        Spacer()
                        
                        Image("bitmap").resizable().frame(width: 120, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
                    }
                    Spacer()
                }.frame(height: 100).padding(30).background(Color.purple).edgesIgnoringSafeArea(.top)
                
                ≈
                
                Spacer()
            }
        }
    }
}

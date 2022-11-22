//
//  ContentView.swift
//  YoutubeUI
//
//  Created by azzam on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View{
        NavigationView{
            Text("Hello ini content").navigationBarItems(
                leading: HStack{
                Button(
                    action: {
                        print("Hello button")}){
                    Image("youtube").resizable().renderingMode(.original).frame(width: 90, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                },
                trailing: HStack(spacing:20){
                    Button(
                        action: {
                        print("Hello Print")
                        }){
                        Image(systemName: "tray.full")
                    }
                    Button(
                        action: {
                        print("Hello Print")
                        }){
                        Image(systemName: "video.fill")
                    }
                    Button(
                        action: {
                        print("Hello Print")
                        }){
                        Image(systemName: "magnifyingglass")
                    }
                    Button(action: {print("hello profile")}){
                        Image("avatar").renderingMode(.original).resizable().frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    }
                )
            }
        }
    }


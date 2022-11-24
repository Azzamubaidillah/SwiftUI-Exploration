//
//  ContentView.swift
//  YoutubeUI
//
//  Created by azzam on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home().tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                Home().tabItem {
                    Image(systemName: "paperplane.fill")
                    Text("Explore")
                }
                
                Home().tabItem {
                    Image(systemName: "tray.fill")
                    Text("Subscription")
                }
                
                Home().tabItem {
                    Image(systemName: "envelope.fill")
                    Text("Inbox")
                }
                
                Home().tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Collection")
                }
            }.accentColor(.red)
        }
        
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
            
            Main()
                .navigationBarItems(
                leading: HStack{
                Button(
                    action: {
                        print("Hello button")}){
                    Image("youtube").resizable().renderingMode(.original).frame(width: 90, height: 20)
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
                .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct Main : View {
    var body: some View{
        List {
            CellContent(image: "content", author: "Codewithchris", views: "391", title: "Swift Programming Structures", duration: "11:19")
            CellContent(image: "content1", author: "Azzam Ubaidillah", views: "999", title: "Build Your First SWIFTUI Apps", duration: "21:39")
            CellContent(image: "content2", author: "Ipung Dev", views: "599", title: "Data Flow in Swift", duration: "9:28")
        }
    }
}


struct CellContent : View {
    
    var image: String
    var author: String
    var views: String
    var title: String
    var duration: String
    
    var body : some View {
        VStack() {
            ZStack (alignment: .bottomTrailing){
                Image(image).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Text(duration).padding(.all, 5).foregroundColor(.white).font(.caption).background(Color.black).cornerRadius(5).padding(.trailing, 5).padding(.bottom, 5)
            }
        }
        HStack{
            Image("avatar").resizable().frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack (alignment: .leading){
                Text(title).font(.headline)
                HStack{
                    Text("\(author) - \(views) views - 1 day ago").font(.caption)
                }
            }
            Spacer()
            Image(systemName: "list.bullet")
        }
    }
}

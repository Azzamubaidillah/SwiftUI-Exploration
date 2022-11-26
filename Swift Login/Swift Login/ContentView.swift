//
//  ContentView.swift
//  Swift Login
//
//  Created by azzam on 26/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userAuth : AuthUser
    var body: some View {
        if (!userAuth.isLoggedIn) {
            AnyView(Login())
        } else if (userAuth.isLoggedIn) {
            AnyView(Home())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View{
    
    @EnvironmentObject var userAuth : AuthUser
    
    var body: some View {
        Text("Welcome Home Sweetheart")
        Button(action:{self.userAuth.isLoggedIn = false}){
            Text("Logout")
        }
    }
}

struct Login : View {
    
    @EnvironmentObject var userAuth : AuthUser
    
    @State var username : String = ""
    @State var password : String = ""
    
    let lightGreyColor = Color(red: 239.0/255.0, green:243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    func loginCheck(){
        if (username == "Admin" && password == "123") {
            userAuth.isLoggedIn = true
        } else {
            userAuth.isLoggedIn = false
            userAuth.isCorrect = false
        }
    }
    
    var body: some View{
        ZStack {
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    Spacer()
                    HStack{
                        Image("bitmap").resizable().frame(width: 120, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
                    }
                    Spacer()
                }.frame(height: 100).padding(50).background(Color.purple).clipShape(CustomShape(corner: [.bottomLeft, .bottomRight], radi: 30)).edgesIgnoringSafeArea(.top)
                
                VStack{
                    Text("Welcome back!").bold().font(.largeTitle).foregroundColor(Color.purple)
                }
                
                VStack(alignment: .leading){
                    Text("Username/email address")
                    TextField("Username...", text: $username).padding().background(lightGreyColor).cornerRadius(5.0)
                
                    Text("Password")
                    SecureField("Password...",  text: $password).padding().background(lightGreyColor).cornerRadius(5.0)
                    
                    if(!userAuth.isCorrect){
                    	    Text("username dan password salah").foregroundColor(.red)
                    }
                    
                    HStack {
                        Button(action:{}){
                            Text("Forgot Password?")
                        }
                        Spacer()
                    }.padding([.top, .bottom], 10)
                    
                    HStack{
                        Spacer()
                        Button(action:{
                            loginCheck()
                        }){
                            Text("Sign In").font(.callout).bold().foregroundColor(.white)
                        }
                        Spacer()
                    }.padding()		.background(Color.purple).cornerRadius(5.0)
                    
                    HStack{
                        Spacer()
                        Button(action:{}){
                            Text("Our Privacy Policy").font(.callout).bold().foregroundColor(.purple)
                        }
                        Spacer()
                    }.padding()
                    
                    HStack{
                        Spacer()
                        Text("Didn't have an account?")
                        Button(action:{}){
                            Text("Sign Up").font(.callout).bold().foregroundColor(.purple)
                        }
                        Spacer()
                    }
                }.padding(30)
                
                Spacer()
            }
        }
    }
}

struct CustomShape : Shape {
    var corner : UIRectCorner
    var radi : CGFloat
    	
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radi, height: radi)
        )
        return Path(path.cgPath)
    }
}

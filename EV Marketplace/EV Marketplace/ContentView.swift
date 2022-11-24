//
//  ContentView.swift
//  EV Marketplace
//
//  Created by azzam on 25/11/22.
//

import SwiftUI

//model

struct ProductModel : Identifiable {
    let id: Int
    let name: String
    let image: String
    let price : String
    let location : String
    
    init(id: Int, name: String, image: String, price: String, location: String) {
        
        self.id = id
        self.name = name
        self.image = image
        self.price = price
        self.location = location
        
    }
}

struct ContentView: View {
    
    let data : [ProductModel] = [
    ProductModel(id: 1, name: "Hyundai Ioniq 5", image: "ioniq-5", price:"500 M", location: "Hyundai Moto Bintaro"),
    ProductModel(id: 2, name: "KIA EV-6", image: "ev6", price:"300 M", location: "KIA Ciputat"),
    ProductModel(id: 3, name: "Tesla Model 3", image: "model-3", price:"780 M", location: "Tesla Singapore"),
    ProductModel(id: 4, name: "Tesla Model X", image: "model-x", price:"700 M", location: "Tesla Singapore"),
    ProductModel(id: 5, name: "Tesla Model Y", image: "model-y", price:"670 M", location: "Tesla Singapore"),
    ProductModel(id: 6, name: "Tesla Model S", image: "model-s", price:"820 M", location: "Tesla Singapore"),
    ]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                ForEach(data){
                    row in VStack(spacing: 10){
                        Product(data: row).padding()
                    }
                }
            }.navigationTitle("Electronic Vehicle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product : View {
    
    let data: ProductModel
    
    var body: some View{
        
        VStack(alignment:.leading){
            ZStack(alignment: .topTrailing){
                Image(self.data.image).resizable().aspectRatio(contentMode: .fill).frame(height:180 ).clipped()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart").padding().foregroundColor(.red)}
                )
            }
            Text(self.data.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().padding(.leading).padding(.trailing)
            
            Text("Starts from Rp. \(self.data.price)").font(.caption).bold() .padding(.leading).padding(.trailing).foregroundColor(.red)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text(self.data.location)}.padding(.leading).padding(.trailing).font(.caption)
            
            Button(
                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        Spacer()
                        HStack{
                            Image(systemName: "cart")
                            Text("Add to Cart").font(.callout).padding()
                        }
                        Spacer()
                    }.background(Color.green).foregroundColor(.white).cornerRadius(10).padding(.top, 20)
                }
            )
        }.background(Color("light-gray")).cornerRadius(15).padding()
    }
}

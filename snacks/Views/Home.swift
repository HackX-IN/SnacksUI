//
//  Home.swift
//  snacks
//
//  Created by Inam 07 on 16/10/2566 BE.
//

import SwiftUI

struct Home: View {
    
    @State var selectedItem="Choco"
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    Text("Order From The Best Of **Snacks**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70,height: 90)
                        .overlay(RoundedRectangle(cornerRadius:50).stroke().opacity(0.4))
                }.padding(30)
                
                // categoryListView
                
                catergoryList
                
                //Collection View
                
                HStack {
                    
                    Text ("Choco **Collections**")
                        .font(.system(size: 24))
                    
                    Spacer()
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                }
                .padding(.horizontal,30)
                .padding(.vertical,15)
                
                //product List
                ScrollView(.horizontal,showsIndicators:false){
                    HStack {
                        
                        ForEach(productListItem,id: \.id){item in
                            ProductListsItems(product: item)
                            
                        }
                    }
                }
                 
            }
        }
    }
    
    var catergoryList:some View {
        HStack {
            ScrollView(.horizontal,showsIndicators:false){
                HStack{
                    ForEach(categoryListsItem,id:\.self){item in
                        Button(action: {
                            selectedItem=item.title
                        }
                               , label: {
                            HStack{
                                if (item.title != "All"){
                                    Image(item.icon)
                                        .resizable()
                                        .frame(width: 25,height: 25)
                                        .foregroundColor(selectedItem == item.title ? .yellow : .black)
                                    
                                }
                                Text(item.title)
                                
                            }
                            .padding(20)
                            .background(
                                selectedItem == item.title ? .black :
                                    .gray.opacity(0.1)
                            )
                            .foregroundColor(selectedItem != item.title ? .black : .white)
                            .clipShape(Capsule())
                            
                        })
                    }
                }.padding(.horizontal,30)
            }
            
        }
    }
}

#Preview {
    Home()
}


struct ProductListsItems : View {
    
    var product : ProductList
    var body: some View {
        ZStack{
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing,-200)
                .rotationEffect(Angle(degrees: 30))
                .padding()
            ZStack {
                VStack(alignment: .leading){
                    Text("\(product.title)")
                        .font(.system(size: 36,weight: .medium))
                        .frame(width: 140)
                    
                    Text(product.category)
                        .font(.callout)
                        .padding()
                        .background(.white.opacity(0.6))
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    HStack{
                        Text("$\(product.price).0")
                            .font(.system(size: 24,weight: .semibold))
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                           Image(systemName: "basket")
                                .imageScale(.large)
                                .frame(width: 90,height: 68)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        })
                        
                    }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 80)
                    .background(.white.opacity(0.9))
                    .clipShape(Capsule())
                    
                }
            }
            .padding(30)
                .frame(width: 336,height: 430)
            
        }
       
            .frame(width: 336,height: 422)
            .background(product.color.opacity(0.13))
            .clipShape(.rect(cornerRadius:57))
            .padding(.leading,20)
        
    }
}

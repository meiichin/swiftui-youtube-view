//
//  ContentView.swift
//  YouTubeView
//
//  Created by Yuu on 16/09/21.
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

struct Home: View {
    var body: some View{
        NavigationView{
            Content()
                
                //navigasi atas
                .navigationBarItems(
                    leading:
                        HStack{
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 20)
                        },
                    trailing:
                        HStack(spacing:30){
                            Button(action: {print("button 1")}){
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.secondary)
                            }
                            Button(action: {print("button 2")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                            }
                            Button(action: {print("button 3")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                            }
                            Button(action: {print("button 4")}){
                                Image("me")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .clipShape(Circle())
                            }
                        }
                )
                .navigationBarTitle("", displayMode: .inline)
                
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct Content: View {
    var body: some View{
        List{
            // Content 1
            VStack{
                ZStack(alignment:.bottomTrailing){
                    Image("c1")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom, 5)
                }
                HStack(spacing:20){
                    Image("me")
                        .resizable()
                        .frame(width:30, height: 30)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment:.leading){
                        Text("Tutorial SwiftUI #1").font(.headline)
                        Text("Ini adalah deskripsi video - 300x ditonton - 10 jam yang lalu").font(.caption)
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            // Content 2
            VStack{
                ZStack(alignment:.bottomTrailing){
                    Image("c2")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom, 5)
                }
                HStack(spacing:20){
                    Image("me")
                        .resizable()
                        .frame(width:30, height: 30)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment:.leading){
                        Text("Tutorial SwiftUI #1").font(.headline)
                        Text("Ini adalah deskripsi video - 300x ditonton - 10 jam yang lalu").font(.caption)
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            // Content 3
            VStack{
                ZStack(alignment:.bottomTrailing){
                    Image("c1")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom, 5)
                }
                HStack(spacing:20){
                    Image("me")
                        .resizable()
                        .frame(width:30, height: 30)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment:.leading){
                        Text("Tutorial SwiftUI #1").font(.headline)
                        Text("Ini adalah deskripsi video - 300x ditonton - 10 jam yang lalu").font(.caption)
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            
        }
    }
}

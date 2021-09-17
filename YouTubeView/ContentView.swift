//
//  ContentView.swift
//  YouTubeView
//
//  Created by Yuu on 16/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                UnderConstruction()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Exploration")
                    }
                UnderConstruction()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                UnderConstruction()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                    }
                
                UnderConstruction()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Collection")
                    }
            }
            .accentColor(Color.red)
        }
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
            ComponentContent(imageContent: "c1", profileContent: "me", title: "Tutorial SwiftUI #1", description: "Turotial youtube - 1000 view", duration: "20:00")
            ComponentContent(imageContent: "c2", profileContent: "me", title: "Tutorial SwiftUI #2", description: "Turotial youtube - 1000 view", duration: "10:00")
            ComponentContent(imageContent: "c1", profileContent: "me", title: "Tutorial SwiftUI #3", description: "Turotial youtube - 1000 view", duration: "05:00")
            ComponentContent(imageContent: "c2", profileContent: "me", title: "Tutorial SwiftUI #2", description: "Turotial youtube - 1000 view", duration: "10:00")
        }
    }
}

// Component for content
struct ComponentContent: View {
    
    var imageContent: String
    var profileContent: String
    var title: String
    var description: String
    var duration: String
    
    var body: some View{
        // Content
        VStack{
            ZStack(alignment:.bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(duration)
                    .padding(.all,5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing,5)
                    .padding(.bottom, 5)
            }
            HStack(spacing:20){
                Image(profileContent)
                    .resizable()
                    .frame(width:30, height: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment:.leading){
                    Text(title).font(.headline)
                    Text(description).font(.caption)
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}

struct UnderConstruction: View {
    var body: some View{
        Text("Under Construction")
    }
}

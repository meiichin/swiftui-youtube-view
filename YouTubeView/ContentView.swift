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
            Text("Hallo Dev")
            
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
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
            )
        }
    }
}

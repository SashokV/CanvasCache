//
//  ContentView.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 08/09/2025.
//

import SwiftUI

enum Tab: Hashable {
    case home
    case search
    case profile
    case piece
}

struct ContentView: View {
    @State private var selectedTab: Tab = .home
    
    @State private var showingSettings = false
    @State private var showingArtPiece = false
    
    
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeView(
                showSettings: { showingSettings = true},
                showArtPiece: { showingArtPiece = true}
            )
            .tag(Tab.home)
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            SearchView()
                .tag(Tab.search)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
        .sheet(isPresented: $showingSettings) {
            SettingsView()
        }}}
        
struct HomeView: View {
    
    var showSettings: () -> Void
    var showArtPiece: () -> Void
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Good day, User,")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top, 40)
                            .padding(.leading, 20)
                        
                        Spacer()
                        
                        Button(action: {
                            showSettings()
                        }) {
                            Image(systemName: "gearshape")
                                .font(.system(size: 36))
                                .padding(.trailing, 20)
                                .foregroundColor(.black)
                        }
                        
                    }
                    .padding(.top, -20)
                    
                    HStack(spacing: 16) {
                        
                        Button(action: {
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 1")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                        Button(action: {
                            print("Button 2 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 2")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    Text("Pieces that might interest you")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                    HStack(spacing: 16) {
                        
                        Button(action: {
                            print("Button 1 tapped4")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 1")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                        Button(action: {
                            print("Button 2 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 2")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    HStack(spacing: 16) {
                        
                        NavigationLink(destination: ArtPieceView()) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 1")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }

                        
                        Button(action: {
                            print("Button 2 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 2")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    Text("Recently viewed")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                    HStack(spacing: 16) {
                        
                        Button(action: {
                            print("Button 1 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 1")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                        Button(action: {
                            print("Button 2 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 2")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    HStack(spacing: 16) {
                        
                        Button(action: {
                            print("Button 1 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 1")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                        Button(action: {
                            print("Button 2 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 2")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    HStack(spacing: 16) {
                        
                        Button(action: {
                            print("Button 1 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 1")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                        Button(action: {
                            print("Button 2 tapped")
                        }) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.4))
                                .frame(height: 100)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Art Piece 2")
                                        .foregroundColor(.black)
                                        .bold()
                                )
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    
                    Spacer()
                    
                }
                
            }
            
        }
    }
}

struct SearchView: View {
    var body: some View {
        Text("This is the search page")
            .font(.largeTitle)
    }
}

struct SettingsView: View {
    var body: some View {
        Text("This is the Settings page")
            .font(.largeTitle)
    }
}

struct ArtPieceView: View {
    var body: some View {
        Text("This is the view page")
            .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}

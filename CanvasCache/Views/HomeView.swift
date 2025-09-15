//
//  HomeView.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 15/09/2025.
//

import SwiftUI

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
                        
                        ArtPieceNavigationTile(title: "Art Piece Navigation Thing", destination: ArtPieceView())
                        
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


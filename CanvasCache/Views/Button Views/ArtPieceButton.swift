//
//  ArtPieceButton.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 15/09/2025.
//
// Add this BELOW your HomeView struct or in its own file

import SwiftUI

struct ArtPieceNavigationTile<Destination: View>: View {
    let title: String
    let destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(height: 100)
                .cornerRadius(12)
                .overlay(
                    Text(title)
                        .foregroundColor(.black)
                        .bold()
                )
        }
    }
}




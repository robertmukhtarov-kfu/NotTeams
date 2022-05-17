//
//  ChannelsViewController.swift
//  NotTeams
//
//

import SwiftUI

struct ChannelsViewController: View {
    let channels: [Channel] = []
    private let columns = [GridItem(.adaptive(minimum: 340, maximum: 340))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(channels) { channel in
                    ChannelView(channel: channel)
                }
            }
            .padding(.top)
            .padding(.horizontal)
        }
        .onAppear {
            
        }
        .frame(maxHeight: .infinity)
    }
}

struct ChannelView: View {
    let channel: Channel
    
    var body: some View {
        Text(channel.name)
            .font(.system(size: 19, weight: .bold))
            .foregroundColor(.white)
            .shadow(radius: 2.0)
            .frame(width: 330, height: 65)
            .background(channel.color)
            .cornerRadius(8)
    }
}

struct Channel: Identifiable, Codable {
    let id = UUID()
    let color: Color
    let name: String
}

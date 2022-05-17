//
//  PostViewController.swift
//  NotTeams
//
//

import SwiftUI

struct PostViewController: View {
    let post: Post
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            ZStack {
                Circle().fill(Color.teal)
                Text(post.username.first!).font(.system(size: 16, weight: .bold)).foregroundColor(.white)
            }
            .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(post.username).font(.system(size: 15, weight: .semibold))
                    Text(post.date).font(.system(size: 12, weight: .medium))
                }
                Text(post.text)
            }
        }
    }
}

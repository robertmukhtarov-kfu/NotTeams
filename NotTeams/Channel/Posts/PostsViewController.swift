//
//  PostsViewController.swift
//  NotTeams
//
//

import SwiftUI

struct PostsViewController: View {
    @State var title: String = ""
    @State var description: String = "Описание задания..."
    @State var date: Date = Date()
    @State var mark = ""
    @State var posts: Post = []
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ForEach(posts) { post in
                    PostViewController(post: post)
                }
            }
            
        }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 32))
    }
}



struct Post {
    let id: UUID
    let username: String
    let date: Date
    let text: String
}

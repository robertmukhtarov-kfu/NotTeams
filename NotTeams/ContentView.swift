//
//  ContentView.swift
//  NotTeams
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List() {
                NavigationLink(destination: Text("Чаты")) {
                    SidebarItem(title: "Чаты", image: "bubble.left.and.bubble.right")
                }
                NavigationLink(destination: ChannelsViewController()) {
                    SidebarItem(title: "Каналы", image: "person.3")
                }
                NavigationLink(destination: Text("Расписание")) {
                    SidebarItem(title: "Расписание", image: "calendar")
                }
                NavigationLink(destination: ChannelViewController()) {
                    SidebarItem(title: "Задания", image: "doc.richtext")
                }
                NavigationLink(destination: Text("Настройки")) {
                    SidebarItem(title: "Настройки", image: "gearshape")
                }
            }
            .frame(minWidth: 164)
            .listStyle(SidebarListStyle())
            .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
        }
        .navigationTitle("Это вам не Teams")
        .frame(minWidth: 640, minHeight: 360)
    }
}

struct SidebarItem: View {
    let title: String
    let image: String
    
    var body: some View {
        Label {
            Text(title)
                .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
                .font(.system(size: 15))
        } icon: {
            Image(systemName: image)
                .font(.system(size: 16))
                .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0)) // Костыль, чтобы помещались широкие SF Symbols
        }
        .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

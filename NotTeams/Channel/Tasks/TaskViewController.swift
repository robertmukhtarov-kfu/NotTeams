//
//  TaskViewController.swift
//  NotTeams
//
//

import SwiftUI

struct TaskViewController: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Заголовок задания").font(.system(size: 20, weight: .bold))
            Text("До 20.05.2022 23:59").font(.system(size: 15))
            Text("Предполагаемая оценка: 5").font(.system(size: 15)).foregroundColor(Color.init(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5))
            Text(loremIpsum).padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
            Button("􀉣  Прикрепить ссылку") {}.buttonStyle(LinkButtonStyle()).font(.system(size: 15)).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
            Button("􀉢  Прикрепить файл") {}.buttonStyle(LinkButtonStyle()).font(.system(size: 15))
            Button("Сдать"){}.keyboardShortcut(.defaultAction).padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
            
        }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
    }
}

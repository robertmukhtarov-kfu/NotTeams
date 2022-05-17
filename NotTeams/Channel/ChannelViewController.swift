//
//  ChannelViewController.swift
//  NotTeams
//
//

import SwiftUI

struct ChannelViewController: View {
    
    private let name = ""
    private let color: Color = .blue
    @State var selectedTab = 1
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "chevron.left")
                }
                Text(name)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(radius: 2.0)
                    .padding(EdgeInsets(top: 0, leading: 16.0, bottom: 0, trailing: 0))
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "video")
                }
            }
            .padding(.horizontal)
            .background(color)
            
            HStack(alignment: .center, spacing: 50) {
                Spacer()
                TabView(isSelected: Binding<Bool>(get: { selectedTab == 1 }, set: {_ in }), name: "Посты", color: color)
                    .onTapGesture { selectedTab = 1 }
                TabView(isSelected: Binding<Bool>(get: { selectedTab == 2  }, set: {_ in }), name: "Задания", color: color)
                    .onTapGesture {
                        selectedTab = 2
                    }
                TabView(isSelected: Binding<Bool>(get: { selectedTab == 3  }, set: {_ in }), name: "Материалы", color: color)
                    .onTapGesture { selectedTab = 3 }
                Spacer()
            }
            .padding(EdgeInsets(top: 16.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
            .background(color)
            
            switch selectedTab {
            case 1: PostsViewController()
            case 2: TasksViewController()
            default: Text("Материалы")
            }
            
            Spacer()
        }
        .background(.white)
        .frame(maxHeight: .infinity)
    }
}

struct TabView: View {
    @Binding var isSelected: Bool
    var name: String
    var color: Color
    
    var body: some View {
        if (isSelected) {
            Text(name)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 8.0, leading: 8.0, bottom: 8.0, trailing: 8.0))
                .background(.white)
                .roundedCorners(radius: 8.0, corners: [.topLeft, .topRight])
        } else {
            Text(name)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
                .shadow(radius: 2.0)
                .padding(EdgeInsets(top: 8.0, leading: 8.0, bottom: 8.0, trailing: 8.0))
                .background(color)
                .roundedCorners(radius: 8.0, corners: [.topLeft, .topRight])
        }
    }
}



struct TaskPreview: View {
    var title: String
    var deadline: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 12) {
                Text(title).font(.system(size: 20, weight: .bold)).padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                Text(deadline).font(.system(size: 15)).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            Spacer()
        }
        .background(Color(red: 251/255, green: 251/255, blue: 251/255))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.09), lineWidth: 2)
        )
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}



struct CreateTaskViewController: View {
    @State var title: String = ""
    @State var description: String = "Описание задания..."
    @State var date: Date = Date()
    @State var mark = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center) {
                Text("Заголовок:")
                TextField("", text: $title).textFieldStyle(RoundedBorderTextFieldStyle()).frame(maxWidth: 400)
            }
            DatePicker("Дедлайн:", selection: $date).frame(maxWidth: 250)
            HStack(alignment: .center) {
                Text("Предполагаемая оценка:")
                TextField("", text: $mark).textFieldStyle(RoundedBorderTextFieldStyle()).frame(maxWidth: 50)
            }
            TextEditor(text: $description).font(.system(size: 14)).padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 0))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.09), lineWidth: 2)
                )
            Button("Назначить"){}.keyboardShortcut(.defaultAction).padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
            
        }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
    }
}



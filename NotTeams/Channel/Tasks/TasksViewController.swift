//
//  TasksViewController.swift
//  NotTeams
//
//

import Foundation

struct TasksViewController: View {
    enum TaskStatus: String, CaseIterable, Identifiable {
        case active, finished
        var id: Self { self }
    }
    
    @State private var selectedStatus: TaskStatus = .active
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedStatus) {
                Text("Активные").tag(TaskStatus.active)
                Text("Выполненные").tag(TaskStatus.finished)
            }
            .pickerStyle(.segmented)
            .frame(width: 260)
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 8, trailing: 0))
            
            ScrollView {
                VStack(spacing: 20) {
                    TaskPreview(title: "Задание", deadline: "01.01.01 01:01")
                    TaskPreview(title: "Задание", deadline: "01.01.01 01:01")
                    TaskPreview(title: "Задание", deadline: "01.01.01 01:01")
                    TaskPreview(title: "Задание", deadline: "01.01.01 01:01")
                    TaskPreview(title: "Задание", deadline: "01.01.01 01:01")
                }
            }
        }
    }
}

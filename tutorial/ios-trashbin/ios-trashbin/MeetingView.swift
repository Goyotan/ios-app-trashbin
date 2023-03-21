//
//  ContentView.swift
//  ios-trashbin
//
//  Created by nebula on 2023/03/21.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
//        ProgressView(value: 10, total: 50)
        
        VStack {
            ProgressView(value: 5, total: 30)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
                
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remain")
            .accessibilityValue("10 minutes")
            
            Circle().strokeBorder(lineWidth: 24)
            
            HStack() {
                Text("Speaker 1 of 3")
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}

//
//  ContentView.swift
//  Notification
//
//  Created by Etienne Vautherin on 04/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ViewModel()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Notify", action: NotificationCenterDelegate.notify)
        }
        .onAppear(perform: NotificationCenterDelegate.requestAuthorization)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

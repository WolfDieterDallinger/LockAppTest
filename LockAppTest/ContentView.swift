//
//  ContentView.swift
//  LockAppTest
//
//  Created by Wolf Dieter Dallinger on 20.06.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink("Standard") {
                        DetailView(title: "Standard")
                    }
                    NavigationLink(".unlockOnFirstStart()") {
                        DetailView(title: ".unlockOnFirstStart()")
                            .unlockOnFirstStart()
                    }
                    NavigationLink(".unlockWithoutAuthentication()") {
                        DetailView(title: ".unlockWithoutAuthentication()")
                            .unlockWithoutAuthentication()
                    }
                    NavigationLink(".unlockWithoutAuthenticationIfPasswordNotSet()") {
                        DetailView(title: ".unlockWithoutAuthenticationIfPasswordNotSet()")
                            .unlockWithoutAuthenticationIfPasswordNotSet()
                    }
                } footer: {
                    Text("The isLocked value ist only written if you change the value using the LockButton. As long as you don‘t press the button (or in addition in your own app write to one of the two dynamic properties) the value is nil and the actual default value which should not change in your app is used instead.")
                }
            }
            .navigationTitle("LockAppTest")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


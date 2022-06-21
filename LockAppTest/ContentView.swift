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
                NavigationLink("Standard") {
                    Standard()
                }
                NavigationLink(".unlockOnFirstStart()") {
                    UnlockOnFirstStart()
                }
                NavigationLink(".unlockWithoutAuthentication()") {
                    UnlockWithoutAuthentication()
                }
                NavigationLink(".unlockWithoutAuthenticationIfPasswordNotSet()") {
                    UnlockWithoutAuthenticationIfPasswordNotSet()
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

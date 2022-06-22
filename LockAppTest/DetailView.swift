//
//  DetailView.swift
//  LockAppTest
//
//  Created by Wolf Dieter Dallinger on 20.06.22.
//

import LockApp
import SwiftUI

struct DetailView: View {
    @IsLocked private var isLocked
    let title: String
    
    var body: some View {
        Form {
            Text(isLocked ? "Locked" : "Unlocked")
        }
        .navigationTitle(Text(title))
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                LockButton()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Standard")
    }
}

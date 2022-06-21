//
//  UnlockWithoutAuthentication.swift
//  LockAppTest
//
//  Created by Wolf Dieter Dallinger on 20.06.22.
//

import LockApp
import SwiftUI

struct UnlockWithoutAuthentication: View {
    @IsLocked private var isLocked
    
    var body: some View {
        Form {
            Text(isLocked ? "Locked" : "Unlocked")
        }
        .navigationTitle(Text("UnlockWithoutAuthentication"))
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                LockButton()
                    .unlockWithoutAuthentication()
            }
        }
    }
}

struct UnlockWithoutAuthentication_Previews: PreviewProvider {
    static var previews: some View {
        UnlockWithoutAuthentication()
    }
}

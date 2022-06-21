//
//  UnlockOnFirstStart.swift
//  LockAppTest
//
//  Created by Wolf Dieter Dallinger on 20.06.22.
//

import LockApp
import SwiftUI

struct UnlockOnFirstStart: View {
    @IsLocked private var isLocked
    
    var body: some View {
        Form {
            Text(isLocked ? "Locked" : "Unlocked")
        }
        .navigationTitle(Text("UnlockOnFirstStart"))
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                LockButton()
            }
        }
        .unlockOnFirstStart()
    }
}

struct UnlockOnFirstStart_Previews: PreviewProvider {
    static var previews: some View {
        UnlockOnFirstStart()
    }
}

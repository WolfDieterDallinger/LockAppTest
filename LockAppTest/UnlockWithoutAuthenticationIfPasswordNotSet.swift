//
//  UnlockWithoutAuthenticationIfPasswordNotSet.swift
//  LockAppTest
//
//  Created by Wolf Dieter Dallinger on 20.06.22.
//

import LockApp
import SwiftUI

struct UnlockWithoutAuthenticationIfPasswordNotSet: View {
    @IsLocked private var isLocked
    
    var body: some View {
        Form {
            Text(isLocked ? "Locked" : "Unlocked")
        }
        .navigationTitle(Text("UnlockWithoutAuthenticationIfPasswordNotSet"))
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                LockButton()
                    .unlockWithoutAuthenticationIfPasswordNotSet()
            }
        }
    }
}

struct UnlockWithoutAuthenticationIfPasswordNotSet_Previews: PreviewProvider {
    static var previews: some View {
        UnlockWithoutAuthenticationIfPasswordNotSet()
    }
}

//
//  Standard.swift
//  LockAppTest
//
//  Created by Wolf Dieter Dallinger on 20.06.22.
//

import LockApp
import SwiftUI

struct Standard: View {
    @IsLocked private var isLocked
    
    var body: some View {
        Form {
            Text(isLocked ? "Locked" : "Unlocked")
        }
        .navigationTitle(Text("Standard"))
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                LockButton()
            }
        }
    }
}

struct Standard_Previews: PreviewProvider {
    static var previews: some View {
        Standard()
    }
}

//
//  CircleGroup.swift
//  Restart
//
//  Created by jmaronde on 2/11/22.
//

import SwiftUI

struct CircleGroup: View {
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZStack
    }
}

struct CircleGroup_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            CircleGroup(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}

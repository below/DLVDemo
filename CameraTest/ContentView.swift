//
//  ContentView.swift
//  CameraTest
//
//  Created by Alexander v. Below on 28.06.21.
//

import SwiftUI

struct ContentView: View {
    @State var cameras = [String]()
    var body: some View {
        VStack {
            Button("Get Cameras") {
                cameras = getDevices()
            }
            .padding()
            List(cameras, id: \.self) { camera in
                Text(camera)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cameras: ["Facetime HD", "OBS"])
    }
}

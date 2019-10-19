//
//  ApiImageView.swift
//  AsyncLoadingImageFromApi
//
//  Created by SchwiftyUI on 10/19/19.
//  Copyright © 2019 SchwiftyUI. All rights reserved.
//

import SwiftUI

struct ApiImageView: View {
    @ObservedObject var apiImage = ApiImage()
    
    var body: some View {
        Group {
            if apiImage.dataHasLoaded {
                Image(uiImage: apiImage.image!)
            } else {
                Text("Loading Data")
            }
        }.onAppear {
            self.apiImage.loadImageFromApi(urlString: "https://api.nasa.gov/planetary/apod?api_key=eaRYg7fgTemadUv1bQawGRqCWBgktMjolYwiRrHK")
        }
    }
}

struct ApiImageView_Previews: PreviewProvider {
    static var previews: some View {
        ApiImageView()
    }
}

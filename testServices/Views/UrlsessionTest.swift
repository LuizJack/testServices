//
//  Urlsession.swift
//  testServices
//
//  Created by Luiz Camargo on 28/05/23.
//

import SwiftUI

struct UrlsessionTest: View {
    var body: some View {
        Text("UrlsessionTest !!! ")
      Spacer()
            .onAppear(){
            let networking = Networking()
                networking.fetchData()
            }
    }
}

struct UrlsessionTest_Previews: PreviewProvider {
    static var previews: some View {
        UrlsessionTest()
    }
}

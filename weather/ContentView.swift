//
//  ContentView.swift
//  weather
//
//  Created by ธนัท แสงเพิ่ม on 6/9/2564 BE.
//

import SwiftUI

struct weather:Hashable{
    let date:String
    let status:String
}

struct ContentView: View {
    
    let test = [weather(date:"2020-06-28", status: "Fog")   ,weather(date:"2020-06-29", status: "Thunderstorm") ,weather(date:"2020-06-30", status: "Broken clouds")    ,weather(date:"2020-07-01", status: "Light shower snow")    ,weather(date:"2020-07-02", status: "Extreme rain") ,weather(date:"2020-07-03", status: "Clear sky")    ,weather(date:"2020-07-04", status: "Scattered clouds") ,weather(date:"2020-07-05", status: "Shower rain")]
    
    var body: some View {
        List{
            ForEach(test,id:\.self){ day in
                HStack{
                    VStack(alignment: .leading){
                        Text(day.date)
                        Text(day.status)
                    }
                    Spacer()
                    imageView(status: day.status)
                }
            }
        }
    }
}

struct imageView: View {
    let status:String
    var body: some View{
        if status == "Fog"{
            Image("50d")
        }else if status == "Thunderstorm"{
            Image("11d")
        }else if status == "Broken clouds"{
            Image("04d")
        }else if status == "Light shower snow"{
            Image("13d")
        }else if status == "Extreme rain"{
            Image("10d")
        }else if status == "Clear sky"{
            Image("01d")
        }else if status == "Scattered clouds"{
            Image("13d")
        }else if status == "Shower rain"{
            Image("09d")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

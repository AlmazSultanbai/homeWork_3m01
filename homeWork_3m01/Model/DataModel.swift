//
//  DataModel.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 6/7/23.
//

import UIKit

struct DataModel {
    
    var image: UIImageView
    var title: String
    var descriptiion: String
}
struct SetData {
    
    var data: [DataModel] = [
        DataModel(image: UIImageView.init(image: UIImage(named: "audi")), title: "Best of Audi", descriptiion: " Audi Q7 is now best of AUDI car models of all time. Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "gx2024")), title: "All New Lexus GX", descriptiion: " Lexus anounsed that they are going to show their new model on Jeneve car Show Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "lambo")), title: "Lambo Goes Crazy", descriptiion: "There are so much Labborgini fans who wants to buy it so that manufacturer doesnt have ability to manufacture all in time. Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "mersE350")), title: "The best of all Times", descriptiion: " Mersedes Benz car dealers think that its model E350 2012 was the most popular of all times Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "retroCar")), title: "Very Rare", descriptiion: " There are some very rare cars thet you ivevn couldnt think Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "wrangler")), title: "Strongest Wrngler", descriptiion: " Jeep wrangler is the strogest suv in the world. Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "toyotaPrado")), title: "As Good As Posible", descriptiion: " Toyota Prado as always is as good as possible. Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "ferrari")), title: "Fast Ferrari", descriptiion: " This month Ferrari introdused its new fastest model to the world. Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "bugatti")), title: "Bugatti", descriptiion: "Bugatti is know to the world as the most expensive car. Its made unique and modern and well build. Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "jeep")), title: "Hero returns", descriptiion: " Everything goes chat and every body can make it happen if he want it truely"),
        DataModel(image: UIImageView.init(image: UIImage(named: "tesla")), title: "Electric is Good", descriptiion: "Electric cars are build very well these days so you can buy it no doubt about it Everything goes chat and every body can make it happen if he want it truely")
    ]
}

import 'package:flutter/material.dart';

//建立一個類別叫做HomeScreen，並繼承StatelessWidget
class HomeScreen extends StatelessWidget {
  @override
  //StatelessWidget有一個未實踐的build方法，故需在裡面實踐，並回傳一個Widget
  Widget build(BuildContext context) {
    //Scaffold是flutter中預設的Widget
    return Scaffold(
      //建立第一層Container
      body: Container(
        //第一層Container要求第二層Container要放在其的中上方
        alignment: Alignment.topCenter,
        //第一層Container長寬各為500
        width: 500,
        height: 500,
        //設定與瀏覽器邊界距離20像素(px)
        //margin是外距
        margin: EdgeInsets.all(20),
        //容器是紅色
        color: Colors.red,
        //建立第二層Container
        child: Container(
          //第二層Container要求第三層Container要在其的右下方
          alignment: Alignment.bottomRight,
          //長寬各200就好(即可完整放置在第一層Container內)
          width: 200,
          height: 200,
          //設定與第一層Container距離20像素(px)
          margin: EdgeInsets.all(20),
          color: Colors.amber,
          //建立第三層Container
          child: Container(
            //寬高各100就好(即可完整放置在第二個Container內)
            width: 100,
            height: 100,
            //設定與第二層Container距離20像素(px)
            //此處不用設定位置，該Container的位置是第二層指定的
            //若在這層設定位置，表示指定第四個Container需在該Container的甚麼位置
            margin: EdgeInsets.all(20),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

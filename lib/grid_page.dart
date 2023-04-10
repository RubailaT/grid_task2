import 'package:flutter/material.dart';
import 'package:grid_task2/model-grid.dart';

class GridTask extends StatelessWidget {
  const GridTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List GridItems=[
      Modelgrid(ico: Icons.backup, txt: "Backup"),
      Modelgrid(ico: Icons.alarm, txt: "Alarm"),
      Modelgrid(ico: Icons.mail, txt: "Email"),
      Modelgrid(ico: Icons.add, txt: "Add"),
      Modelgrid(ico: Icons.call, txt: "Call"),
      Modelgrid(ico: Icons.money, txt: "Money"),

    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xcff303E56),
        title: Text("INDHOLD",style:
      TextStyle(fontWeight:FontWeight.bold ),),),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: GridItems.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ) ,
            itemBuilder: (context,index){
            return Card(
              color: Colors.white60,
              // shape: OutlineInputBorder(
              //
              //
              //   borderRadius: BorderRadius.circular(5),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(GridItems[index].ico,size: 30,),
                  Text(GridItems[index].txt),
                ],
              ),
            );
            }

        ),
      )
      


    );
  }
}

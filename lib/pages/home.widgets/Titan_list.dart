import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/titan.dart';
import 'package:flutter_catalog/widgets/home_detail_page.dart';

class TitanList extends StatelessWidget{
  const TitanList({super.key});

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: TitanModel.items.length,
      itemBuilder: (context, index){
        final titan = TitanModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(titan: titan)),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(titan.image),
            ),
            title: Text(titan.name),
            subtitle: Text(titan.desc ?? ''),
          ),
        );
      },
    );
  }
}


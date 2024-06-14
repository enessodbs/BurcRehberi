import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenecekBurc;
  const BurcItem({super.key, required this.listelenecekBurc});

  @override
  Widget build(BuildContext context) {
    var myTextSyle = Theme.of(context).textTheme;
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: listelenecekBurc)));
        },
        leading: Image.asset("images/"+listelenecekBurc.burcKucukResim),
        title: Text(listelenecekBurc.burcAdi, style: myTextSyle.headlineSmall,),
        subtitle: Text(listelenecekBurc.burcTarihi),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink,),
      ),
    );
  }
}
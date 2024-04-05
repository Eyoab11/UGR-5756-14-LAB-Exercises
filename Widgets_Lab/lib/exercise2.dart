
import 'package:flutter/material.dart';

class exercise2 extends StatelessWidget{
  const exercise2({super.key});

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             const Icon(Icons.arrow_back),
             Container(
              color: Colors.grey,
              padding: const EdgeInsets.only(right: 50),
              width: 320,
              child: const Row(children: [
                Icon(Icons.search),
                Text('Search Product',)
              ]
              ),),
            const Row(children: [
             Icon(Icons.shopping_cart),
             Icon(Icons.notification_add)
            ],)
            
          ],
        ),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset('assets/cars.jpg'),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('\$8.6', style: TextStyle(fontWeight: FontWeight.bold)),
          Icon(Icons.favorite, color: Colors.grey)
        ],),
        const Text('BARDI Smart Light bulb Lamp Bohlam LED Wifi RGBWW 12W 12 watt Home IOT', style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
          Padding(
            padding: EdgeInsets.only(right: 25),
    
            child: Row(children: [
              Icon(Icons.star, color: Colors.amber),
              Text('5.0', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('(354)', style: TextStyle(color: Colors.grey))
            ],),
          ),
          Padding(
             padding: EdgeInsets.only(right: 25),
            child: Text('540 Sale', style: TextStyle(color: Colors.grey)),
          ),
          Row(children: [
            Icon(Icons.location_city, color: Colors.grey),
            Text('Brooklyn', style: TextStyle(color: Colors.grey))
          ],)
        ],),
        const Text('Variant', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        const Row(children: [
          Text('Size:'),
          Text('XS', style: TextStyle(fontWeight: FontWeight.bold))
        ],),
        Row(children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
            child: const Text('XS', style: TextStyle(color: Colors.white),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('S', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('M', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('L', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('XL', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
          child: const Text('XXL', style: TextStyle(color: Colors.black),),)                                    
        ],),
        const Row(children: [
          Text('Color:'),
          Text('RED', style: TextStyle(fontWeight: FontWeight.bold))
        ],),
        Row(children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
            child: const Text('RED', style: TextStyle(color: Colors.white),),),
            Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('BLACK', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('GREEN', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('WHITE', style: TextStyle(color: Colors.black),),),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
          child: const Text('BLUE', style: TextStyle(color: Colors.black),),),                                   
        ],)
      ],),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          const Icon(Icons.comment),
          Container(
            child: const Text('Add to Shopping Cart') 
          ,)
        ],)
      ,),
      );
  }
}
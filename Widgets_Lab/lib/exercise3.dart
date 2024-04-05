import 'package:flutter/material.dart';

class exercise3 extends StatelessWidget {
  const exercise3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [Icon(Icons.arrow_back), Text('Order Details')],
          ),
        ),
        body: Column(children: [
          Container( color: Colors.white,
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.check),
                      Column(children: [
                        Text(
                          'Completed',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text('Order Completed 24 July 2024')
                      ])
                    ],
                  ),
                  Divider(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Order Id'), Spacer(), Text('#52')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Order date '),
                      Spacer(),
                      Text('20 July 2024')
                    ],
                  )
                ],
              )), SizedBox(height: 10,),
          Container(
              color: Colors.white,
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text('Purchased Items'),
                  Row(
                    children: [
                      Image.asset(
                        'assets/cars.jpg',
                        height: 50,
                        width: 100,
                      ),
                      Column(
                        children: [
                          Text('Blue t-shirt'),
                          Text('Size: L'),
                          Text('50.00')
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [Text('Color: yellow'), Text('Qty:1')],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/cars.jpg',
                        height: 50,
                        width: 100,
                      ),
                      Column(
                        children: [
                          Text('Hoodie ROse'),
                          Text('Size: L'),
                          Text('50.00')
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [Text('Color: yellow'), Text('Qty:1')],
                      )
                    ],
                  ),
                ],
              )), SizedBox(height: 10),
          Container( padding:EdgeInsets.all(30.0), color: Colors.white,
              child: (Column( 
            children: [
              Text('Shiping Information', style: TextStyle(fontSize: 20)),
              Row(
                children: [Text('Name'), Spacer(), Text('jacob Jones')],
              ),
                Row(
                children: [Text('Phone Number'), Spacer(), Text('(105)555_3652')],
              ),
                Row(
                children: [Text('Address'), Spacer(), Text('6140 Sunbrook')],
              ),
                Row(
                children: [Text('Shipment'), Spacer(), Text('Economy')],
              ),
            ],
          ))), SizedBox(height: 10,),
          Container(padding:EdgeInsets.all(30.0), color: Colors.white,
          child: Column(children: [ Text('Payment Information', style: TextStyle(fontSize: 20)),
              Row(
                children: [Text('Payment Method'), Spacer(), Text('cash on delivery')],
              ),],))
        ]), );
  }
}

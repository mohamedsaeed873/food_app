import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../config.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget getTimeLine() {
    double heightcount = 70;
    return Container(
      color: Colors.grey[50],
      margin: const EdgeInsets.only(top: 10, bottom: 80),
      child: Column(
        children: [
          SizedBox(
            height: heightcount,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: const IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: const Text(
                          'تأكيد الطلبية',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                    const Icon(
                      Icons.restaurant,
                        color: primarycolor,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: heightcount,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: const IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      'تجهيز الطلبية',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.restaurant,
                        color: primarycolor,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: heightcount,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: const IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      'تم تجهيز الطلبية في المطعم',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.restaurant,
                      color:  primarycolor,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: heightcount,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: const IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      'الدليفري استلم الطلبية',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.restaurant,
                      color: primarycolor,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: heightcount,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: const IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      'الدليفري قريب من المكان',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.restaurant,
                      color:  primarycolor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInfoDelivery() {
    return ListTile(
      leading: Container(
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4JMXVymKKgetkPIWVvWZ1_tdoC7LME3apbg&usqp=CAU'),
              fit: BoxFit.cover,
            )),
      ),
      title: const Text('الاسم'),
      subtitle: const Text(
        'محمد احمد',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18.0),
      ),
      trailing: SizedBox(
        width: 50.0,
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.star_border,
                  color: Colors.orange,
                ),
                Text(
                  '4.0',
                  style: TextStyle(color:  primarycolor,),
                ),
              ],
            ),
            const Text(
              '144 ',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "تتبع الطلبية",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          Row(
            children: const [
              Text(
                "محادثة",
                style: TextStyle(color:  primarycolor, fontSize: 20),
              ),
              Icon(
                Icons.chat,
                color:  primarycolor,
              )
            ],
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 30.0),
        children: [
          const Text(
            "الوقت المقدر لاستلام الطلبية",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Text("05:30:00",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: primarycolor),
              textAlign: TextAlign.center),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          getInfoDelivery(),
          getTimeLine(),
        ],
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[200],
          ),
          child: const Text(
            'الغاء الطلبية',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

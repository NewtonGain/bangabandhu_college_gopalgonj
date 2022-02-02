import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PrefetchImageDemo extends StatefulWidget {
  const PrefetchImageDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageDemoState();
  }
}

class _PrefetchImageDemoState extends State<PrefetchImageDemo> {
  final List<String> images = [
    'https://scontent.fdac116-1.fna.fbcdn.net/v/t1.18169-9/26196206_549575332101591_7176588407871057695_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8631f5&_nc_ohc=CCZ93f8JNWIAX9mkBN-&_nc_oc=AQl-NrltGo7R6U_wbOYYeejlTqEBib1P5J0I-b4hjnUrSIGm6yCs-Se8QczMIhdQO4o&_nc_ht=scontent.fdac116-1.fna&oh=00_AT-pXrRPClG6vWFSxhnA7mrpL5BE19wRyqlHIFzaM2cwTA&oe=621FD7E5',
    'https://scontent.fdac116-1.fna.fbcdn.net/v/t31.18172-8/18595341_130041054231797_8991708017985126114_o.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_ohc=Fo2gWsdiAtwAX-2_4se&_nc_ht=scontent.fdac116-1.fna&oh=00_AT_hEcG8iry5arTeAVMs9ijq7b5moWeqxq0dHR2c1lwf1Q&oe=62205DDF',
    'https://scontent.fdac116-1.fna.fbcdn.net/v/t39.30808-6/267552133_1062750787846310_7958820391948113996_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=v5QY2uO4I80AX8Fx904&_nc_ht=scontent.fdac116-1.fna&oh=00_AT-1tvOz1wLEyoBqliFnFaRUnJLNpFkEmg8jvzRpU_MfRw&oe=61FFF662',
    'https://scontent.fdac116-1.fna.fbcdn.net/v/t39.30808-6/267693853_444645067257171_8606005158624696634_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=b9115d&_nc_ohc=Fc5Nr0lKAjgAX8UAmDy&_nc_ht=scontent.fdac116-1.fna&oh=00_AT-fkprNd04siwWQhZhzcdGrLWnVY2PHk6Sq95QUjJ0stA&oe=61FE9841',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC7WzDkoiovxRvZ7_i4ENo0ykqg8mZbLciYg&usqp=CAU',
  ];

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      for (var imageUrl in images) {
        precacheImage(NetworkImage(imageUrl), context);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return Container(
            child: Center(
                child: Image.network(images[index],
                    fit: BoxFit.cover, width: 1000)),
          );
        },
      )),
    );
  }
}

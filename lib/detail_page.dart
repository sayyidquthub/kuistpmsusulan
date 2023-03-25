
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


// ignore: camel_case_types
class detailPage extends StatelessWidget {
  final String name;
  final String releaseDate;
  final List<String> tags;
  final String price;
  final String about;
  final List<String> imageUrls;
  final String reviewAverage;
  final String reviewCount;
  final String linkStore;

  const detailPage({
    Key? key,
    required this.name,
    required this.releaseDate,
    required this.tags,
    required this.price,
    required this.about,
    required this.imageUrls,
    required this.reviewAverage,
    required this.reviewCount,
    required this.linkStore,
  }) : super(key: key);

  // ignore: non_constant_identifier_names
  WidgetBuild(BuildContext context){
    return scaffold(
      AppBar:AppBar(
        backgroundColor: const Color.fromRGBO(255,140,0,100),
        title: const Text ('Game Store'),
        actions: [LikeButton()],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              Text(releaseDate, style: const TextStyle(color: Colors.grey),),
              const SizedBox(height: 16,),
              Text(price, style: const TextStyle(color: Colors.grey),),
              const SizedBox(height: 16,),
              Text("$tags", style: const TextStyle(color: Colors.grey),),
              const SizedBox(height: 16,),
              Text("$reviewAverage | $reviewCount", style : const TextStyle(color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }

}

class LikeButton {
}

    )

  }

}

// ignore: non_constant_identifier_names
scaffold({AppBar? AppBar, required SingleChildScrollView body}) {
}

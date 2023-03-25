import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'package:kuis_praktpm/game_store.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('GAME STORE'),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _createListCard(),
        color: Colors.lightBlue,
      ),
    );
  }

  Widget _createListCard() {
    var GameStore = gameList;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: gameList.length,
      itemBuilder: (BuildContext context, int index) {
        return _createCard(gameList[index], context);
      },
    );
  }

  Widget _createCard(GameStore data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
              albumName : data.name,
              releaseDate : data.releaseDate,
              tags : data.tags,
              price : data.price,
              about : data.about
              imageUrls : data.imageUrls,
              reviewAverage : data.reviewAverage,
              linkStore : data.linkStore,

            );
          }));
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child : Container(
                  child: Image.network(
                    data.imageUrls,
                    fit: BoxFit.fitWidth,
                    height: 400,
                    width: 250,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      data.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

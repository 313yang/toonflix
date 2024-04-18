import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Theme.of(context).cardColor,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Today's Toon's",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return webtoonList(snapshot);
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView webtoonList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        final webtoon = snapshot.data![index];
        return Webtoon(
          thumb: webtoon.thumb,
          title: webtoon.title,
          id: webtoon.id,
        );
      },
    );
  }
}

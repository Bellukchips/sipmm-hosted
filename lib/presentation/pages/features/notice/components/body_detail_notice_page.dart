part of '../detail_notice_page.dart';

class BodyDetailNoticePage extends StatefulWidget {
  final News news;
  const BodyDetailNoticePage({super.key, required this.news});

  @override
  State<BodyDetailNoticePage> createState() => _BodyDetailNoticePageState();
}

class _BodyDetailNoticePageState extends State<BodyDetailNoticePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: Text(
              '${widget.news.title}',
              style: FontApp.primaryStyle.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Linkify(
            onOpen: (link) async {
              LaunchUrl.launchInBrowser(link.url);
            },
            text: "${widget.news.desc}",
            style: FontApp.primaryStyle.copyWith(fontSize: 15),
            textAlign: TextAlign.justify,
            linkStyle: const TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}

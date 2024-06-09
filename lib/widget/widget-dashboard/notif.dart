import 'package:flutter/material.dart';

class Notif extends StatefulWidget {
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Text("Notification")
          ],
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.all(10),// Ganti dengan warna yang Anda inginkan
        child: Column(
          children: <Widget>[
            Flexible(
                child:
                Card(
                  child: ListTile(
                    leading: Icon(Icons.people_alt_rounded),
                    title: Text("Promo terbatas! Pesan potongan rambutmu melalui aplikasi kami sekarang dan dapatkan diskon eksklusif!",
                    overflow:  TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
              )
            ),
            Flexible(
                child:
                Card(
                  child: ListTile(
                    leading: Icon(Icons.people_alt_rounded),
                    title: Text("Promo terbatas! Pesan potongan rambutmu melalui aplikasi kami sekarang dan dapatkan diskon eksklusif!",
                      overflow:  TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                )
            ),
            Flexible(
                child:
                Card(
                  child: ListTile(
                    leading: Icon(Icons.people_alt_rounded),
                    title: Text("Promo terbatas! Pesan potongan rambutmu melalui aplikasi kami sekarang dan dapatkan diskon eksklusif!",
                      overflow:  TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

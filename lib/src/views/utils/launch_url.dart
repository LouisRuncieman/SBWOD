import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  const url = 'https://www.instagram.com/sandbagwod/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

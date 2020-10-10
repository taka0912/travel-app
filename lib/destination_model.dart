import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String prefectures;
  String description;
  List<Activity>activities;

  Destination({
   this.imageUrl,
   this.city,
   this.prefectures,
   this.description,
   this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'images/karuizawa.jpeg',
    name: '軽井沢',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am','11:00 am'],
    rating: 5,
    price: 1500,
  ),

  Activity(
    imageUrl: 'images/hokkaido.jpeg',
    name: '北海道',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am','11:00 am'],
    rating: 5,
    price: 2000,
  ),

  Activity(
    imageUrl: 'images/kinkakuzi.jpg',
    name: '金閣寺',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am','11:00 am'],
    rating: 5,
    price: 1200,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'images/osakazyou.jpg',
    city: '大阪市',
    prefectures: '大阪府',
    description: 'とても魅力的で素敵なお城。春になると桜がとてもきれいです。',
    activities: activities,
  ),

  Destination(
    imageUrl: 'images/raimon.png',
    city: '浅草',
    prefectures: ' 東京都',
    description: '迫力があり、多くの観光客が訪れます。たくさんのお店があり賑やかです。',
    activities: activities,
  ),

  Destination(
    imageUrl: 'images/tunosima.jpg',
    city: '下関市',
    prefectures: '山口県',
    description: 'ツーリングで角島大橋を渡りに来たり、角島の綺麗な海が人気。',
    activities: activities,
  ),

  Destination(
    imageUrl: 'images/kiyomizudera.jpg',
    city: '東山',
    prefectures: '京都府',
    description: '全国の修学旅行生や観光客であふれています。秋の紅葉はとても綺麗です。',
    activities: activities,
  ),
];
class Hotel{
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
 });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'images/teikoku.jpg',
    name: '帝国ホテル',
    address: '東京都千代田区内幸町1丁目1-1',
    price: 6000,
  ),

  Hotel(
    imageUrl: 'images/roiyaru.jpg',
    name: 'ロイヤルクラシック大阪',
    address: '大阪府大阪市中央区難波4丁目3',
    price: 5000,
  ),

  Hotel(
    imageUrl: 'images/daiwaroinetto.jpg',
    name: 'ダイワロイネットホテル',
    address: '京都府京都市下京区東塩小路町707-2',
    price: 4000,
  ),

  Hotel(
    imageUrl: 'images/uminoie.jpg',
    name: '海の家',
    address: '山口県下関市長府外浦町２－１',
    price: 3500,
  ),
];
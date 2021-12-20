import '../entity/k_entity.dart';

class KLineEntity extends KEntity {
  double open;
  double high;
  double low;
  double close;
  double vol;
  double amount;
  int count;
  int id;

  KLineEntity({
    this.open,
    this.high,
    this.low,
    this.close,
    this.vol,
    this.amount,
    this.count,
  });

  KLineEntity.fromJson(Map<String, dynamic> json) {
    open = (json['open'] as num)?.toDouble();
    high = (json['high'] as num)?.toDouble();
    low = (json['low'] as num)?.toDouble();
    close = (json['close'] as num)?.toDouble();
    vol = (json['vol'] as num)?.toDouble();
    amount = (json['amount'] as num)?.toDouble();
    count = (json['count'] as num)?.toInt();
    id = (json['id'] as num)?.toInt();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['open'] = this.open;
    data['close'] = this.close;
    data['high'] = this.high;
    data['low'] = this.low;
    data['vol'] = this.vol;
    data['amount'] = this.amount;
    data['count'] = this.count;
    return data;
  }

  @override
  String toString() {
    return 'MarketModel{open: $open, high: $high, low: $low, close: $close, vol: $vol, id: $id}';
  }

  KLineEntity.fromOKEXJson(List<String> json) {
    print(json);
    open = double.parse(json[1]);
    high = double.parse(json[1]);
    low = double.parse(json[1]);
    close = double.parse(json[1]);
    vol = double.parse(json[1]);
    amount = 0;
    count = 0;
    id = 0;
  }
}

class Sensor{
  String tds;
  String doAir;
  String suhuAir;
  String suhuUdara;
  String suhuRuangan;
  String ph;

  Sensor(this.tds, this.doAir, this.suhuAir, this.suhuUdara, this.suhuRuangan, this.ph);

  Sensor.fromJson(Map<String, dynamic> json)
      : tds = json['tds'],
        doAir = json['do_air'],
        suhuAir = json['suhu_air'],
        suhuUdara = json['suhu_udara'],
        suhuRuangan = json['suhu_ruangan'],
        ph = json['ph'];

  Map<String, dynamic> toJson() => {
        'tds': tds,
        'do_air': doAir,
        'suhu_air': suhuAir,
        'suhu_udara': suhuUdara,
        'suhu_ruangan': suhuUdara,
        'ph': suhuUdara,
      };
}

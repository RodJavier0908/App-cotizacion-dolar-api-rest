class Cambios {
  Dolarpy? dolarpy;
  String? updated;

  Cambios({this.dolarpy, this.updated});

  Cambios.fromJson(Map<String, dynamic> json) {
    dolarpy =
    json['dolarpy'] != null ? Dolarpy.fromJson(json['dolarpy']) : null;
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dolarpy != null) {
      data['dolarpy'] = this.dolarpy!.toJson();
    }
    data['updated'] = this.updated;
    return data;
  }
}

class Dolarpy {
  Amambay? amambay;
  Bcp? bcp;
  Amambay? bonanza;
  Amambay? cambiosalberdi;
  Amambay? cambioschaco;
  Amambay? eurocambios;
  Amambay? gnbfusion;
  Amambay? interfisa;
  Amambay? lamoneda;
  Amambay? maxicambios;
  Amambay? mundialcambios;
  Amambay? mydcambios;
  Amambay? set;
  Amambay? vision;

  Dolarpy(
      {this.amambay,
        this.bcp,
        this.bonanza,
        this.cambiosalberdi,
        this.cambioschaco,
        this.eurocambios,
        this.gnbfusion,
        this.interfisa,
        this.lamoneda,
        this.maxicambios,
        this.mundialcambios,
        this.mydcambios,
        this.set,
        this.vision});

  Dolarpy.fromJson(Map<String, dynamic> json) {
    amambay =
    json['amambay'] != null ? new Amambay.fromJson(json['amambay']) : null;
    bcp = json['bcp'] != null ? new Bcp.fromJson(json['bcp']) : null;
    bonanza =
    json['bonanza'] != null ? new Amambay.fromJson(json['bonanza']) : null;
    cambiosalberdi = json['cambiosalberdi'] != null
        ? new Amambay.fromJson(json['cambiosalberdi'])
        : null;
    cambioschaco = json['cambioschaco'] != null
        ? new Amambay.fromJson(json['cambioschaco'])
        : null;
    eurocambios = json['eurocambios'] != null
        ? new Amambay.fromJson(json['eurocambios'])
        : null;
    gnbfusion = json['gnbfusion'] != null
        ? new Amambay.fromJson(json['gnbfusion'])
        : null;
    interfisa = json['interfisa'] != null
        ? new Amambay.fromJson(json['interfisa'])
        : null;
    lamoneda = json['lamoneda'] != null
        ? new Amambay.fromJson(json['lamoneda'])
        : null;
    maxicambios = json['maxicambios'] != null
        ? new Amambay.fromJson(json['maxicambios'])
        : null;
    mundialcambios = json['mundialcambios'] != null
        ? new Amambay.fromJson(json['mundialcambios'])
        : null;
    mydcambios = json['mydcambios'] != null
        ? new Amambay.fromJson(json['mydcambios'])
        : null;
    set = json['set'] != null ? new Amambay.fromJson(json['set']) : null;
    vision =
    json['vision'] != null ? new Amambay.fromJson(json['vision']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.amambay != null) {
      data['amambay'] = this.amambay!.toJson();
    }
    if (this.bcp != null) {
      data['bcp'] = this.bcp!.toJson();
    }
    if (this.bonanza != null) {
      data['bonanza'] = this.bonanza!.toJson();
    }
    if (this.cambiosalberdi != null) {
      data['cambiosalberdi'] = this.cambiosalberdi!.toJson();
    }
    if (this.cambioschaco != null) {
      data['cambioschaco'] = this.cambioschaco!.toJson();
    }
    if (this.eurocambios != null) {
      data['eurocambios'] = this.eurocambios!.toJson();
    }
    if (this.gnbfusion != null) {
      data['gnbfusion'] = this.gnbfusion!.toJson();
    }
    if (this.interfisa != null) {
      data['interfisa'] = this.interfisa!.toJson();
    }
    if (this.lamoneda != null) {
      data['lamoneda'] = this.lamoneda!.toJson();
    }
    if (this.maxicambios != null) {
      data['maxicambios'] = this.maxicambios!.toJson();
    }
    if (this.mundialcambios != null) {
      data['mundialcambios'] = this.mundialcambios!.toJson();
    }
    if (this.mydcambios != null) {
      data['mydcambios'] = this.mydcambios!.toJson();
    }
    if (this.set != null) {
      data['set'] = this.set!.toJson();
    }
    if (this.vision != null) {
      data['vision'] = this.vision!.toJson();
    }
    return data;
  }
}

class Amambay {
  num? compra;
  num? venta;

  Amambay({this.compra, this.venta});

  Amambay.fromJson(Map<String, dynamic> json) {
    compra = json['compra'];
    venta = json['venta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compra'] = this.compra;
    data['venta'] = this.venta;
    return data;
  }
}

class Bcp {
  double? compra;
  double? referencialDiario;
  double? venta;

  Bcp({this.compra, this.referencialDiario, this.venta});

  Bcp.fromJson(Map<String, dynamic> json) {
    compra = json['compra'];
    referencialDiario = json['referencial_diario'];
    venta = json['venta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compra'] = this.compra;
    data['referencial_diario'] = this.referencialDiario;
    data['venta'] = this.venta;
    return data;
  }
}

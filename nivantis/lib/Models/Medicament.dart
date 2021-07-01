import 'dart:convert';

class Medicament {
  String id;
  String name;
  double prixAchatBrut;
  double prixAchatnet;
  double tauxDeRemise;
  double prixVenteNet;
  double coefficientMultiplicateur;

  Medicament({
    required this.id,
    required this.name,
    required this.prixAchatBrut,
    required this.prixAchatnet,
    required this.tauxDeRemise,
    required this.prixVenteNet,
    required this.coefficientMultiplicateur,
  });

  Medicament copyWith({
    String? id,
    String? name,
    double? prixAchatBrut,
    double? prixAchatnet,
    double? tauxDeRemise,
    double? prixVenteNet,
    double? coefficientMultiplicateur,
  }) {
    return Medicament(
      id: id ?? this.id,
      name: name ?? this.name,
      prixAchatBrut: prixAchatBrut ?? this.prixAchatBrut,
      prixAchatnet: prixAchatnet ?? this.prixAchatnet,
      tauxDeRemise: tauxDeRemise ?? this.tauxDeRemise,
      prixVenteNet: prixVenteNet ?? this.prixVenteNet,
      coefficientMultiplicateur:
          coefficientMultiplicateur ?? this.coefficientMultiplicateur,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'prixAchatBrut': prixAchatBrut,
      'prixAchatnet': prixAchatnet,
      'tauxDeRemise': tauxDeRemise,
      'prixVenteNet': prixVenteNet,
      'coefficientMultiplicateur': coefficientMultiplicateur,
    };
  }

  factory Medicament.fromMap(Map<String, dynamic> map) {
    return Medicament(
      id: map['id'],
      name: map['name'],
      prixAchatBrut: map['prixAchatBrut'],
      prixAchatnet: map['prixAchatnet'],
      tauxDeRemise: map['tauxDeRemise'],
      prixVenteNet: map['prixVenteNet'],
      coefficientMultiplicateur: map['coefficientMultiplicateur'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Medicament.fromJson(String source) =>
      Medicament.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Medicament(id: $id, name: $name, prixAchatBrut: $prixAchatBrut, prixAchatnet: $prixAchatnet, tauxDeRemise: $tauxDeRemise, prixVenteNet: $prixVenteNet, coefficientMultiplicateur: $coefficientMultiplicateur)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Medicament &&
        other.id == id &&
        other.name == name &&
        other.prixAchatBrut == prixAchatBrut &&
        other.prixAchatnet == prixAchatnet &&
        other.tauxDeRemise == tauxDeRemise &&
        other.prixVenteNet == prixVenteNet &&
        other.coefficientMultiplicateur == coefficientMultiplicateur;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        prixAchatBrut.hashCode ^
        prixAchatnet.hashCode ^
        tauxDeRemise.hashCode ^
        prixVenteNet.hashCode ^
        coefficientMultiplicateur.hashCode;
  }
}

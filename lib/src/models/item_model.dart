import 'package:equatable/equatable.dart';

abstract class ItemModel extends Equatable{
  final String idItem;
  final String descripcionItem;

  const ItemModel({required this.idItem, required this.descripcionItem});
}

class ModeloBase extends ItemModel {
  final String id;
  final String descripcion;

  const ModeloBase(this.id, this.descripcion) : super(idItem: id, descripcionItem: descripcion);

  @override
  List<Object?> get props => [id, descripcion];

  static List<ModeloBase> listaPrueba = [
    ModeloBase('1','uno'),
    ModeloBase('2','dos'),
    ModeloBase('3','tres'),
    ModeloBase('4','cuatro'),
    ModeloBase('5','cinco'),
    ModeloBase('6','seis'),
    ModeloBase('7','siete'),
  ];
}

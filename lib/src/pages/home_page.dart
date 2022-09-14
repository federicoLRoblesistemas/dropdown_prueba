import 'package:dropdawn_prueba/src/models/item_model.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_boton.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_busqueda.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_custom.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_divisores.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_estilo.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_formulario.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_imagen.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_seleccion_multiple.dart';
import 'package:dropdawn_prueba/src/widgets/drop_down_sin_estilo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          width: 700,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const DropDownSinEstilo(),
                const SizedBox(
                  height: 10,
                ),
                const DropDownEstilo(),
                const SizedBox(
                  height: 10,
                ),
                const DropDownDivisores(),
                const SizedBox(
                  height: 10,
                ),
                const DropDownSeleccionMultiple(),
                const SizedBox(
                  height: 10,
                ),
                const DropDownBusqueda(),
                const SizedBox(
                  height: 10,
                ),
                const DropDownBoton(),
                const SizedBox(
                  height: 10,
                ),
                const DropDownImagen(), // LongPress
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black26),
                  ),
                  margin: const EdgeInsets.only(top: 25, bottom: 20),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: 500,
                  child: const DropDownFormulario(),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomDropdownCustom(
                  dropdownItems: ModeloBase.listaPrueba,
                  value: ModeloBase.listaPrueba.first,
                  hint: 'Seleccione un item',
                  onChanged: (item) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

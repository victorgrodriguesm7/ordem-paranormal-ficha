import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';
import 'package:ordem_paranormal_ficha/src/modules/config/config_controller.dart';
import 'package:ordem_paranormal_ficha/src/modules/config/config_state.dart';
import 'package:ordem_paranormal_ficha/src/shared/enums/attributes.dart';
import 'package:ordem_paranormal_ficha/src/shared/extensions/list.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/attributes_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/custom_app_bar_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_custom_text_button_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_dropdown_button_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_horizontal_text_input_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_text_input_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/extensions/extensions.dart';

// TODO: add Image Uploader
class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  final ConfigController controller = Modular.get<ConfigController>();
  final double spacement = 4;

  @override
  void initState(){
    super.initState();
    ConfigState state = controller.value;

    if (state is InitialConfigState){
      state.loadCharacter();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: controller.isNewChar ? "Crie seu Personagem" : "Configurações"
      ),
      backgroundColor: AppColors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, state, child) {
            if (state is LoadingConfigState || state is InitialConfigState){
              return Center(
                child: CircularProgressIndicator(
                  color: AppColors.red[100],
                ),
              );
            }

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    DefaultTextInput(
                      label: "Nome:", 
                      onChanged: controller.changeName,
                      validator: controller.validateName,
                      initialValue: controller.character.name,
                    ),
                    SizedBox(height: spacement),
                    Row(
                      children: [
                        Flexible(
                          child: DefaultDropdownButton<String>(
                            label: "Classe:", 
                            items: [
                              DropdownItem<String>(
                                label: "Especialista",
                                value: "Especialista"
                              ),
                              DropdownItem<String>(
                                label: "Combatente",
                                value: "Combatente"
                              ),
                              DropdownItem<String>(
                                label: "Ocultista",
                                value: "Ocultista"
                              )
                            ],
                            onChanged: controller.changeClass,
                            value: controller.character.characterClass
                          )
                        ),
                        SizedBox(width: spacement),
                        Flexible(
                          child: DefaultTextInput(
                            label: "Nex:",
                            keyboardType: TextInputType.number,
                            onChanged: controller.changeNex,
                            initialValue: controller.character.nex.toString()
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: spacement),
                    DefaultHorizontalTextInput(
                      label: "Saúde Total",
                      keyboardType: TextInputType.number,
                      onChanged: controller.changeMaxLife,
                      initialValue: controller.character.maxLife.toString()
                    ),
                    SizedBox(height: spacement),
                    DefaultHorizontalTextInput(
                      label: "Sanidade Total",
                      keyboardType: TextInputType.number,
                      onChanged: controller.changeMaxSanity,
                      initialValue: controller.character.maxSanity.toString()
                    ),
                    SizedBox(height: spacement),
                    DefaultHorizontalTextInput(
                      label: "Pontos de Esforço",
                      keyboardType: TextInputType.number,
                      onChanged: controller.changeMaxEffortPoints,
                      initialValue: controller.character.maxEffortPoints.toString()
                    ),
                    SizedBox(height: spacement),
                    Text("Atributos", style: TextStyle(
                      color: AppColors.darkWhite,
                      fontSize: FontSizes.title
                    )),
                    ...List<Widget>.generate(
                      Attributes.values.length * 2,
                      (index){
                        if (index % 2 == 0){
                          return SizedBox(height: spacement);
                        }
                        int realIndex = (index / 2).floor();

                        Attributes attribute = Attributes.values[realIndex];

                        AttributesModel? att = controller.character.attributes.firstWhereOrNull(
                          (element) => element.attribute == attribute
                        );

                        return DefaultHorizontalTextInput(
                          label: attribute.toLabel(),
                          keyboardType: TextInputType.number,
                          onChanged: controller.changeAttribute(attribute),
                          initialValue: att?.amount.toString() ?? '0'
                        );
                      }
                    ),
                    CustomTextButton(
                      text: controller.isNewChar ? "Criar" : "Salvar", 
                      onPressed: controller.saveCharacter
                    ),
                    SizedBox(height: spacement)
                  ],
                )
              ),
            );
          }
        ),
      )
    );
  }
}
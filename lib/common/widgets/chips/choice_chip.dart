import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

   final String text;
   final bool selected;
   final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      /// Le label du ChoiceChip : Si 'isColor' est vrai, il n'affiche rien avec un SizedBox vide.
      /// Sinon, il affiche un texte.
      label: isColor ? const SizedBox() :  Text(text),
      /// Détermine si le chip est sélectionné ou non. La couleur du texte dépend de cet état.
      selected: selected,
      /// Fonction appelée lorsqu'un utilisateur sélectionne ou désélectionne le ChoiceChip.
      onSelected: onSelected,
      /// Style du label (texte) : Si le chip est sélectionné, la couleur du texte devient blanche.
      labelStyle: TextStyle(color: selected ? TColors.white : null ),
      /// L'avatar : Si 'isColor' est vrai, on utilise un conteneur circulaire avec une couleur de fond dynamique.
      /// Si 'isColor' est faux, aucun avatar n'est affiché (valeur null).
      avatar: isColor
          ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!)
          : null,
      /// La forme du chip : Si 'isColor' est vrai, le chip a une forme circulaire (CircleBorder).
      /// Sinon, il conserve la forme par défaut (valeur null).
      shape: isColor ? CircleBorder() : null,
      /// Padding du label : Si 'isColor' est vrai, il est défini à 0 pour ne pas avoir d'espace autour du label.
      /// Sinon, cette propriété n'est pas définie (valeur null).
      labelPadding: isColor ? EdgeInsets.all(0) : null,
      /// Padding général du chip : Si 'isColor' est vrai, il est défini à 0 pour minimiser l'espace interne.
      /// Sinon, cette propriété n'est pas définie (valeur null).
      padding: isColor ? EdgeInsets.all(0) : null,
      /// Couleur de fond : Si 'isColor' est vrai, la couleur de fond est déterminée par la fonction
      /// 'THelperFunctions.getColor(text)' qui récupère une couleur en fonction du texte.
      /// Si 'isColor' est faux, il n'y a pas de couleur de fond (valeur null).
      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
    );

  }
}
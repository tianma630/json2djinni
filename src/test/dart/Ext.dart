// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from main.djinni

import 'package:fish_serializable/serializable.dart';
import 'package:meta/meta.dart';

class Ext implements FishSerializable {
  String cardType;

  String cardKey;

  Ext({
    this.cardType,
    this.cardKey,
  });

  Ext.serializableCreator(ValueHolder holder) : 
    cardType = holder.readString(key: 'cardType'),
    cardKey = holder.readString(key: 'cardKey');

  static Ext staticCreator(ValueHolder holder) => 
    Ext.serializableCreator(holder);

  @override
  Creator<Ext> get creator => staticCreator;

  @override
  void writeTo(ValueHolder holder) {
    holder.writeString(key: 'cardType', val: cardType);
    holder.writeString(key: 'cardKey', val: cardKey);
  }
}
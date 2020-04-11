// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from main.djinni

import 'package:fish_serializable/serializable.dart';
import 'package:meta/meta.dart';
import 'Ext.dart';

class Benefits implements FishSerializable {
  String benefitCode;

  String benefitOriginPrice;

  String benefitPicUrl;

  String benefitTitle;

  String canWin;

  String channel;

  String directUrl;

  String effectiveInfo;

  Ext ext;

  String hasInventory;

  String idleCoinPrice;

  String inventoryRemain;

  String inventoryTotal;

  String limitedBenefit;

  String noticeMsg;

  String previewPicUrl;

  String startTime;

  String startTimeMillions;

  String strategyCode;

  String type;

  String useInfo;

  Benefits({
    this.benefitCode,
    this.benefitOriginPrice,
    this.benefitPicUrl,
    this.benefitTitle,
    this.canWin,
    this.channel,
    this.directUrl,
    this.effectiveInfo,
    this.ext,
    this.hasInventory,
    this.idleCoinPrice,
    this.inventoryRemain,
    this.inventoryTotal,
    this.limitedBenefit,
    this.noticeMsg,
    this.previewPicUrl,
    this.startTime,
    this.startTimeMillions,
    this.strategyCode,
    this.type,
    this.useInfo,
  });

  Benefits.serializableCreator(ValueHolder holder) : 
    benefitCode = holder.readString(key: 'benefitCode'),
    benefitOriginPrice = holder.readString(key: 'benefitOriginPrice'),
    benefitPicUrl = holder.readString(key: 'benefitPicUrl'),
    benefitTitle = holder.readString(key: 'benefitTitle'),
    canWin = holder.readString(key: 'canWin'),
    channel = holder.readString(key: 'channel'),
    directUrl = holder.readString(key: 'directUrl'),
    effectiveInfo = holder.readString(key: 'effectiveInfo'),
    ext = holder.readSerializable<Ext>(
      key: 'ext',
      creator: Ext.staticCreator
    ),
    hasInventory = holder.readString(key: 'hasInventory'),
    idleCoinPrice = holder.readString(key: 'idleCoinPrice'),
    inventoryRemain = holder.readString(key: 'inventoryRemain'),
    inventoryTotal = holder.readString(key: 'inventoryTotal'),
    limitedBenefit = holder.readString(key: 'limitedBenefit'),
    noticeMsg = holder.readString(key: 'noticeMsg'),
    previewPicUrl = holder.readString(key: 'previewPicUrl'),
    startTime = holder.readString(key: 'startTime'),
    startTimeMillions = holder.readString(key: 'startTimeMillions'),
    strategyCode = holder.readString(key: 'strategyCode'),
    type = holder.readString(key: 'type'),
    useInfo = holder.readString(key: 'useInfo');

  static Benefits staticCreator(ValueHolder holder) => 
    Benefits.serializableCreator(holder);

  @override
  Creator<Benefits> get creator => staticCreator;

  @override
  void writeTo(ValueHolder holder) {
    holder.writeString(key: 'benefitCode', val: benefitCode);
    holder.writeString(key: 'benefitOriginPrice', val: benefitOriginPrice);
    holder.writeString(key: 'benefitPicUrl', val: benefitPicUrl);
    holder.writeString(key: 'benefitTitle', val: benefitTitle);
    holder.writeString(key: 'canWin', val: canWin);
    holder.writeString(key: 'channel', val: channel);
    holder.writeString(key: 'directUrl', val: directUrl);
    holder.writeString(key: 'effectiveInfo', val: effectiveInfo);
    holder.writeSerializable(key: 'ext', val: ext);
    holder.writeString(key: 'hasInventory', val: hasInventory);
    holder.writeString(key: 'idleCoinPrice', val: idleCoinPrice);
    holder.writeString(key: 'inventoryRemain', val: inventoryRemain);
    holder.writeString(key: 'inventoryTotal', val: inventoryTotal);
    holder.writeString(key: 'limitedBenefit', val: limitedBenefit);
    holder.writeString(key: 'noticeMsg', val: noticeMsg);
    holder.writeString(key: 'previewPicUrl', val: previewPicUrl);
    holder.writeString(key: 'startTime', val: startTime);
    holder.writeString(key: 'startTimeMillions', val: startTimeMillions);
    holder.writeString(key: 'strategyCode', val: strategyCode);
    holder.writeString(key: 'type', val: type);
    holder.writeString(key: 'useInfo', val: useInfo);
  }
}
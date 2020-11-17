import 'package:flutter/material.dart';
import 'package:ilk/arayuz/alertview.dart';
import 'package:ilk/arayuz/basithttp.dart';
import 'package:ilk/arayuz/degisenwidget.dart';
import 'package:ilk/arayuz/dosyakonusu.dart';
import 'package:ilk/arayuz/imageviews.dart';
import 'package:ilk/arayuz/localjson.dart';
import 'package:ilk/arayuz/sharedkullanimi.dart';
import 'package:ilk/jsonkonusu.dart';
import './arayuz/ilksayfa.dart';
import './arayuz/hello.dart';
import './arayuz/scafford.dart';


void main(){
 runApp(MaterialApp(
   initialRoute: "/",
   routes: {
     "/": (context) => ScallfoldOgesi(),
     "/ilksayfa": (context) => Ilksayfa(title: "İlk Sayfa",),
     "/hello": (context) => Hello(),
     "/degisenwidget": (context) => DegisenWidget(),
     "/imageviews": (context) => ImageViews(),
     "/alertview": (context) => AlertView(),
     "/sharedkullanimi": (context) => SharedKullanimi(),
     "/dosyakonusu": (context) => DosyaIslemleri(kayitislemi: KayitIslemleri(),),
     "/jsonkonusu": (context) => JsonKonusu(),
     "/localjson": (context) => LocalJson(),
     "/basithttp": (context) => BasitHttp(),
   },
 ));
}
// Geture dedector ekran etkileşimi
//MVC modals views controllers (başlıklarına ayırıp inceliyoruz)
// Routes rotalar (sayfalar arası geçiş)
// State = durum less olumsuz Stateless durumsuz (uygulama boyunca değişmeyecek widgetlar)
// Stateful duruma göre değişebilen widgetler
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CrewController extends GetxController {
  List crews = [
    {
      "name": "Leo",
      "surname": "Stewens",
      "nationality": "British",
      "title": "Machine Skinny",
      "certificates": [
        "Engine Room Resource Management (ERM) Certification",
        "Electronic Chart Display And Information System (ECDIS) Certificate",
        "First Aid Certificate"
      ],
    },
    {
      "name": "Jack",
      "surname": "Byrne",
      "nationality": "Irish",
      "title": "Deck Master",
      "certificates": [
        "Electronic Chart Display And Information System (ECDIS) Certificate",
        "Radar Observation And Plotting Certificate",
        "First Aid Certificate",
        "Certificate Of Competency In Using A Fast Lifeboat",
        "Ship Security Officer Certificate",
      ],
    },
    {
      "name": "Paula",
      "surname": "Ozola",
      "nationality": "Latvian",
      "title": "Electrical Officer",
      "certificates": [
        "Electronic Chart Display And Information System (ECDIS) Certificate",
        "Certificate Of Using Automatic Radar Plotting Devices (ARPA)",
        "Security Awareness Certificate"
      ],
    },
    {
      "name": "Romane",
      "surname": "Lavigne",
      "nationality": "French",
      "title": "Captain",
      "certificates": [
        "Basic First Aid Certificate",
        "Personnel Safety And Social Responsibility Certificate",
        "Certificate Of Using Automatic Radar Plotting Devices (ARPA)",
        "Electronic Chart Display And Information System (ECDIS) Certificate",
        "Radar Observation And Plotting Certificate"
      ],
    },
    {
      "name": "Paul",
      "surname": "Müller",
      "nationality": "German",
      "title": "First Officer",
      "certificates": [
        "Certificate Of Using Automatic Radar Pointing Devices (ARPA)",
        "Certificate Of Personal Lifesaving Techniques At Sea",
        "Electronic Chart Display And Information System (ECDIS) Certificate",
        "Medical Care Certificate",
        "Personnel Safety And Social Responsibility Certificate"
      ],
    },
    {
      "name": "Francesco",
      "surname": "Rossi",
      "nationality": "Italian",
      "title": "Second Officer",
      "certificates": [
        "Certificate Of Competency To Use Lifesaving Equipment",
        "Certificate Of Using Automatic Radar Plotting Devices (ARPA)",
        "Fire Prevention And Fire Fighting Certificate",
        "Engine Room Resource Management (ERM) Certification",
        "Chemical Tanker Operations Certificate"
      ],
    },
    {
      "name": "Liam",
      "surname": "Smith",
      "nationality": "American",
      "title": "Third Officer",
      "certificates": [
        "Radar Observation And Plotting Certificate",
        "Liquefied Gas Tanker Operations Certificate",
        "Certificate Of Competency In Using A Fast Lifeboat",
        "Electronic Chart Display And Information System (ECDIS) Certificate",
        "Machinery Department Resource Management (ERM) Certificate"
      ],
    },
    {
      "name": "David",
      "surname": "Gruber",
      "nationality": "Austrian",
      "title": "Chief Machinist",
      "certificates": [
        "Engine Room Resource Management (ERM) Certification",
        "Medical Care Certificate",
        "Chemical Tanker Operations Certificate",
        "Bridge Resource Management (BRM) Certificate",
      ],
    },
    {
      "name": "Jules",
      "surname": "Monet",
      "nationality": "French",
      "title": "Second Machinist",
      "certificates": [
        "Engine Room Resource Management (ERM) Certification",
        "Oil Tanker Operations Certificate",
        "Oil Tanker Promotion Certificate"
      ],
    },
    {
      "name": "Daniek",
      "surname": "Lopen",
      "nationality": "Spanish",
      "title": "Third Machinist",
      "certificates": [
        "Engine Room Resource Management (ERM) Certification",
        "Chemical Tanker Promotion Certificate",
        "Chemical Tanker Operations Certificate",
      ],
    },
    {
      "name": "Damnyan",
      "surname": "Ivanov",
      "nationality": "Bulgarian",
      "title": "Fourth Machinist",
      "certificates": [
        "Engine Room Resource Management (ERM) Certification",
        "Chemical Tanker Promotion Certificate",
        "Medical Care Certificate",
        "First Aid certificate",
      ],
    },
    {
      "name": "Arlo",
      "surname": "Morales",
      "nationality": "Spanish",
      "title": "Master Skinny",
      "certificates": [
        "Chemical Tanker Promotion Certificate",
        "Oil Tanker Operations Certificate",
        "Certificate Of Competency In Using A Fast Lifeboat",
      ],
    },
    {
      "name": "Ben",
      "surname": "Meyer",
      "nationality": "German",
      "title": "Fiter",
      "certificates": [
        "Safety Introductory Certificate",
        "Medical Care Certificate",
      ],
    },
    {
      "name": "Greyson",
      "surname": "Scott",
      "nationality": "Canadian",
      "title": "Master Oiler",
      "certificates": [
        "Advanced Fire Fighting Certificate",
        "Oil Tanker Promotion Certificate",
        "Oil Tanker Operations Certificate",
        "Chemical Tanker Operations Certificate",
        "Liquefied Gas Tanker Operations Certificate"
      ],
    },
    {
      "name": "Andrea",
      "surname": "Bianchi",
      "nationality": "Italian",
      "title": "Chef",
      "certificates": [
        " Basic First Aid Certificate",
      ],
    },
    {
      "name": "Terentia",
      "surname": "Adamos",
      "nationality": "Greek",
      "title": "Steward",
      "certificates": [
        "Certificate Of Competency To Use Lifesaving Equipment",
        "Medical Care Certificate",
      ],
    },
    {
      "name": "Fernando",
      "surname": "Torres",
      "nationality": "Spanish",
      "title": "Intern",
      "certificates": [
        "Safety Introductory Certificate",
      ],
    },
  ];

  final GlobalKey<ExpansionTileCardState> firstKey = GlobalKey();

  final GlobalKey<ExpansionTileCardState> secondKey = GlobalKey();
}

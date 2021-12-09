//import 'package:flutter/material.dart';

class Detail {
  String detailImage;
  List detailCharacterCredits;
  List detailTeamCredits;
  List detailLocationCredits;
  List detailConcepts;

  Detail(
      {this.detailImage = "",
      this.detailCharacterCredits = const [],
      this.detailTeamCredits = const [],
      this.detailLocationCredits = const [],
      this.detailConcepts = const []});

  factory Detail.fromMap(Map map) {
    return Detail(
      detailImage: map['image']['original_url'],
      detailCharacterCredits:
          map['character_credits'] == null ? [] : map['character_credits'],
      detailTeamCredits: map['team_credits'] == null ? [] : map['team_credits'],
      detailLocationCredits:
          map['location_credits'] == null ? [] : map['location_credits'],
      detailConcepts:
          map['concept_credits'] == null ? [] : map['concept_credits'],
    );
  }
}

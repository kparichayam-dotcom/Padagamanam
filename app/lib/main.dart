import 'package:characters/characters.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PadagamanamApp());
}

class PadagamanamApp extends StatelessWidget {
  const PadagamanamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'పద గమనం',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A3FA0),
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F3EC),
      ),
      home: const PuzzleScreen(),
    );
  }
}

enum Direction {
  across,
  down,
}

class WordEntry {
  final int number;
  final String clue;
  final List<String> answer;
  final int row;
  final int col;
  final Direction direction;

  const WordEntry({
    required this.number,
    required this.clue,
    required this.answer,
    required this.row,
    required this.col,
    required this.direction,
  });

  int get length => answer.length;
}

class PadagamanamPuzzle {
  final String id;
  final String title;
  final String difficulty;
  final int size;
  final List<WordEntry> words;

  const PadagamanamPuzzle({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.size,
    required this.words,
  });
}

/*
  TEST PUZZLE

  Grid:

  ■ 1 2 3 ■
  ■ 4 5 6 ■
  ■ ■ 7 8 ■
  ■ ■ ■ ■ ■

  Words:

  కలము
  కల
  లయం
  ముళ్లు
  కళ్ళు

  ప్రతి answerని Telugu grapheme clustersగా
  విడిగా ఇస్తున్నాం.
*/
final testPuzzle = PadagamanamPuzzle(
  id: 'PG-001',
  title: 'పజిల్ 01',
  difficulty: 'సులభం',
  size: 14,
  words: [
    WordEntry(
      number: 1,
      clue: 'పని జరిగే క్రమం',
      answer: 'ప్రక్రియ'.characters.toList(),
      row: 0, col: 1,
      direction: Direction.across,
    ),
    WordEntry(
      number: 1,
      clue: 'ఇప్పుడు ఉన్నది',
      answer: 'ప్రస్తుత'.characters.toList(),
      row: 0, col: 1,
      direction: Direction.down,
    ),
    WordEntry(
      number: 2,
      clue: 'వేడి వల్ల నీరు మారే రూపం',
      answer: 'ఆవిరి'.characters.toList(),
      row: 0, col: 10,
      direction: Direction.across,
    ),
    WordEntry(
      number: 2,
      clue: 'ఊహించని విషయం చూసినప్పుడు కలిగే భావానికి',
      answer: 'ఆశ్చర్యానికి'.characters.toList(),
      row: 0, col: 10,
      direction: Direction.down,
    ),
    WordEntry(
      number: 3,
      clue: 'జరిగిన విషయాల నమోదు',
      answer: 'రికార్డు'.characters.toList(),
      row: 0, col: 12,
      direction: Direction.down,
    ),
    WordEntry(
      number: 4,
      clue: 'అవసరంలో తోడ్పాటు',
      answer: 'సహాయం'.characters.toList(),
      row: 1, col: 4,
      direction: Direction.across,
    ),
    WordEntry(
      number: 4,
      clue: 'రెండు వాటిని పోల్చి చూడమనే సూచన',
      answer: 'సరిపోల్చండి'.characters.toList(),
      row: 1, col: 4,
      direction: Direction.down,
    ),
    WordEntry(
      number: 5,
      clue: 'మనసులో పుట్టే భావం',
      answer: 'ఆలోచన'.characters.toList(),
      row: 1, col: 8,
      direction: Direction.down,
    ),
    WordEntry(
      number: 6,
      clue: 'ఇప్పటి తర్వాత వచ్చే',
      answer: 'తదుపరి'.characters.toList(),
      row: 2, col: 1,
      direction: Direction.across,
    ),
    WordEntry(
      number: 7,
      clue: 'ధరించే బట్టలకు సంబంధించిన',
      answer: 'దుస్తుల'.characters.toList(),
      row: 2, col: 2,
      direction: Direction.down,
    ),
    WordEntry(
      number: 8,
      clue: 'ఇతరచోటికి పంపించబడిన',
      answer: 'పంపిన'.characters.toList(),
      row: 3, col: 0,
      direction: Direction.down,
    ),
    WordEntry(
      number: 9,
      clue: 'ఒకదాన్ని తయారు చేయడానికి',
      answer: 'నిర్మించడానికి'.characters.toList(),
      row: 3, col: 6,
      direction: Direction.across,
    ),
    WordEntry(
      number: 9,
      clue: 'ఎన్నో దారుల్లో ఒకదాన్ని ఎంచుకుంటారు',
      answer: 'నిర్ణయించుకుంటారు'.characters.toList(),
      row: 3, col: 6,
      direction: Direction.down,
    ),
    WordEntry(
      number: 10,
      clue: 'చిన్న వయసున్న వారి',
      answer: 'పిల్లల'.characters.toList(),
      row: 4, col: 0,
      direction: Direction.across,
    ),
    WordEntry(
      number: 11,
      clue: 'పై నుంచి కిందికి చేరిన గతకాల క్రియ',
      answer: 'పడిపోయింది'.characters.toList(),
      row: 5, col: 3,
      direction: Direction.across,
    ),
    WordEntry(
      number: 12,
      clue: 'ఒక పని తర్వాత వచ్చే పరిణామంగా',
      answer: 'ఫలితంగా'.characters.toList(),
      row: 5, col: 12,
      direction: Direction.down,
    ),
    WordEntry(
      number: 13,
      clue: 'విడివిడిగా ఉన్నవాటిని ఒకటిగా చేయాలి',
      answer: 'కలపాలి'.characters.toList(),
      row: 6, col: 9,
      direction: Direction.across,
    ),
    WordEntry(
      number: 13,
      clue: 'దాగినదాన్ని తెలుసుకోవడానికి',
      answer: 'కనుగొనేందుకు'.characters.toList(),
      row: 6, col: 9,
      direction: Direction.down,
    ),
    WordEntry(
      number: 14,
      clue: 'ముఖ్యమైన సమాచారాన్ని తెలిపే ప్రకటన',
      answer: 'నోటీసు'.characters.toList(),
      row: 7, col: 2,
      direction: Direction.down,
    ),
    WordEntry(
      number: 15,
      clue: 'మనసులో ఒక అభిప్రాయాన్ని చెప్పే మాట',
      answer: 'అనుకుంటున్నాను'.characters.toList(),
      row: 7, col: 4,
      direction: Direction.across,
    ),
    WordEntry(
      number: 15,
      clue: 'వెంటనే చేయాల్సిన అవసరం ఉన్నది',
      answer: 'అత్యవసరము'.characters.toList(),
      row: 7, col: 4,
      direction: Direction.down,
    ),
    WordEntry(
      number: 16,
      clue: 'దూరం నుంచి ఇక్కడికి చేరేలా చేశారు',
      answer: 'తీసుకువచ్చారు'.characters.toList(),
      row: 9, col: 1,
      direction: Direction.across,
    ),
    WordEntry(
      number: 17,
      clue: 'జిడ్డుగా ఉండే ద్రవ ఇంధనం',
      answer: 'చమురు'.characters.toList(),
      row: 9, col: 11,
      direction: Direction.down,
    ),
    WordEntry(
      number: 18,
      clue: 'సమాచారాన్ని రాసి ఉంచడం',
      answer: 'నమోదు'.characters.toList(),
      row: 10, col: 7,
      direction: Direction.across,
    ),
    WordEntry(
      number: 19,
      clue: 'కింద వైపు',
      answer: 'దిగువ'.characters.toList(),
      row: 11, col: 0,
      direction: Direction.down,
    ),
    WordEntry(
      number: 20,
      clue: 'మనసు నివసించే కనిపించే ఇల్లు',
      answer: 'శరీర'.characters.toList(),
      row: 11, col: 2,
      direction: Direction.across,
    ),
    WordEntry(
      number: 20,
      clue: 'వ్యతిరేకంగా ఉండేవాడు',
      answer: 'శత్రువు'.characters.toList(),
      row: 11, col: 2,
      direction: Direction.down,
    ),
    WordEntry(
      number: 21,
      clue: 'మగ సంతానం',
      answer: 'కుమారుడు'.characters.toList(),
      row: 11, col: 9,
      direction: Direction.across,
    ),
    WordEntry(
      number: 22,
      clue: 'ఒకదాని స్థానంలో ఇంకొకటి',
      answer: 'మారుగా'.characters.toList(),
      row: 11, col: 10,
      direction: Direction.down,
    ),
    WordEntry(
      number: 23,
      clue: 'అక్షరాలను కాగితంపై ముద్రించే పని',
      answer: 'ముద్రణ'.characters.toList(),
      row: 12, col: 4,
      direction: Direction.across,
    ),
    WordEntry(
      number: 24,
      clue: 'ఒక వస్తువు లేదా పదార్థం',
      answer: 'వస్తువు'.characters.toList(),
      row: 13, col: 0,
      direction: Direction.across,
    ),
    WordEntry(
      number: 25,
      clue: 'ఆనందంగా, ఆటపాటలతో',
      answer: 'సరదాగా'.characters.toList(),
      row: 13, col: 7,
      direction: Direction.across,
    ),
  ],
);

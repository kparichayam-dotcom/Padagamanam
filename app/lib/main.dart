import 'package:flutter/material.dart';

void main() {
  runApp(const PadagamanamApp());
}

class PadagamanamApp extends StatelessWidget {
  const PadagamanamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'పదగమనమ్',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF176B55),
        ),
        useMaterial3: true,
      ),
      home: const CrosswordHome(),
    );
  }
}

class Clue {
  final int number;
  final String clue;
  final String answer;

  const Clue(this.number, this.clue, this.answer);
}

const List<Clue> clues = [
  Clue(1, 'మనల్ని ప్రేమగా పెంచే వ్యక్తి', 'అమ్మ'),
  Clue(2, 'తండ్రిని ప్రేమగా పిలిచే పేరు', 'నాన్న'),
  Clue(3, 'అమ్మకు మరో పేరు', 'తల్లి'),
  Clue(4, 'నాన్నకు మరో పేరు', 'తండ్రి'),
  Clue(5, 'మనతో కలిసి చదువుకునే వ్యక్తి', 'స్నేహితుడు'),
  Clue(6, 'మనకంటే పెద్దవారిని పిలిచే పేరు', 'అన్నయ్య'),
  Clue(7, 'విద్య నేర్పే వ్యక్తి', 'గురువు'),
  Clue(8, 'పాతకాలంలో రాజ్యాన్ని పాలించే వ్యక్తి', 'రాజు'),
  Clue(9, 'రాత్రి ఆకాశంలో కనిపించే ఉపగ్రహం', 'చంద్రుడు'),
  Clue(10, 'పగటిపూట వెలుగునిచ్చే నక్షత్రం', 'సూర్యుడు'),
  Clue(11, 'మొక్కకు పూసేది', 'పువ్వు'),
  Clue(12, 'నీడను ఇచ్చే పెద్ద మొక్క', 'చెట్టు'),
  Clue(13, 'ఆకాశం నుంచి పడే నీరు', 'వర్షం'),
  Clue(14, 'నేలలో పెరిగే జీవి', 'మొక్క'),
  Clue(15, 'చాలా పెద్ద ఉప్పునీటి విస్తీర్ణం', 'సముద్రం'),
  Clue(16, 'రాత్రి ఆకాశంలో మెరిసేది', 'నక్షత్రం'),
  Clue(17, 'తొండం ఉండే పెద్ద జంతువు', 'ఏనుగు'),
  Clue(18, 'పాలు ఇచ్చే పెంపుడు జంతువు', 'ఆవు'),
  Clue(19, 'మనం నివసించే స్థలం', 'ఇల్లు'),
  Clue(20, 'చదవడానికి ఉపయోగించేది', 'పుస్తకం'),
  Clue(21, 'సమయం చూపించే పరికరం', 'గడియారం'),
  Clue(22, 'చీకటిని తొలగించేది', 'దీపం'),
  Clue(23, 'రాయడానికి ఉపయోగించేది', 'కలం'),
  Clue(24, 'నీరు తాగడానికి ఉపయోగించేది', 'గ్లాసు'),
  Clue(25, 'వంట చేసే స్థలం', 'వంటగది'),
  Clue(26, 'కాళ్లకు వేసుకునేది', 'చెప్పు'),
  Clue(27, 'తలపై ధరించేది', 'టోపీ'),
  Clue(28, 'బట్టలు ఉతకడానికి ఉపయోగించేది', 'సబ్బు'),
  Clue(29, 'పిల్లలు చదువుకునే స్థలం', 'పాఠశాల'),
  Clue(30, 'అక్షరాలు కలిసి ఏర్పడేది', 'పదం'),
  Clue(31, 'తెలుగు అచ్చులలో మొదటి అక్షరం', 'అ'),
  Clue(32, 'చదివి నేర్చుకునే ప్రక్రియ', 'అభ్యాసం'),
  Clue(33, 'తెలుసుకున్న విషయాల సమాహారం', 'జ్ఞానం'),
  Clue(34, 'విద్యార్థుల జ్ఞానాన్ని పరీక్షించేది', 'పరీక్ష'),
  Clue(35, 'పాఠాలు చెప్పే వ్యక్తి', 'ఉపాధ్యాయుడు'),
  Clue(36, 'మన ప్రధాన ఆహారాలలో ఒకటి', 'అన్నం'),
  Clue(37, 'పొడవుగా ఉండే తీపి పండు', 'అరటి'),
  Clue(38, 'తీపిగా ఉండే ప్రసిద్ధ పండు', 'మామిడి'),
  Clue(39, 'ఆవు నుంచి లభించే తెల్లని పానీయం', 'పాలు'),
  Clue(40, 'మనం పీల్చుకునేది', 'గాలి'),
  Clue(41, 'అడవికి రాజు అని పిలిచే జంతువు', 'సింహం'),
  Clue(42, 'పొడవైన తొండం ఉండే జంతువు', 'ఏనుగు'),
  Clue(43, 'ఇంటిని కాపలా కాసే జంతువు', 'కుక్క'),
  Clue(44, 'పాలు ఇచ్చే చిన్న పెంపుడు జంతువు', 'మేక'),
  Clue(45, 'కూస్తూ ఉదయం నిద్రలేపే పక్షి', 'కోడి'),
  Clue(46, 'రంగురంగుల ఈకల పక్షి', 'నెమలి'),
  Clue(47, 'రాత్రిపూట తిరిగే పక్షి', 'గుడ్లగూబ'),
  Clue(48, 'నీటిలో ఈదే పక్షి', 'బాతు'),
  Clue(49, 'ఆకాశంలో తేలియాడేది', 'మేఘం'),
  Clue(50, 'వర్షం తర్వాత ఆకాశంలో కనిపించే రంగుల వంపు', 'ఇంద్రధనుస్సు'),
  Clue(51, 'ప్రవహించే నీటి మార్గం', 'నది'),
  Clue(52, 'ఎత్తుగా ఉండే సహజ భూభాగం', 'కొండ'),
  Clue(53, 'చెట్లతో నిండిన ప్రదేశం', 'అడవి'),
  Clue(54, 'నీరు గడ్డకట్టినప్పుడు ఏర్పడేది', 'మంచు'),
  Clue(55, 'సూర్యుడు ఉదయించే దిశ', 'తూర్పు'),
  Clue(56, 'పండుగల్లో వెలిగించేది', 'దీపం'),
  Clue(57, 'లోపల ఎర్రగా ఉండే పెద్ద పండు', 'పుచ్చకాయ'),
  Clue(58, 'పుల్లగా ఉండే పండు', 'నిమ్మకాయ'),
  Clue(59, 'ఎరుపు లేదా ఆకుపచ్చ రంగులో ఉండే పండు', 'ఆపిల్'),
  Clue(60, 'కొబ్బరి చెట్టుకు కాసేది', 'కొబ్బరి'),
  Clue(61, 'కూరల్లో ఉపయోగించే దుంప', 'బంగాళాదుంప'),
  Clue(62, 'నారింజ రంగు కూరగాయ', 'క్యారెట్'),
  Clue(63, 'పాలతో చేసే తీపి పదార్థం', 'పాయసం'),
  Clue(64, 'గుండ్రంగా ఉండే తీపి వంటకం', 'లడ్డూ'),
  Clue(65, 'చూడడానికి ఉపయోగించేది', 'కన్ను'),
  Clue(66, 'వినడానికి ఉపయోగించేది', 'చెవి'),
  Clue(67, 'వాసన పసిగట్టేది', 'ముక్కు'),
  Clue(68, 'రుచిని తెలుసుకునేది', 'నాలుక'),
  Clue(69, 'నడవడానికి ఉపయోగించేవి', 'కాళ్లు'),
  Clue(70, 'వస్తువులు పట్టుకోవడానికి ఉపయోగించేవి', 'చేతులు'),
  Clue(71, 'రక్తాన్ని పంపించే అవయవం', 'గుండె'),
  Clue(72, 'శరీరానికి విశ్రాంతినిచ్చేది', 'నిద్ర'),
  Clue(73, 'ఉత్తరం, దక్షిణం మొదలైనవి తెలిపేవి', 'దిక్కులు'),
  Clue(74, 'వార్తలు వినడానికి ఉపయోగించే పరికరం', 'రేడియో'),
  Clue(75, 'దూరంగా ఉన్నవారితో మాట్లాడే పరికరం', 'ఫోన్'),
  Clue(76, 'చిత్రాలు తీయడానికి ఉపయోగించేది', 'కెమెరా'),
  Clue(77, 'రెండు చక్రాల వాహనం', 'సైకిల్'),
  Clue(78, 'రైలును నడిపే వ్యక్తి', 'లోకోపైలట్'),
  Clue(79, 'ఆగస్టు 15న జరుపుకునే రోజు', 'స్వాతంత్ర్యదినోత్సవం'),
  Clue(80, 'దీపాల పండుగ', 'దీపావళి'),
];

class CrosswordHome extends StatefulWidget {
  const CrosswordHome({super.key});

  @override
  State<CrosswordHome> createState() => _CrosswordHomeState();
}

class _CrosswordHomeState extends State<CrosswordHome> {
  static const int size = 15;

  final List<List<String>> letters =
      List.generate(size, (_) => List.filled(size, ''));

  final Set<String> blackCells = {};

  int selectedRow = 7;
  int selectedCol = 7;
  bool showAnswers = false;

  String keyFor(int row, int col) => '$row,$col';

  Future<void> editCell(int row, int col) async {
    if (blackCells.contains(keyFor(row, col))) return;

    final controller = TextEditingController(
      text: letters[row][col],
    );

    final value = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('గడి (${row + 1}, ${col + 1})'),
        content: TextField(
          controller: controller,
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: 'తెలుగు అక్షరం టైప్ చేయండి',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('రద్దు'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, ''),
            child: const Text('తొలగించు'),
          ),
          FilledButton(
            onPressed: () =>
                Navigator.pop(context, controller.text.trim()),
            child: const Text('సరే'),
          ),
        ],
      ),
    );

    if (value != null) {
      setState(() {
        selectedRow = row;
        selectedCol = col;
        letters[row][col] = value;
      });
    }
  }

  void toggleBlackCell() {
    final key = keyFor(selectedRow, selectedCol);

    setState(() {
      if (blackCells.contains(key)) {
        blackCells.remove(key);
      } else {
        blackCells.add(key);
        letters[selectedRow][selectedCol] = '';
      }
    });
  }

  void clearGrid() {
    setState(() {
      for (final row in letters) {
        row.fillRange(0, row.length, '');
      }
      blackCells.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('పదగమనమ్'),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'గ్రిడ్ ఖాళీ చేయి',
            onPressed: clearGrid,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12, 8, 12, 4),
                child: Text(
                  'తెలుగు క్రాస్‌వర్డ్ • 15 × 15',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(text: 'క్రాస్‌వర్డ్ గ్రిడ్'),
                  Tab(text: '80 క్లూస్'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildGridTab(),
                    buildCluesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridTab() {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
              itemCount: size * size,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: size,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemBuilder: (context, index) {
                final row = index ~/ size;
                final col = index % size;
                final key = keyFor(row, col);
                final isBlack = blackCells.contains(key);
                final isSelected =
                    row == selectedRow && col == selectedCol;

                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedRow = row;
                      selectedCol = col;
                    });
                    editCell(row, col);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isBlack
                          ? Colors.black
                          : isSelected
                              ? Colors.amber.shade200
                              : Colors.white,
                      border: Border.all(
                        color: Colors.black87,
                        width: 0.45,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        isBlack ? '' : letters[row][col],
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 6,
          alignment: WrapAlignment.center,
          children: [
            FilledButton.tonalIcon(
              onPressed: toggleBlackCell,
              icon: const Icon(Icons.square),
              label: const Text('నల్ల గడి'),
            ),
            OutlinedButton.icon(
              onPressed: () => editCell(selectedRow, selectedCol),
              icon: const Icon(Icons.edit),
              label: const Text('అక్షరం మార్చు'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'గడిని తాకి తెలుగు అక్షరం రాయండి. ఎంచుకున్న గడిని నల్లగా మార్చవచ్చు.',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget buildCluesTab() {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('సమాధానాలు చూపించు'),
          value: showAnswers,
          onChanged: (value) {
            setState(() => showAnswers = value);
          },
        ),
        Expanded(
          child: ListView.separated(
            itemCount: clues.length,
            separatorB
            
          await tester.pumpWidget(const PadagamanamApp());,
            itemBuilder: (context, index) {
              final item = clues[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text('${item.number}'),
                ),
                title: Text(item.clue),
                subtitle: showAnswers
                    ? Text('సమాధానం: ${item.answer}')
                    : null,
              );
            },
          ),
        ),
      ],
    );
  }
}

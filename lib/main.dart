import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ================= MY APP =================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LudoBoard(),
    );
  }
}

// ================= LUDO BOARD =================

class LudoBoard extends StatelessWidget {
  const LudoBoard({super.key});

  // ================= ONE BOX =================

  Widget box(Color color) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.black,
            width: 0.7,
          ),
        ),
      ),
    );
  }

  // ================= PLAYER =================

  Widget player(Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
    );
  }

  // ================= TOKEN =================

  Widget token(Color color) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }

  // ================= HOME =================

  Widget home(Color color) {
    return Expanded(
      flex: 6,
      child: Container(
        color: color,
        padding: const EdgeInsets.all(16),

        child: Container(
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),

          padding: const EdgeInsets.all(10),

          child: Column(
            children: [

              Expanded(
                child: Row(
                  children: [
                    player(color),
                    player(color),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    player(color),
                    player(color),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =================================================
  // GREEN PATH
  // =================================================

  Widget greenPath() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [

          // ROW 1
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.white),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 2
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.green),
                box(Colors.green),
              ],
            ),
          ),

          // ROW 3
          Expanded(
            child: Row(
              children: [
                box(Colors.green),
                box(Colors.green),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 4
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.green),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 5
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.green),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 6
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.green),
                box(Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =================================================
  // RED PATH
  // 3 ROWS × 6 COLUMNS
  // =================================================

  Widget redPath() {
    return Expanded(
      flex: 6,
      child: Column(
        children: [

          // ================= ROW 1 =================
          Expanded(
            child: Row(
              children: [

                // COLUMN 1
                box(Colors.white),

                // COLUMN 2 = RED
                box(Colors.red),

                // COLUMN 3 = WHITE
                box(Colors.white),

                // COLUMN 4
                box(Colors.white),

                // COLUMN 5
                box(Colors.white),

                // COLUMN 6
                box(Colors.white),
              ],
            ),
          ),

          // ================= ROW 2 =================
          Expanded(
            child: Row(
              children: [

                box(Colors.white),
                box(Colors.red),
                box(Colors.red),
                box(Colors.red),
                box(Colors.red),
                box(Colors.red),
              ],
            ),
          ),

          // ================= ROW 3 =================
          Expanded(
            child: Row(
              children: [

                // COLUMN 1
                box(Colors.white),

                // COLUMN 2
                box(Colors.white),

                // COLUMN 3 = RED
                box(Colors.red),

                // COLUMN 4
                box(Colors.white),

                // COLUMN 5
                box(Colors.white),

                // COLUMN 6
                box(Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =================================================
  // YELLOW PATH
  // 3 ROWS × 6 COLUMNS
  // =================================================

  Widget yellowPath() {
    return Expanded(
      flex: 6,
      child: Column(
        children: [

          // ================= ROW 1 =================
          Expanded(
            child: Row(
              children: [

                // COLUMN 1
                box(Colors.white),

                // COLUMN 2
                box(Colors.white),

                // COLUMN 3
                box(Colors.white),

                // COLUMN 4
                box(Colors.yellow),

                // COLUMN 5 = YELLOW
                box(Colors.white),

                // COLUMN 6
                box(Colors.white),
              ],
            ),
          ),

          // ================= ROW 2 =================
          Expanded(
            child: Row(
              children: [

                box(Colors.yellow),
                box(Colors.yellow),
                box(Colors.yellow),
                box(Colors.yellow),
                box(Colors.yellow),
                box(Colors.white),
              ],
            ),
          ),

          // ================= ROW 3 =================
          Expanded(
            child: Row(
              children: [

                // COLUMN 1
                box(Colors.white),

                // COLUMN 2
                box(Colors.white),

                // COLUMN 3
                box(Colors.white),

                // COLUMN 4
                box(Colors.white),

                // COLUMN 5
                box(Colors.yellow),

                // COLUMN 6 = YELLOW
                box(Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =================================================
  // BLUE PATH
  // =================================================

  Widget bluePath() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [

          // ROW 1
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.blue),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 2
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.blue),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 3
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.blue),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 4
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.blue),
                box(Colors.blue),
              ],
            ),
          ),

          // ROW 5
          Expanded(
            child: Row(
              children: [
                box(Colors.blue),
                box(Colors.blue),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 6
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.white),
                box(Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =================================================
  // CENTER
  // =================================================

  Widget center() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [

          // ROW 1
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.green),
                box(Colors.white),
              ],
            ),
          ),

          // ROW 2
          Expanded(
            child: Row(
              children: [
                box(Colors.red),
                box(Colors.white),
                box(Colors.yellow),
              ],
            ),
          ),

          // ROW 3
          Expanded(
            child: Row(
              children: [
                box(Colors.white),
                box(Colors.blue),
                box(Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =================================================
  // MAIN BUILD
  // =================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,

      // ================= APP BAR =================

      appBar: AppBar(
        title: const Text(
          "Ludo Game",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.brown,
      ),

      // ================= BOARD =================

      body: Center(
        child: Container(
          width: 390,
          height: 390,

          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
          ),

          child: Column(
            children: [

              // =====================================
              // TOP
              // RED HOME | GREEN PATH | GREEN HOME
              // =====================================

              Expanded(
                flex: 6,
                child: Row(
                  children: [

                    home(Colors.red),

                    greenPath(),

                    home(Colors.green),
                  ],
                ),
              ),

              // =====================================
              // MIDDLE
              // RED PATH | CENTER | YELLOW PATH
              // =====================================

              Expanded(
                flex: 3,
                child: Row(
                  children: [

                    redPath(),

                    center(),

                    yellowPath(),
                  ],
                ),
              ),

              // =====================================
              // BOTTOM
              // BLUE HOME | BLUE PATH | YELLOW HOME
              // =====================================

              Expanded(
                flex: 6,
                child: Row(
                  children: [

                    home(Colors.blue),

                    bluePath(),

                    home(Colors.yellow),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
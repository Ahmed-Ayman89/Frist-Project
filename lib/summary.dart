import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.SummaryData, {super.key});
  final List<Map<String, Object>> SummaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...SummaryData.map((e) => Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: e['user_answer'] == e['correct_answer']
                          ? Colors.blueAccent
                          : Colors.red[300],
                      child:
                          Text(((e['Question_index'] as int) + 1).toString()),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e['Question'].toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e['correct_answer'].toString(),
                      style: const TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      e['user_answer'].toString(),
                      style: const TextStyle(
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}

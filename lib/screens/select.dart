import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({super.key});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  final List<String> lawTypes = [
    // '헌 법', '국 회', '선거 정당', '행정일반', '법 원', '법 무', '민사법', '형사법', '지방제도', '경 찰',
  ];

  final List<String> selectedTags = [];

  void toggleTag(String tag) {
    setState(() {
      if (selectedTags.contains(tag)) {
        selectedTags.remove(tag);
      } else {
        selectedTags.add(tag);
      }
    });
  }

  void removeTag(String tag) {
    setState(() {
      selectedTags.remove(tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('카테고리')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('분야', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: selectedTags.map((tag) {
                return Chip(
                  label: Text(tag),
                  deleteIcon: const Icon(Icons.close),
                  onDeleted: () => removeTag(tag),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            const Text('소관 부처 선택', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: lawTypes.map((tag) {
                  return ListTile(
                    title: Text(tag),
                    trailing: selectedTags.contains(tag)
                        ? const Icon(Icons.check_circle, color: Colors.green)
                        : const Icon(Icons.circle_outlined),
                    onTap: () => toggleTag(tag),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedTags.isEmpty ? null : () {
                  // 다음 화면으로 이동하는 로직 추가
                  print('선택된 태그: $selectedTags');
                },
                child: const Text('다음으로'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

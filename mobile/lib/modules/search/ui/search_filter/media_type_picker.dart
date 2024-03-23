import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:immich_mobile/shared/models/asset.dart';

class MediaTypePicker extends HookWidget {
  const MediaTypePicker({super.key, required this.onSelect});

  final Function(AssetType) onSelect;

  @override
  Widget build(BuildContext context) {
    final selectedMediaType = useState(AssetType.other);

    return ListView(
      shrinkWrap: true,
      children: [
        RadioListTile(
          title: const Text("All"),
          value: AssetType.other,
          onChanged: (value) {
            selectedMediaType.value = value!;
            onSelect(value);
          },
          groupValue: selectedMediaType.value,
        ),
        RadioListTile(
          title: const Text("Image"),
          value: AssetType.image,
          onChanged: (value) {
            selectedMediaType.value = value!;
            onSelect(value);
          },
          groupValue: selectedMediaType.value,
        ),
        RadioListTile(
          title: const Text("Video"),
          value: AssetType.video,
          onChanged: (value) {
            selectedMediaType.value = value!;
            onSelect(value);
          },
          groupValue: selectedMediaType.value,
        ),
      ],
    );
  }
}

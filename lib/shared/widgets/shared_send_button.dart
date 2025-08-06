import 'package:flutter/material.dart';
import 'package:invest_note/shared/widgets/shared_text.dart';

import '../../core/constants/app_string.s.dart';

class SharedSendButton extends StatelessWidget {
  const SharedSendButton({
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const SharedText.i18n(
        AppString.commonSend,
      ),
    );
  }
}

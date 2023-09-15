import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'detail_ervice_components/sectiones/detailservice_bottom.dart';
import 'detail_ervice_components/sectiones/detailservice_header.dart';

class DetailServiceBody extends StatelessWidget {
  const DetailServiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [DetailServiceHeader(), DetailserviceBottom()],
    );
  }
}

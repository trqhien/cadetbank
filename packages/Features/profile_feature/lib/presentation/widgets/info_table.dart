import 'package:coreui/coreui.dart';
import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  final Map<String, String> tableData;
  final TextStyle? titleTextStyle;
  final TextStyle? infoTextStyle;

  const InfoTable({
    super.key, 
    required this.tableData,
    this.titleTextStyle,
    this.infoTextStyle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.grey3Color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: tableData.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => _InfoCell(
          title: tableData.keys.elementAt(index),
          info: tableData.values.elementAt(index),
          titleTextStyle: titleTextStyle,
          infoTextStyle: infoTextStyle,
        ),
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          );
        },
      ),
    );
  }
}

class _InfoCell extends StatelessWidget {
  final String title;
  final String info;
  final TextStyle? titleTextStyle;
  final TextStyle? infoTextStyle;

  const _InfoCell({
    required this.title,
    required this.info,
    this.titleTextStyle,
    this.infoTextStyle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: titleTextStyle ?? Theme.of(context).textTheme.bodyMedium!
                .copyWith(
                  fontWeight: FontWeight.w600, 
                  color: CustomColors.grey5Color,
                  height: 1.6
                )
            )
          ),
          Flexible(
            child: Text(
              info,
              overflow: TextOverflow.ellipsis,
              style: infoTextStyle ?? Theme.of(context).textTheme.bodyLarge!
                .copyWith(
                  fontWeight: FontWeight.w600, 
                ),
            )
          ),
        ],
      ),
    );
  }
}
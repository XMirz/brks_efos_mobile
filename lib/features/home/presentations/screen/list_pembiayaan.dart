import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/features/home/presentations/providers/list_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/card.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final kategoryPembiayaanDropdown = [
  DropDownItem(value: ApiPath.listPembiayaanKonsumtif, label: l10n.konsumtif),
  DropDownItem(value: ApiPath.listPembiayaanProduktif, label: l10n.produktif),
];

class ListPembiayaan extends HookConsumerWidget {
  const ListPembiayaan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<List<String>> listsData = [
      ['Item 1', 'Item 2', 'Item 3'],
      ['Item A', 'Item B', 'Item C', 'Item D'],
      ['Item X', 'Item Y', 'Item Z'],
      ['Item P', 'Item Q', 'Item R'],
      ['Item M', 'Item N', 'Item O'],
    ];
    final listPembiayaan = ref.watch(listPembiayaanProvider);
    return Scaffold(
      // appBar: InnerAppBar(title: l10n.pembiayaan),
      body: Container(
        color: Colors.amberAccent,
        padding: const EdgeInsets.symmetric(vertical: 90),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(l10n.kategoriProduk),
                OurDropDownField(
                  items: kategoryPembiayaanDropdown,
                  label: context.l10n.bidangUsaha,
                  hint: context.l10n.bidangUsaha,
                  value: ref.watch(endPointPembiayaanProvider),
                  onChanged: (value, label) => ref
                      .read(endPointPembiayaanProvider.notifier)
                      .state = value,
                ),
              ],
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: listsData.length,
            //     itemBuilder: (context, index) {
            //       return CardList(listData: listsData[index]);
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final List<String> listData;

  CardList({required this.listData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('List ${listData[0]}'),
          ),
          Divider(),
          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listData[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}

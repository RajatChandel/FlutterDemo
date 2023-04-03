import 'package:demo/bloc/dashboard_bloc.dart';
import 'package:demo/expension_tile_widget.dart';
import 'package:demo/validity_widget.dart';
import 'package:flutter/material.dart';

class FloatingText extends StatelessWidget {
  final DataModel dataModel;
  const FloatingText({super.key, required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 400,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'TOP DEAL',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '9 EURO TICKET DEUTSCHE BANH',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'bkjnadmjhk m mn askjnm nn ., kkjn,',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              ValidityWidget(
                  validFor: dataModel.validFor, validTill: dataModel.validTill),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text('Share with friends')),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(Icons.ac_unit),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const Text('Heading'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                  'Data data Data dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData dataData data'),
              const Divider(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dataModel.detailsItems.length,
                itemBuilder: (context, index) {
                  return ExpensionTileWidget(
                    title: dataModel.detailsItems[index].titile,
                    decs: dataModel.detailsItems[index].desc,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

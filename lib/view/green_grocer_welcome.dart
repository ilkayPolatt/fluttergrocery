import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/greengrocer_const.dart';
import 'package:flutter_application_2/core/text_small_info.dart';
import 'package:flutter_application_2/view/green_grocer_home.dart';

class GreenGrocerWelcome extends StatelessWidget {
  const GreenGrocerWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            color: GreengrocerConst.color_green,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 2),
                    Expanded(flex: 3, child: _image()),
                    const Spacer(flex: 1),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _textzero(context),
                            GreengrocerConst.sizedBoxHeight10,
                            TextSmallInfo(
                              text: GreengrocerConst.info_text_aciklama,
                            )
                          ],
                        )),
                    const Spacer(flex: 1),
                    Expanded(
                      flex: 1,
                      child: elevatedButton(),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Image _image() {
    return Image.asset(
      GreengrocerConst.imagedomatesInfo,
      fit: BoxFit.cover,
    );
  }

  Text _textzero(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      GreengrocerConst.info_text,
      style: Theme.of(context).textTheme.headline4?.copyWith(
            color: GreengrocerConst.color_black,
          ),
    );
  }
}

class elevatedButton extends StatelessWidget {
  const elevatedButton({
    Key? key,
    this.height = 12,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => GreenGrocerHome(),
            ));
          },
          child: Center(
              child: Text(
            GreengrocerConst.info_text_button,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: GreengrocerConst.color_white),
          ))),
    );
  }
}

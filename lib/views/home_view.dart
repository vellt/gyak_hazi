import 'package:allapotkezeles_gyak/controllers/home_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Házi minta"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(controller.szamlalo.toString(),
                      style: TextStyle(fontSize: 100)),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      child: CupertinoButton.filled(
                        child: Text("növel"),
                        onPressed: () {
                          controller.novelo();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      child: CupertinoButton.filled(
                        child: Text("csökkent"),
                        onPressed: () {
                          controller.csokkento();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

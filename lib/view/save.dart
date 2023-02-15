import 'package:ecommercetask6/view/login.dart';
import 'package:ecommercetask6/widget/gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaveView extends StatelessWidget {
  const SaveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Successfully Password Has been Saved!!!"),
            Gap(),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      Get.to(() => LoginView());
                    },
                    child: Text("Return to Login"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

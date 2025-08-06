import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:theker_app/constants.dart';
import 'dart:math';

class QiblahView extends StatefulWidget {
  const QiblahView({super.key});
  static const String routeName = 'qibla';

  @override
  State<QiblahView> createState() => _QiblahScreenState();
}

class _QiblahScreenState extends State<QiblahView> {
  bool hasPermission = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    checkPermission();
  }

  Future<void> checkPermission() async {
    final status = await Permission.locationWhenInUse.status;

    if (!mounted) return;

    if (status.isGranted) {
      setState(() {
        hasPermission = true;
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
        hasPermission = false;
      });
    }
  }

  Future<void> requestPermission() async {
    final result = await Permission.locationWhenInUse.request();
    if (!mounted) return;

    if (result.isGranted) {
      setState(() {
        hasPermission = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text('القبلة', style: TextStyle(fontFamily: kSecondaryFont)),
        ),
        body: Center(child: CircularProgressIndicator(color: kPrimaryColor)),
      );
    }
    if (!hasPermission) {
      return Scaffold(
        appBar: AppBar(
          title: Text('القبلة', style: TextStyle(fontFamily: kSecondaryFont)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 80, color: kPrimaryColor),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'يرجى السماح باستخدام الموقع لتحديد اتجاه القبلة',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontFamily: kSecondaryFont),
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: requestPermission,
                minWidth: 150,
                color: kPrimaryColor,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                child: Text(
                  'السماح الأن',
                  style: TextStyle(fontFamily: kSecondaryFont),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('القبلة', style: TextStyle(fontFamily: kSecondaryFont)),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: StreamBuilder<QiblahDirection>(
        stream: FlutterQiblah.qiblahStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: kPrimaryColor),
            );
          }
          final direction = snapshot.data!;
          return Container(
            padding: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/categories_images/posla.png'),
                SizedBox(height: 20),
                Transform.rotate(
                  angle: direction.qiblah * (pi / 180) * -1,
                  child: Image.asset(
                    'assets/images/categories_images/compass.png',
                    width: 300,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'الإتجاه الصحيح : ${direction.qiblah.toStringAsFixed(2)}°',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

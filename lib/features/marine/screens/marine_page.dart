import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/mutable/theme/colors.dart';
import '../../../core/mutable/widgets/icon/customIcon.dart';
import '../../../core/mutable/widgets/text/text.dart';

class MarinePage extends StatefulWidget {
  const MarinePage({Key? key}) : super(key: key);

  @override
  State<MarinePage> createState() => _MarinePageState();
}

class _MarinePageState extends State<MarinePage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLuanda = CameraPosition(
    target: LatLng(-8.838333, 13.234444),
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _appBar(context),
      body: _googleMap(),
      floatingActionButton: _floatingActionButton(),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkBlue,
      leading: _appBarLeading(context),
    );
  }

  IconButton _appBarLeading(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: _appBarIcon(),
    );
  }

  CustomIcon _appBarIcon() {
    return CustomIcon(
      icon: Icons.arrow_back,
      size: kToolbarHeight * 0.4,
    );
  }

  GoogleMap _googleMap() {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: _goToTheLuanda,
      backgroundColor: AppColors.darkBlue,
      label: _floatingActionButtonText(),
      icon: _floatingActionButtonIcon(),
    );
  }

  CustomText _floatingActionButtonText() {
    return CustomText(
      text: ('To the Luanda!'),
      textColor: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }

  CustomIcon _floatingActionButtonIcon() {
    return CustomIcon(
      icon: Icons.directions_boat,
      size: kToolbarHeight * 0.4,
    );
  }

  Future<void> _goToTheLuanda() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLuanda));
  }
}

 

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:test_app/Components/ToolBar.dart';
import 'package:test_app/Config/App_Icon_&_Img.dart';
import 'package:test_app/Config/App_String.dart';
import 'package:test_app/Style/App_Colors.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppString.nearby),
      body: FlutterMap(options: MapOptions(
        center: LatLng(51.509364, -0.128928),
        zoom: 10,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.ces.flutter',
        ),
        // MarkerLayer(
        //   markers: [
        //     Marker(
        //       height: 60,
        //       width: 100,            
        //       point: const LatLng(51.509364, -0.128928), builder: (context){
        //       return Column(
        //         children: [
        //           Container(
        //              decoration: BoxDecoration(
        //               color: Colors.white,
        //              ),
        //              child: Text("UserName", style: TextStyle(color: Colors.black),),
        //           ),
        //           ColorFiltered(
        //             colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        //             child: SvgPicture.asset(
                      
        //               AppIcons.ic_location),
        //           ),
        //         ],
        //       );
        //     })
        //   ],
        // )
      ],
      ),
    );
  }
}
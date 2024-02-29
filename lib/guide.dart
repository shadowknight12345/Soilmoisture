import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/unordered_list_row.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: const Color.fromARGB(255, 8, 142, 11),
        ),
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 15,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 0.5,
                              spreadRadius: 0.5)
                        ]),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          color: Colors.white),
                      child: const Icon(Icons.arrow_back_rounded,
                          color: Color.fromARGB(255, 8, 142, 11)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 75,
                bottom: 20,
                child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: const SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 18.0, right: 18.0, bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Guide Documentation: Soil Moisture",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          SizedBox(height: 15),
                          Text("1. Introduction",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(
                              "Soil moisture refers to the amount of water held in the soil, which is crucial for plant growth, agricultural productivity, and environmental health. Monitoring soil moisture levels can help optimize irrigation practices, prevent waterlogging or drought stress, and enhance overall land management.",
                              style: TextStyle(fontSize: 13)),
                          SizedBox(height: 10),
                          Text(
                              "This guide aims to provide comprehensive documentation on soil moisture, covering its importance, measurement techniques, factors influencing soil moisture, and applications in various fields.",
                              style: TextStyle(fontSize: 13)),
                          SizedBox(height: 10),
                          Text("2. Importance of Soil Moisture",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          UnorderedListRow(
                              description:
                                  "Plant Growth: Adequate soil moisture is essential for seed germination, root development, and nutrient uptake in plants."),
                          UnorderedListRow(
                              description:
                                  "Agricultural Productivity: Maintaining optimal soil moisture levels can significantly improve crop yields and quality."),
                          UnorderedListRow(
                              description:
                                  "Water Resource Management: Efficient water use in agriculture and landscaping relies on accurate soil moisture monitoring to prevent wastage and ensure sustainability."),
                          UnorderedListRow(
                              description:
                                  "Environmental Health: Proper soil moisture levels contribute to ecosystem stability, groundwater recharge, and erosion control."),
                          Text("3. Measurement Techniques",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(
                              "There are several methods for measuring soil moisture, each with its own advantages and limitations:",
                              style: TextStyle(fontSize: 13)),
                          UnorderedListRow(
                              description:
                                  "Gravimetric Method: Involves collecting soil samples, drying them in an oven, and measuring the weight loss to determine moisture content. It provides accurate results but is labor-intensive and time-consuming."),
                          UnorderedListRow(
                              description:
                                  "Tensiometers: Measure soil moisture tension by monitoring the pressure required to extract water from soil. They are accurate for monitoring soil moisture near the surface but may require frequent calibration."),
                          UnorderedListRow(
                              description:
                                  "Time Domain Reflectometry (TDR): Utilizes electromagnetic waves to measure soil moisture by analyzing the dielectric constant of the soil. It provides continuous readings and is suitable for various soil types but can be expensive."),
                          UnorderedListRow(
                              description:
                                  "Neutron Probe: Measures soil moisture by detecting the intensity of neutrons emitted by hydrogen atoms in water molecules. It offers accurate results but requires specialized equipment and expertise."),
                          UnorderedListRow(
                              description:
                                  "Capacitance Sensors: Measure soil moisture based on changes in electrical capacitance caused by water content variations. They are easy to install, cost-effective, and suitable for continuous monitoring but may be affected by soil salinity and temperature."),
                          Text("4. Factors Influencing Soil Moisture",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(
                              "Several factors influence soil moisture dynamics, including:",
                              style: TextStyle(fontSize: 13)),
                          UnorderedListRow(
                              description:
                                  "Climate: Precipitation, temperature, humidity, and evapotranspiration rates affect soil moisture levels."),
                          UnorderedListRow(
                              description:
                                  "Soil Type: Soil texture, structure, porosity, and organic matter content influence water retention and drainage."),
                          UnorderedListRow(
                              description:
                                  "Vegetation: Plant species, density, and canopy cover impact soil moisture through evapotranspiration and water uptake."),
                          UnorderedListRow(
                              description:
                                  "Topography: Slope, aspect, and landform characteristics influence water infiltration, runoff, and redistribution."),
                          UnorderedListRow(
                              description:
                                  "Land Use: Agricultural practices, irrigation methods, and land management activities can alter soil moisture regimes."),
                          Text("5. Applications of Soil Moisture",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(
                              "Soil moisture monitoring finds applications in various fields, including:",
                              style: TextStyle(fontSize: 13)),
                          UnorderedListRow(
                              description:
                                  "Agriculture: Optimizing irrigation scheduling, assessing crop water requirements, and managing soil fertility."),
                          UnorderedListRow(
                              description:
                                  "Environmental Science: Studying hydrological processes, assessing drought vulnerability, and predicting ecosystem responses to climate change."),
                          UnorderedListRow(
                              description:
                                  "Forestry: Monitoring soil moisture for forest health assessment, wildfire risk prediction, and habitat restoration."),
                          UnorderedListRow(
                              description:
                                  "Construction: Assessing soil compaction, stability, and drainage for infrastructure development and site planning."),
                          UnorderedListRow(
                              description:
                                  "Weather Forecasting: Incorporating soil moisture data into meteorological models for improving precipitation forecasts and drought monitoring."),
                          Text("6. Conclusion",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(
                              "Soil moisture is a critical parameter influencing agricultural productivity, water resource management, and environmental health. Accurate monitoring of soil moisture levels using various techniques allows for informed decision-making in land management practices, contributing to sustainable development and resilience in the face of changing climate conditions. By understanding the importance, measurement techniques, factors influencing soil moisture, and its diverse applications, stakeholders can effectively utilize soil moisture information for optimizing resource use and enhancing ecosystem resilience.",
                              style: TextStyle(fontSize: 13))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

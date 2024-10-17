import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tx/widgets/info_card.dart';

class LaboratoryPage extends StatefulWidget {
  const LaboratoryPage({super.key});

  @override
  State<LaboratoryPage> createState() => _LaboratoryPageState();
}

class _LaboratoryPageState extends State<LaboratoryPage> {
  final List<Map<String, String>> _carouselItems = [
    {
      'image': 'assets/images/utils/fairing.jpg',
      'title': 'Fairing - Capa de proteção de carga de veículos espaciais',
      'subtitle':
          'Design de uma Fairing com dimensões para equipar o foguete Proton-K',
    },
    {
      'image': 'assets/images/utils/v2.jpg',
      'title': 'Por dentro do foguete V2',
      'subtitle':
          'Primeiro foguete usado em guerra, feito pelos alemães e chamado V2',
    },
    {
      'image': 'assets/images/utils/rocket.webp',
      'title': 'Foguete se preparando para decolar',
      'subtitle':
          'Motor do primeiro estágio do foguete Saturno-V usado no programa Apollo',
    },
    {
      'image': 'assets/images/utils/f104.jpg',
      'title': 'XF-104 em modo VTOL',
      'subtitle':
          'Caça americano com projeto de adaptação para poder operar em modo VTOL',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(
          Icons.rocket_launch_outlined,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/jpl.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(context).colorScheme.surface,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'JPL',
                    style: TextStyle(
                      fontFamily: 'Nasalization',
                    ),
                  ),
                  Gap(5),
                  Text(
                    'Jet Propulsion Laboratory',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            pinned: true,
          ),
          const SliverGap(30),
          SliverToBoxAdapter(
            child: CarouselSlider(
              items: _carouselItems.map(
                (item) {
                  return CarouselItem(
                    imagePath: item['image']!,
                    title: item['title']!,
                    subtitle: item['subtitle']!,
                  );
                },
              ).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: 600,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                enlargeFactor: 2,
                initialPage: Random().nextInt(_carouselItems.length),
              ),
            ),
          ),
          const SliverGap(1000),
        ],
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const CarouselItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(10),
          ListTile(
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(subtitle),
          ),
        ],
      ),
    );
  }
}

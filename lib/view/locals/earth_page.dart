import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tx/view/locals/space_center_page.dart';
import 'package:tx/widgets/info_card.dart';

class EarthPage extends StatefulWidget {
  const EarthPage({super.key});

  @override
  State<EarthPage> createState() => _EarthPageState();
}

class _EarthPageState extends State<EarthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/earth.png',
                fit: BoxFit.cover,
              ),
              title: const Text(
                'T E R R A',
                style: TextStyle(
                  fontFamily: 'Nasalization',
                ),
              ),
              centerTitle: true,
            ),
            pinned: true,
          ),
          const SliverGap(30),
          const SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Text(
                  'A Terra é nossa bola azul de 12.742 km de diâmetro, com 4,5 bilhões de anos, ainda girando e acelerando pelo espaço a 107 mil km/h. Com uma superfície de 510 milhões de km², ela fica ali, a 150 milhões de km do Sol, fazendo o que faz de melhor: nos levar nessa jornada cósmica sem nem suar!'),
            ),
          ),
          const SliverGap(30),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 itens por linha
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio:
                  2, // Proporção para ajustar o tamanho do ListTile
            ),
            delegate: SliverChildListDelegate([
              const InfoCard(
                icon: Icons.public,
                title: 'Tamanho',
                subtitle: '12.742 km de diâmetro',
              ),
              InfoCard(
                icon: Icons.terrain,
                title: 'Área da Superfície',
                subtitle: '510,1 milhões km²',
              ),
              InfoCard(
                icon: Icons.timelapse,
                title: 'Idade',
                subtitle: '4,543 bilhões de anos',
              ),
              InfoCard(
                icon: Icons.wb_sunny,
                title: 'Distância do Sol',
                subtitle: '149,6 milhões\nde km',
              ),
            ]),
          ),
          SliverGap(20),
          SliverToBoxAdapter(
            child: Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      'NASA',
                      style: TextStyle(
                        fontFamily: 'Nasalization',
                      ),
                    ),
                    Gap(5),
                    Text(
                      'Space Center',
                    )
                  ],
                ),
                subtitle: Text(
                  'O centro de comando e controle das \nsuas missões',
                ),
                leading: Icon(Icons.rocket_launch_rounded),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SpaceCenterPage(),
                    )),
              ),
            ),
          ),
          const SliverGap(1000),
        ],
      ),
    );
  }
}

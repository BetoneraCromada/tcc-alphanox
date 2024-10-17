import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tx/view/locals/agency/observatory_page.dart';
import 'package:tx/view/locals/earth_page.dart';
import 'package:tx/widgets/info_card.dart';

class SpaceCenterPage extends StatefulWidget {
  const SpaceCenterPage({super.key});

  @override
  State<SpaceCenterPage> createState() => _SpaceCenterPageState();
}

class _SpaceCenterPageState extends State<SpaceCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'batmann',
        onPressed: () {},
        label: const Text('Próxima Missão'),
        icon: const Icon(Icons.next_plan_outlined),
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
                      'assets/images/space-center.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 350, // Defina o tamanho do container
                      width: double.infinity, // Ocupar toda a largura
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent, // Começo transparente
                            Theme.of(context)
                                .colorScheme
                                .surface, // Cor de fundo no final (ex: azul)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NASA',
                    style: TextStyle(
                      //color: const Color.fromARGB(255, 255, 84, 72),
                      fontFamily: 'Nasalization',
                    ),
                  ),
                  Gap(5),
                  Text(
                    'Space Center',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              centerTitle: true,
            ),
            pinned: true,
          ),
          const SliverGap(30),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: ExpansionTile(
                initiallyExpanded: true,
                title: const Text(
                  'Olá Sr. D. D. Eisenhower',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                childrenPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 20,
                ),
                children: [
                  const Text(
                    'Seja bem vindo senhor às nossas instalações, me mandaram te entregar essa carta...',
                  ),
                  const Gap(20),
                  FilledButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => Dialog.fullscreen(
                        child: Scaffold(
                          appBar: AppBar(
                            title: const Text('Vamos ver o que diz...'),
                          ),
                          body: ListView(
                            padding: const EdgeInsets.all(10),
                            children: const [
                              Text(
                                'Washington, 1958\n\nEstimado Presidente Eisenhower,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\n\nSei que o senhor está focado em muitas questões urgentes, mas o motivo desta carta é de extrema importância e envolve nada menos do que o futuro da humanidade. Em algum momento, daqui a 64 anos, um asteroide de dimensões preocupantes estará em rota direta para a Terra. Parece distante, algo que as próximas gerações resolveriam, mas a verdade é que as bases dessa solução devem ser lançadas agora.\n\nNo presente, não dispomos de toda a tecnologia necessária para evitar tal evento catastrófico. Contudo, é imperativo que comecemos a explorar o espaço e obter informações cruciais para missões futuras. O sucesso depende de entender mais sobre essas rochas espaciais e desenvolver métodos para lidar com elas antes que seja tarde. Seu recente esforço na criação de uma agência espacial é o primeiro passo, mas o verdadeiro desafio será convencer as gerações vindouras de que o que começamos agora será vital para a sobrevivência deles.\n\nSe o senhor agir com visão, poderemos pavimentar o caminho para uma missão ainda sem nome, que envolverá a colisão de uma nave com o asteroide. Embora não saibamos todos os detalhes, tenha certeza: é uma jogada direta, quase como desviar um dardo de uma pista de boliche cósmica. Mas, para isso, precisamos de dados – e só o espaço pode nos fornecer.\n\nPor mais difícil que pareça, será necessário perseverar na exploração do desconhecido. Missões tripuladas, telescópios apontados para os céus, satélites orbitando... tudo isso se tornará uma peça do quebra-cabeça. O futuro de cada homem, mulher e criança em nosso planeta depende da visão que temos agora. Um erro de cálculo, e o tempo será tão curto quanto um piscar de olhos.\n\nAgora, senhor Presidente, a Terra não apenas gira; ela também espera pela ação decisiva. A esperança da humanidade pode estar em algo tão pequeno quanto um golpe certeiro no espaço. O senhor está preparado para dar esse primeiro passo?\n\nCom esperança e urgência,\nSeu Conselheiro',
                              ),
                              Gap(100),
                            ],
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Pegar e ler a carta',
                    ),
                  ),
                ],
              ),
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
            delegate: SliverChildListDelegate(const [
              InfoCard(
                icon: Icons.monetization_on_outlined,
                title: 'Idade',
                subtitle: '4,543 bilhões de anos',
              ),
              InfoCard(
                icon: Icons.science_outlined,
                title: 'Pontos de Pesquisa',
                subtitle: '149,6 milhões\nde km',
              ),
            ]),
          ),
          const SliverGap(20),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: const ListTile(
                title: Text(
                  'Controle de Missão',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                    'Veja os corpos celestes catalogados do Sistema Solar'),
                leading: Icon(Icons.rocket_launch_rounded),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title: const Text(
                  'Observatório',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                    'Veja os corpos celestes catalogados do Sistema Solar'),
                leading: const Icon(Icons.rocket_launch_rounded),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EarthPage(),
                  ),
                ),
              ),
            ),
          ),
          const SliverGap(1000),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

String baconText =
    "Bacon ipsum dolor amet pork loin ground round jerky bresaola, meatloaf sausage jowl picanha ham beef ribs drumstick chislic kevin ham hock pork. Pig strip steak hamburger doner, tri-tip filet mignon buffalo frankfurter swine. Flank venison spare ribs prosciutto. Chislic prosciutto meatball doner. Strip steak cupim pancetta corned beef. Tail doner shoulder, chuck capicola frankfurter beef cow. Pig ground round flank, tongue tenderloin salami pork chop bresaola bacon strip steak swine tri-tip chislic. Cow leberkas tenderloin chislic venison fatback pork chop ball tip cupim burgdoggen frankfurter landjaeger picanha prosciutto. Ball tip meatball pig pork, pastrami sausage pancetta rump corned beef pork loin. Capicola tenderloin pork loin, jerky sirloin pig swine. Chislic alcatra pork, ham hock cupim tenderloin boudin biltong kielbasa pastrami meatloaf beef ribs shoulder andouille rump. Jerky leberkas burgdoggen, salami jowl shank ribeye beef ribs pancetta meatloaf drumstick ham hock. Turkey filet mignon sausage swine. Leberkas pork chop ham burgdoggen tenderloin. Landjaeger cupim buffalo pork belly tenderloin shoulder bresaola flank ham hock burgdoggen. Meatloaf pork loin burgdoggen filet mignon short ribs, meatball jowl short loin biltong tri-tip flank bacon leberkas. Ham alcatra short ribs, shank prosciutto beef ribs flank. Ham hock chuck cupim salami shankle shoulder, shank tail andouille frankfurter kevin boudin rump. Meatloaf strip steak boudin drumstick pork chop, meatball sirloin filet mignon venison ribeye. Short ribs ribeye porchetta filet mignon. Swine ham hock beef, meatloaf ribeye landjaeger tongue venison prosciutto bresaola. Jerky chuck brisket chicken hamburger boudin bresaola tail meatball ball tip ribeye. Burgdoggen shank spare ribs pork belly. Rump biltong turducken buffalo tri-tip brisket frankfurter porchetta shankle ham hock beef kielbasa hamburger chuck. Jerky cow picanha shankle shoulder burgdoggen. Cow andouille porchetta meatball chuck bresaola swine pastrami tongue boudin spare ribs ground round. Rump meatloaf tongue, leberkas prosciutto pastrami strip steak meatball. Shankle ham salami turducken spare ribs burgdoggen. Fatback brisket swine cupim strip steak pork chop pork belly, frankfurter bacon jerky.";

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(widget.imagePath),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

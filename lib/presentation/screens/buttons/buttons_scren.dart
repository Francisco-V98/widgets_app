import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_Screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de botones'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; 

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [

            ElevatedButton(
              onPressed:() {}, 
              child: const Text('Elevated button')
            ),

            const ElevatedButton(
              onPressed:null, 
              child: Text('Elevated Disable')
            ),

            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon')
            ),

            FilledButton(
              onPressed: () {}, 
              child: const Text('Filled')
            ),

            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.accessibility_new_rounded), 
              label: const Text('Filled Icon')
            ),

            OutlinedButton(
              onPressed: (){}, 
              child: const Text('Outline'),
            ),

            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.add_business), 
              label: const Text('Outline Icon')
            ),

            TextButton(
              onPressed: (){}, 
              child: const Text('Text')
            ),

            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.airline_seat_recline_extra_outlined), 
              label: const Text('Text Icon')
            ),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.account_tree_sharp)
            ),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),

            const CustomButton(),

          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Button Custom', style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
    );
  }
}

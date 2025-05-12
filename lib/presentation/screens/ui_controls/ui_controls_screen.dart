import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Sports { fotball, basketball, baseball, tennis, boxing }

class _UIControlsViewState extends State<_UIControlsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [_CustomSwitch(), _CustomRadioButton(), _CustomCheckbox()],
    );
  }
}

class _CustomSwitch extends StatefulWidget {
  const _CustomSwitch();

  @override
  State<_CustomSwitch> createState() => __CustomSwitchState();
}

class __CustomSwitchState extends State<_CustomSwitch> {
  bool isDeveloper = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Developer Mode'),
      subtitle: const Text('Enable developer functions'),
      value: isDeveloper,
      onChanged:
          (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
    );
  }
}

class _CustomRadioButton extends StatefulWidget {
  const _CustomRadioButton();

  @override
  State<_CustomRadioButton> createState() => __CustomRadioButtonState();
}

class __CustomRadioButtonState extends State<_CustomRadioButton> {
  Sports selectedSport = Sports.fotball;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('What is your favourite sport?'),
      subtitle: Text('$selectedSport'),
      children: [
        RadioListTile(
          title: const Text('Football'),
          subtitle: const Text(
            'Any of various forms of team game involving kicking a ball.',
          ),
          value: Sports.fotball,
          groupValue: selectedSport,
          onChanged:
              (value) => setState(() {
                selectedSport = Sports.fotball;
              }),
        ),
        RadioListTile(
          title: const Text('Basketball'),
          subtitle: const Text(
            'A game played between two teams of five players in which goals are scored by throwing a ball through a netted hoop fixed at each end of the court.',
          ),
          value: Sports.basketball,
          groupValue: selectedSport,
          onChanged:
              (value) => setState(() {
                selectedSport = Sports.basketball;
              }),
        ),
        RadioListTile(
          title: const Text('Baseball'),
          subtitle: const Text(
            'A ball game played between two teams of nine on a diamond-shaped circuit of four bases.',
          ),
          value: Sports.baseball,
          groupValue: selectedSport,
          onChanged:
              (value) => setState(() {
                selectedSport = Sports.baseball;
              }),
        ),
        RadioListTile(
          title: const Text('Tennis'),
          subtitle: const Text(
            'A game in which two or four players strike a ball with rackets over a net stretched across a court.',
          ),
          value: Sports.tennis,
          groupValue: selectedSport,
          onChanged:
              (value) => setState(() {
                selectedSport = Sports.tennis;
              }),
        ),
        RadioListTile(
          title: const Text('Boxing'),
          subtitle: const Text(
            'The sport or practice of fighting with the fists, especially with padded gloves in a roped square ring according to prescribed rules (the Queensberry Rules).',
          ),
          value: Sports.boxing,
          groupValue: selectedSport,
          onChanged:
              (value) => setState(() {
                selectedSport = Sports.boxing;
              }),
        ),
      ],
    );
  }
}

class _CustomCheckbox extends StatefulWidget {
  const _CustomCheckbox();

  @override
  State<_CustomCheckbox> createState() => __CustomCheckboxState();
}

class __CustomCheckboxState extends State<_CustomCheckbox> {
  bool footballTickets = false;
  bool basketballTickets = false;
  bool baseballTickets = false;
  bool tennisTickets = false;
  bool boxingTickets = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Buy tickets for?'),
      children: [
        CheckboxListTile(
          title: const Text('Football'),
          value: footballTickets,
          onChanged:
              (value) => setState(() {
                footballTickets = !footballTickets;
              }),
        ),
        CheckboxListTile(
          title: const Text('Basketball'),
          value: basketballTickets,
          onChanged:
              (value) => setState(() {
                basketballTickets = !basketballTickets;
              }),
        ),
        CheckboxListTile(
          title: const Text('Baseball'),
          value: baseballTickets,
          onChanged:
              (value) => setState(() {
                baseballTickets = !baseballTickets;
              }),
        ),
        CheckboxListTile(
          title: const Text('Tennis'),
          value: tennisTickets,
          onChanged:
              (value) => setState(() {
                tennisTickets = !tennisTickets;
              }),
        ),
        CheckboxListTile(
          title: const Text('Boxing'),
          value: boxingTickets,
          onChanged:
              (value) => setState(() {
                boxingTickets = !boxingTickets;
              }),
        ),
      ],
    );
  }
}

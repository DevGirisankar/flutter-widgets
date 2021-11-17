import 'package:flutter/material.dart';

class FormHelper extends StatelessWidget {
  const FormHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form in Flutter'),
      ),
      body: const GcustomForm(),
    );
  }
}

class GcustomForm extends StatefulWidget {
  const GcustomForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GcustomFormState();
  }
}

class GcustomFormState extends State<GcustomForm> {
  final _formKey = GlobalKey<FormState>();

  AutovalidateMode _autoValidate = AutovalidateMode.disabled;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  late String _name = '';
  late String _phone = '';
  late String _dob = '';
  late String _address = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: form1(),
    );
  }

// form with controllers to get value
  Widget form() {
    return Form(
      autovalidateMode: _autoValidate,
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              textCapitalization: TextCapitalization.words,
              controller: _nameController,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: _phoneController,
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter a phone number',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                } else if (value.length < 10) {
                  return 'Please Enter 10 digit number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _dobController,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Enter your date of birth',
                labelText: 'Dob',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your date of birth';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              textCapitalization: TextCapitalization.words,
              controller: _addressController,
              decoration: const InputDecoration(
                icon: Icon(Icons.home_outlined),
                hintText: 'Enter your address',
                labelText: 'Address',
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(
                          'Name: ${_nameController.text} \n Phone: ${_phoneController.text} \n Dob: ${_dobController.text} \n Address: ${_addressController.text}');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Success!'),
                        ),
                      );
                    } else {
                      setState(() {
                        _autoValidate = AutovalidateMode.always;
                      });
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }

  // form with onSaved to get value
  Widget form1() {
    return Form(
      autovalidateMode: _autoValidate,
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              textCapitalization: TextCapitalization.words,
              onSaved: (value) {
                _name = value!;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              onSaved: (value) {
                _phone = value!;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter a phone number',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                } else if (value.length < 10) {
                  return 'Please Enter 10 digit number';
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (value) {
                _dob = value!;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Enter your date of birth',
                labelText: 'Dob',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your date of birth';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              textCapitalization: TextCapitalization.words,
              onSaved: (value) {
                _address = value!;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.home_outlined),
                hintText: 'Enter your address',
                labelText: 'Address',
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      _formKey.currentState!.save();
                      print(
                          'Form1 results \n \n Name: $_name \n Phone: $_phone \n Dob: $_dob \n Address: $_address');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Success!'),
                        ),
                      );
                    } else {
                      setState(() {
                        _autoValidate = AutovalidateMode.always;
                      });
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}

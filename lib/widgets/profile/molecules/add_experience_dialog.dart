import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/ui/date_form_input.dart';
import 'package:job_finder/widgets/profile/ui/date_input.dart';
import 'package:job_finder/widgets/profile/ui/form_text_input.dart';
import 'package:job_finder/widgets/profile/ui/select_form.dart';
import 'package:job_finder/widgets/profile/ui/text_input.dart';

class AddExperienceDialog extends StatefulWidget {
  final Function(Map<String, dynamic>) submitExperience;

  AddExperienceDialog({required this.submitExperience});

  @override
  State<AddExperienceDialog> createState() => _AddExperienceDialogState();
}

class _AddExperienceDialogState extends State<AddExperienceDialog> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedJobType;
  String? _selectedLocationType;
  bool _isCurrentlyWorking = true;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();

  final List<String> jobTypes = [
    "Full-time",
    "Part-time",
    "Self-employed",
    "Freelance",
    "Contract",
    "Internship",
    "Apprenticeship",
    "Seasonal",
  ];

  final List<String> locationType = [
    "On-site",
    "Hybrid",
    "Remote",
  ];

  void _handleSubmit() {
    _formKey.currentState?.validate() ?? false;

    if (_titleController.text.isEmpty ||
        _companyController.text.isEmpty ||
        _selectedJobType == null ||
        _startDateController.text.isEmpty ||
        (!_isCurrentlyWorking && _endDateController.text.isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all required fields.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final newExperience = {
      "companyProfile": "assets/images/company.jpg",
      "jobPosition": _titleController.text,
      "companyName": _companyController.text,
      "workingPeriodeType": _selectedJobType!,
      "jobLongevity":
          "${_startDateController.text} - ${_isCurrentlyWorking ? "Present" : _endDateController.text}",
      "companyRegion": _locationController.text,
      "otherInfo": _descriptionController.text.isNotEmpty
          ? _descriptionController.text
          : null,
      "skills": _skillsController.text,
    };

    widget.submitExperience(newExperience);
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    _selectedJobType = jobTypes.isNotEmpty ? jobTypes[0] : null;
    _selectedLocationType = locationType.isNotEmpty ? locationType[0] : null;
  }

  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Experience'),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("* indicates required"),
                        const SizedBox(height: 20),
                        FormTextInput(
                          inputController: _titleController,
                          label: "Title",
                          hintText: "Ex: Retail Sales Manager",
                        ),
                        const SizedBox(height: 24),
                        FormSelect(
                          value: _selectedJobType!,
                          selectData: jobTypes,
                          label: "Job Type",
                          hintText: "Please Select",
                        ),
                        const SizedBox(height: 24),
                        FormTextInput(
                          inputController: _companyController,
                          label: "Company Name",
                          hintText: "Ex: Microsoft",
                        ),
                        const SizedBox(height: 24),
                        FormTextInput(
                          inputController: _locationController,
                          label: "Location",
                          hintText: "Ex: Jakarta, Indonesia",
                        ),
                        const SizedBox(height: 24),
                        FormSelect(
                          value: _selectedLocationType,
                          selectData: locationType,
                          label: "Location Type",
                          hintText: "Please Select",
                        ),
                        const SizedBox(height: 24),
                        CheckboxListTile(
                          title:
                              const Text("I am currently working in this role"),
                          value: _isCurrentlyWorking,
                          onChanged: (bool? value) {
                            setState(() {
                              _isCurrentlyWorking = !_isCurrentlyWorking;
                              if (_isCurrentlyWorking) {
                                _endDateController.text = "Present";
                              } else {
                                _endDateController.clear();
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          checkColor: Colors.white,
                          activeColor: Colors.blue.shade900,
                        ),
                        const SizedBox(height: 24),
                        FormDateInput(
                          inputController: _startDateController,
                          label: "Start Date",
                          hintText: "Select Date",
                        ),
                        const SizedBox(height: 24),
                        DateNoFormInput(
                          inputController: _endDateController,
                          label: 'End Date',
                          hintText: _isCurrentlyWorking
                              ? "Present"
                              : "Select End Date",
                          additionalCondition: _isCurrentlyWorking,
                        ),
                        const SizedBox(height: 24),
                        TextNoFormInput(
                          inputController: _descriptionController,
                          label: "Description",
                          maxLines: 4,
                          maxLength: 2000,
                        ),
                        const SizedBox(height: 24),
                        TextNoFormInput(
                          inputController: _skillsController,
                          label: "Skills",
                          hintText: "Ex: Project Management",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                ),
                onPressed: _handleSubmit,
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

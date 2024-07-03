import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_auth2_widget.dart' show EditProfileAuth2Widget;
import 'package:flutter/material.dart';

class EditProfileAuth2Model extends FlutterFlowModel<EditProfileAuth2Widget> {
  ///  Local state fields for this component.

  List<String> selectedServices = [];
  void addToSelectedServices(String item) => selectedServices.add(item);
  void removeFromSelectedServices(String item) => selectedServices.remove(item);
  void removeAtIndexFromSelectedServices(int index) =>
      selectedServices.removeAt(index);
  void insertAtIndexInSelectedServices(int index, String item) =>
      selectedServices.insert(index, item);
  void updateSelectedServicesAtIndex(int index, Function(String) updateFn) =>
      selectedServices[index] = updateFn(selectedServices[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  String? _yourNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Pan widget.
  FocusNode? panFocusNode;
  TextEditingController? panTextController;
  String? Function(BuildContext, String?)? panTextControllerValidator;
  String? _panTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[A-Z]{5}[0-9]{4}[A-Z]{1}\$').hasMatch(val)) {
      return 'Invalid PAN Number!';
    }
    return null;
  }

  // State field(s) for ICAI_regNo widget.
  FocusNode? iCAIRegNoFocusNode;
  TextEditingController? iCAIRegNoTextController;
  String? Function(BuildContext, String?)? iCAIRegNoTextControllerValidator;
  // State field(s) for Aadhaar widget.
  FocusNode? aadhaarFocusNode;
  TextEditingController? aadhaarTextController;
  String? Function(BuildContext, String?)? aadhaarTextControllerValidator;
  // State field(s) for primaryLang widget.
  String? primaryLangValue;
  FormFieldController<String>? primaryLangValueController;
  // State field(s) for secondaryLang widget.
  String? secondaryLangValue;
  FormFieldController<String>? secondaryLangValueController;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  String? _addressTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for pinCode widget.
  FocusNode? pinCodeFocusNode;
  TextEditingController? pinCodeTextController;
  String? Function(BuildContext, String?)? pinCodeTextControllerValidator;
  String? _pinCodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[1-9][0-9]{5}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (pincodeFetch)] action in pinCode widget.
  ApiCallResponse? apiResultqqw;
  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for district widget.
  FocusNode? districtFocusNode;
  TextEditingController? districtTextController;
  String? Function(BuildContext, String?)? districtTextControllerValidator;
  String? _districtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  String? _myBioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    panTextControllerValidator = _panTextControllerValidator;
    addressTextControllerValidator = _addressTextControllerValidator;
    pinCodeTextControllerValidator = _pinCodeTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
    districtTextControllerValidator = _districtTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
    myBioTextControllerValidator = _myBioTextControllerValidator;
  }

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    panFocusNode?.dispose();
    panTextController?.dispose();

    iCAIRegNoFocusNode?.dispose();
    iCAIRegNoTextController?.dispose();

    aadhaarFocusNode?.dispose();
    aadhaarTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    districtFocusNode?.dispose();
    districtTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}

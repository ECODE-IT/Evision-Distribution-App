import 'package:evision_distribution_app/models/grn_model.dart';

class PurchaseOrderController {
  static List<GrnModel> productsToAdd = [];

  static checkWhetherExists(GrnModel? selectedGrn) {
    for (var item in productsToAdd) {
      if (selectedGrn!.serialNumber == item.serialNumber) {
        return true;
      }
    }
    return false;
  }
}

import 'package:evision_distribution_app/models/company_model.dart';
import 'package:evision_distribution_app/models/grn_model.dart';
import 'package:evision_distribution_app/models/po_model.dart';

List<CompanyModel> companies = [
  CompanyModel('Baurs LLC', 'D569', 'C232932DFDFS', 'assets/images/baurs.png'),
  CompanyModel('Elephant House', 'D569', 'C232932DFDFS', 'assets/images/elephant_house.png'),
  CompanyModel('Evision Company', 'D569', 'C232932DFDFS', 'assets/images/evision.png'),
  CompanyModel('Atlas Company', 'D569', 'C232932DFDFS', 'assets/images/atlas.png')
];

List<PoModel> poList = [
  PoModel('PO_00123', 'D569', 18, null),
  PoModel('PO_00131', 'D569', 18, null)
];

List<GrnModel> grnList = [
  GrnModel(01, 'CDS0023', 'Elephanthouse necto 300ml', 8, 128.50, false),
  GrnModel(02, 'CDS0074', 'Elephanthouse Cream soda 1L', 24, 128.50, false),
  GrnModel(04, 'CDS0023', 'Elephanthouse Wonder Bar  Ice cream', 8, 128.50, false),
  GrnModel(03, 'CDS0041', 'Elephanthouse Sausage 675g', 8, 128.50, false),
];

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
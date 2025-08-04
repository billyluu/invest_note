import 'package:invest_note/core/constants/app_finance_type.dart';

enum AppFinanceMarket {
  snp500(
    type: AppFinanceType.stock,
  ),
  nasadaq(
    type: AppFinanceType.stock,
  ),
  dowjones(
    type: AppFinanceType.stock,
  ),
  russell2000(
    type: AppFinanceType.stock,
  ),
  twii(
    type: AppFinanceType.stock,
  ),
  bitcoin(
    type: AppFinanceType.crypto,
  ),
  ethereum(
    type: AppFinanceType.crypto,
  ),

  ;

  const AppFinanceMarket({
    required this.type,
  });


  final AppFinanceType type;

}

import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/model/category.dart';

extension CategoryX on Category {
  DBCategory toLocal() => DBCategory(
        id: id,
        name: name,
        emoji: emoji,
        isIncome: isIncome,
      );
}

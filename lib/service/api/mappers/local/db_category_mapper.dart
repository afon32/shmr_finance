import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/model/category.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension DBCategoryX on DBCategory {
  Category toDomain() => Category(
        id: id,
        name: name,
        emoji: emoji,
        isIncome: isIncome,
      );
}

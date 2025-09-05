import '../../domain/entities/emoney_history_entity.dart';
import '../models/emoney_history_model.dart';

class EmoneyHistoryMapper {
  static EmoneyHistoryEntity toEntity(EmoneyHistoryModel model) {
    return EmoneyHistoryEntity(
      amount: model.amount,
      date: model.date,
      transaction: model.transaction,
      status: model.status,
    );
  }

  static List<EmoneyHistoryEntity> toEntityList(List<EmoneyHistoryModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }
}

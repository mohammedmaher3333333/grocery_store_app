import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_store_app/core/service/hive/hive_database.dart';
import 'package:grocery_store_app/features/admin/add_notifications/data/models/add_notification_model.dart';

part 'get_all_notification_admin_event.dart';
part 'get_all_notification_admin_state.dart';
part 'get_all_notification_admin_bloc.freezed.dart';

class GetAllNotificationAdminBloc
    extends Bloc<GetAllNotificationAdminEvent, GetAllNotificationAdminState> {
  GetAllNotificationAdminBloc()
      : super(const GetAllNotificationAdminState.loading()) {
    on<FetchAllNotificationAdminEvent>(_getAllNotification);
  }

  FutureOr<void> _getAllNotification(
    FetchAllNotificationAdminEvent event,
    Emitter<GetAllNotificationAdminState> emit,
  ) async {
    try {
      emit(const GetAllNotificationAdminState.loading());

      final list = HiveDatabase().notificationBox!.values.toList();

      if (list.isEmpty) {
        emit(const GetAllNotificationAdminState.empty());
      } else {
        emit(GetAllNotificationAdminState.success(notificationList: list));
      }
    } catch (e) {
      emit(GetAllNotificationAdminState.error(error: e.toString()));
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_store_app/core/extensions/string_exetension.dart';
import 'package:grocery_store_app/core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:grocery_store_app/core/utils/app_strings.dart';
import 'package:grocery_store_app/core/utils/app_values.dart';
import 'package:grocery_store_app/features/customer/notifications/data/models/notification_model.dart';

class AddNotificationDataSource {
  // Send Notification Topics to users
  Future<void> sendNotifications({
    required String body,
    required String title,
    required int productId,
  }) async {
    final response = await FirebaseCloudMessaging().sendTopicNotification(
      body: body,
      title: title,
      productId: productId,
    );
    return response;
  }

  // add Notifications to all users in firebase data base

  Future<void> addNotificationsToAllUsersFirebase({
    required String body,
    required String title,
    required int productId,
  }) async {
    final notificationId = AppValues.randomStringId;
    const createAt = '';

    final users = FirebaseFirestore.instance.collection(usersCollection);

    final usersGet = await users.get();

    for (final doc in usersGet.docs) {
      await users
          .doc(doc.id)
          .collection(notificationCollection)
          .doc(notificationId)
          .set(
            NotificationModel(
              body: body,
              title: title,
              productId: productId,
              isSeen: false,
              createdAt: createAt.convertDataFormate(),
              notificationId: notificationId,
            ).toJson(),
          );
    }
  }
}

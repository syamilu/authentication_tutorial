import 'package:cloud_firestore/cloud_firestore.dart';

class TodoOperations {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createTodo(String item) async {
    try {
      await _firestore.collection('todos').add({
        'item': item,
        'checked': false, // Default value for new todos
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to create todo: $e');
    }
  }

  Future<void> deleteTodo(String todoId) async {
    try {
      await _firestore.collection('todos').doc(todoId).delete();
    } catch (e) {
      throw Exception('Failed to delete todo: $e');
    }
  }

  Future<void> updateTodoChecked(String todoId, bool isChecked) async {
    try {
      await _firestore.collection('todos').doc(todoId).update({
        'checked': isChecked,
      });
    } catch (e) {
      throw Exception('Failed to update todo checked status: $e');
    }
  }

  // edit operations
  Future<void> updateTodoDetails(String todoId, String item) async {
    try {
      await _firestore.collection('todos').doc(todoId).update({
        'item': item,
      });
    } catch (e) {
      throw Exception('Failed to update todo details: $e');
    }
  }
}
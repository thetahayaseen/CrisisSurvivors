import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crisis_survivors/data/models/base_model.dart';

class GenericRepository<T extends BaseModel> {
  final CollectionReference _collection;
  final T Function(Map<String, dynamic> json, String id) fromJson;

  GenericRepository({
    required String path,
    required this.fromJson,
  }) : _collection = FirebaseFirestore.instance.collection(path);

  Future<void> createOrUpdate(T model) async {
    await _collection.doc(model.id).set(model.toJson());
  }

  Future<T?> getById(String id) async {
    final doc = await _collection.doc(id).get();
    if (!doc.exists) return null;
    return fromJson(doc.data() as Map<String, dynamic>, doc.id);
  }

  Future<List<T>> getAll() async {
    final snapshot = await _collection.get();
    return snapshot.docs
        .map((doc) => fromJson(doc.data() as Map<String, dynamic>, doc.id))
        .toList();
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}

import 'dart:io';
import 'package:supabase_flutter/supabase_flutter.dart';

class FileManagementService {

    final SupabaseClient _supabaseClient = Supabase.instance.client;

    Future<String?> uploadFile({required String bucket, required String path, required File file}) async {
        try {
            final fileBytes = await file.readAsBytes();

            await _supabaseClient.storage.from(bucket).uploadBinary(path, fileBytes, fileOptions: const FileOptions(upsert: true));
            final publicUrl = _supabaseClient.storage.from(bucket).getPublicUrl(path);
            return publicUrl;
        } catch (e) {
            return null;
        }
    }

  String getPublicUrl({
    required String bucket,
    required String path,
  }) {
    return _supabaseClient.storage.from(bucket).getPublicUrl(path);
    }

  Future<bool> removeFile({
    required String bucket,
    required String path,
  }) async {
    try {
      await _supabaseClient.storage.from(bucket).remove([path]);
      return true;
    } catch (e) {
      return false;
    }
  }
}
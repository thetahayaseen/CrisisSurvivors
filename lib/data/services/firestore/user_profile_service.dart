import 'dart:io';
import 'package:crisis_survivors/data/models/user_profile/user_profile.dart';
import 'package:crisis_survivors/data/repositories/generic_repository.dart';
import 'package:crisis_survivors/data/services/storage/file_management_service.dart';

class UserProfileService {
  final userProfileBucket = "user_profiles";
  final GenericRepository<UserProfile> _repository;

  UserProfileService()
      : _repository = GenericRepository<UserProfile>(
          path: 'user_profiles', 
          fromJson: (json, id) => UserProfile.fromJson({
            ...json,
            'id': id, 
          }),
        );

  Future<void> createOrUpdateProfile(UserProfile profile) async {
    return _repository.createOrUpdate(profile);
  }

  Future<UserProfile?> getProfileById(String id) {
    return _repository.getById(id);
  }

  Future<List<UserProfile>> getAllProfiles() {
    return _repository.getAll();
  }

  Future<void> deleteProfile(String id) {
    return _repository.delete(id);
  }

  Future<List<UserProfile>> getProfilesWhere(String field, dynamic value) {
    return _repository.getWhere(field, value);
  }

  Future<List<UserProfile>> getProfilesFilteredBy(
      Map<String, dynamic> filters) {
    return _repository.getFilteredBy(filters);
  }

  Future<String?> uploadProfilePicture(
    {required String userId, required File profilePicture}
  ) async {
    final picturePath = "profile_pictures/$userId";

    FileManagementService fileManagementService = FileManagementService();
    String? profilePicturePublicUrl = await fileManagementService.uploadFile(bucket: userProfileBucket, path: picturePath, file: profilePicture);    

    if(profilePicturePublicUrl == null) return null;    
    return profilePicturePublicUrl;
  }

}

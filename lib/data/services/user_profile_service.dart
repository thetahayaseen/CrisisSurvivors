import 'package:crisis_survivors/data/models/user_profile/user_profile.dart';
import 'package:crisis_survivors/data/repositories/generic_repository.dart';

class UserProfileService {
  final GenericRepository<UserProfile> _repository;

  UserProfileService()
      : _repository = GenericRepository<UserProfile>(
          path: 'user_profiles', 
          fromJson: (json, id) => UserProfile.fromJson({
            ...json,
            'id': id, 
          }),
        );

  Future<void> createOrUpdateProfile(UserProfile profile) {
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
}

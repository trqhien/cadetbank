import 'package:restricted_login_flow/src/infrastructure/core/constants/strings.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

enum BlockedStateType {
  generic,
  fci,
  unmapped,
}

extension BlockedStateTypeStringX on String {
  BlockedStateType get asBlockedStateType {
    switch (this) {
      case 'FCI-100':
      case 'FCI-101':
      case 'FCI-102':
      case 'FCI-103':
      case 'FCI-110':
      case 'FCI-111':
      case 'FCI-112':
      case 'FCI-120':
      case 'FCI-123':
      case 'FCI-124':
      case 'FCI-125':
      case 'FCI-126':
      case 'FCI-127':
      case 'FCI-130':
      case 'FCI-131':
      case 'FCI-141':
      case 'FCI-142':
      case 'FCI-143':
      case 'FCI-144':
      case 'FCI-151':
      case 'FCI-152':
      case 'FCI-153':
      case 'FCI-154':
      case 'FCI-200':
        return BlockedStateType.generic;
      case 'FCI-113':
      case 'FCI-121':
      case 'FCI-122':
      case 'FCI-161':
      case 'FCI-162':
      case 'FCI-163':
      case 'FCI-164':
      case 'FCI-171':
      case 'FCI-172':
      case 'FCI-173':
      case 'FCI-174':
        return BlockedStateType.fci;
      default:
        return BlockedStateType.unmapped;
    }
  }
}

extension BlockedStateTypeX on BlockedStateType {
  String get iconPath {
    switch (this) {
      case BlockedStateType.generic:
      case BlockedStateType.fci:
        return Assets.imageWarning;
      case BlockedStateType.unmapped:
      default:
        return '';
    }
  }

  String get titleContent {
    switch (this) {
      case BlockedStateType.generic:
        return Strings.blockedGenericTitle;
      case BlockedStateType.fci:
        return Strings.blockedFciTitle;
      case BlockedStateType.unmapped:
      default:
        return '';
    }
  }

  String get bodyContent {
    switch (this) {
      case BlockedStateType.generic:
        return Strings.blockedGenericBody;
      case BlockedStateType.fci:
        return Strings.blockedFciBody;
      case BlockedStateType.unmapped:
      default:
        return '';
    }
  }

  String? get primaryButtonTitle {
    switch (this) {
      case BlockedStateType.generic:
        return Strings.buttonLabelMessageUs;
      case BlockedStateType.fci:
      case BlockedStateType.unmapped:
      default:
        return null;
    }
  }
}

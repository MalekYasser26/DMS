class Input$BookingBranchInput {
  factory Input$BookingBranchInput({
    String? name,
    String? address,
    String? phone,
    String? mapURL,
  }) =>
      Input$BookingBranchInput._({
        if (name != null) r'name': name,
        if (address != null) r'address': address,
        if (phone != null) r'phone': phone,
        if (mapURL != null) r'mapURL': mapURL,
      });

  Input$BookingBranchInput._(this._$data);

  factory Input$BookingBranchInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('mapURL')) {
      final l$mapURL = data['mapURL'];
      result$data['mapURL'] = (l$mapURL as String?);
    }
    return Input$BookingBranchInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get address => (_$data['address'] as String?);
  String? get phone => (_$data['phone'] as String?);
  String? get mapURL => (_$data['mapURL'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('mapURL')) {
      final l$mapURL = mapURL;
      result$data['mapURL'] = l$mapURL;
    }
    return result$data;
  }

  CopyWith$Input$BookingBranchInput<Input$BookingBranchInput> get copyWith =>
      CopyWith$Input$BookingBranchInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingBranchInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$mapURL = mapURL;
    final lOther$mapURL = other.mapURL;
    if (_$data.containsKey('mapURL') != other._$data.containsKey('mapURL')) {
      return false;
    }
    if (l$mapURL != lOther$mapURL) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$address = address;
    final l$phone = phone;
    final l$mapURL = mapURL;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('mapURL') ? l$mapURL : const {},
    ]);
  }
}

abstract class CopyWith$Input$BookingBranchInput<TRes> {
  factory CopyWith$Input$BookingBranchInput(
    Input$BookingBranchInput instance,
    TRes Function(Input$BookingBranchInput) then,
  ) = _CopyWithImpl$Input$BookingBranchInput;

  factory CopyWith$Input$BookingBranchInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingBranchInput;

  TRes call({
    String? name,
    String? address,
    String? phone,
    String? mapURL,
  });
}

class _CopyWithImpl$Input$BookingBranchInput<TRes>
    implements CopyWith$Input$BookingBranchInput<TRes> {
  _CopyWithImpl$Input$BookingBranchInput(
    this._instance,
    this._then,
  );

  final Input$BookingBranchInput _instance;

  final TRes Function(Input$BookingBranchInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? address = _undefined,
    Object? phone = _undefined,
    Object? mapURL = _undefined,
  }) =>
      _then(Input$BookingBranchInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (address != _undefined) 'address': (address as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (mapURL != _undefined) 'mapURL': (mapURL as String?),
      }));
}

class _CopyWithStubImpl$Input$BookingBranchInput<TRes>
    implements CopyWith$Input$BookingBranchInput<TRes> {
  _CopyWithStubImpl$Input$BookingBranchInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? address,
    String? phone,
    String? mapURL,
  }) =>
      _res;
}

class Input$BookingBranchModifiableInput {
  factory Input$BookingBranchModifiableInput({
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
  }) =>
      Input$BookingBranchModifiableInput._({
        if (name != null) r'name': name,
        if (address != null) r'address': address,
        if (phone != null) r'phone': phone,
        if (mapURL != null) r'mapURL': mapURL,
        if (isActive != null) r'isActive': isActive,
      });

  Input$BookingBranchModifiableInput._(this._$data);

  factory Input$BookingBranchModifiableInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('mapURL')) {
      final l$mapURL = data['mapURL'];
      result$data['mapURL'] = (l$mapURL as String?);
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    return Input$BookingBranchModifiableInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get address => (_$data['address'] as String?);
  String? get phone => (_$data['phone'] as String?);
  String? get mapURL => (_$data['mapURL'] as String?);
  bool? get isActive => (_$data['isActive'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('mapURL')) {
      final l$mapURL = mapURL;
      result$data['mapURL'] = l$mapURL;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    return result$data;
  }

  CopyWith$Input$BookingBranchModifiableInput<
          Input$BookingBranchModifiableInput>
      get copyWith => CopyWith$Input$BookingBranchModifiableInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingBranchModifiableInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$mapURL = mapURL;
    final lOther$mapURL = other.mapURL;
    if (_$data.containsKey('mapURL') != other._$data.containsKey('mapURL')) {
      return false;
    }
    if (l$mapURL != lOther$mapURL) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (_$data.containsKey('isActive') !=
        other._$data.containsKey('isActive')) {
      return false;
    }
    if (l$isActive != lOther$isActive) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$address = address;
    final l$phone = phone;
    final l$mapURL = mapURL;
    final l$isActive = isActive;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('mapURL') ? l$mapURL : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
    ]);
  }
}

abstract class CopyWith$Input$BookingBranchModifiableInput<TRes> {
  factory CopyWith$Input$BookingBranchModifiableInput(
    Input$BookingBranchModifiableInput instance,
    TRes Function(Input$BookingBranchModifiableInput) then,
  ) = _CopyWithImpl$Input$BookingBranchModifiableInput;

  factory CopyWith$Input$BookingBranchModifiableInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingBranchModifiableInput;

  TRes call({
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
  });
}

class _CopyWithImpl$Input$BookingBranchModifiableInput<TRes>
    implements CopyWith$Input$BookingBranchModifiableInput<TRes> {
  _CopyWithImpl$Input$BookingBranchModifiableInput(
    this._instance,
    this._then,
  );

  final Input$BookingBranchModifiableInput _instance;

  final TRes Function(Input$BookingBranchModifiableInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? address = _undefined,
    Object? phone = _undefined,
    Object? mapURL = _undefined,
    Object? isActive = _undefined,
  }) =>
      _then(Input$BookingBranchModifiableInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (address != _undefined) 'address': (address as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (mapURL != _undefined) 'mapURL': (mapURL as String?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
      }));
}

class _CopyWithStubImpl$Input$BookingBranchModifiableInput<TRes>
    implements CopyWith$Input$BookingBranchModifiableInput<TRes> {
  _CopyWithStubImpl$Input$BookingBranchModifiableInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
  }) =>
      _res;
}

class Input$BookingNoteInput {
  factory Input$BookingNoteInput({
    required String userId,
    String? branchId,
    String? visitId,
    String? text,
  }) =>
      Input$BookingNoteInput._({
        r'userId': userId,
        if (branchId != null) r'branchId': branchId,
        if (visitId != null) r'visitId': visitId,
        if (text != null) r'text': text,
      });

  Input$BookingNoteInput._(this._$data);

  factory Input$BookingNoteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    if (data.containsKey('branchId')) {
      final l$branchId = data['branchId'];
      result$data['branchId'] = (l$branchId as String?);
    }
    if (data.containsKey('visitId')) {
      final l$visitId = data['visitId'];
      result$data['visitId'] = (l$visitId as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Input$BookingNoteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  String? get branchId => (_$data['branchId'] as String?);
  String? get visitId => (_$data['visitId'] as String?);
  String? get text => (_$data['text'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('branchId')) {
      final l$branchId = branchId;
      result$data['branchId'] = l$branchId;
    }
    if (_$data.containsKey('visitId')) {
      final l$visitId = visitId;
      result$data['visitId'] = l$visitId;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith$Input$BookingNoteInput<Input$BookingNoteInput> get copyWith =>
      CopyWith$Input$BookingNoteInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingNoteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (_$data.containsKey('branchId') !=
        other._$data.containsKey('branchId')) {
      return false;
    }
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (_$data.containsKey('visitId') != other._$data.containsKey('visitId')) {
      return false;
    }
    if (l$visitId != lOther$visitId) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$branchId = branchId;
    final l$visitId = visitId;
    final l$text = text;
    return Object.hashAll([
      l$userId,
      _$data.containsKey('branchId') ? l$branchId : const {},
      _$data.containsKey('visitId') ? l$visitId : const {},
      _$data.containsKey('text') ? l$text : const {},
    ]);
  }
}

abstract class CopyWith$Input$BookingNoteInput<TRes> {
  factory CopyWith$Input$BookingNoteInput(
    Input$BookingNoteInput instance,
    TRes Function(Input$BookingNoteInput) then,
  ) = _CopyWithImpl$Input$BookingNoteInput;

  factory CopyWith$Input$BookingNoteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingNoteInput;

  TRes call({
    String? userId,
    String? branchId,
    String? visitId,
    String? text,
  });
}

class _CopyWithImpl$Input$BookingNoteInput<TRes>
    implements CopyWith$Input$BookingNoteInput<TRes> {
  _CopyWithImpl$Input$BookingNoteInput(
    this._instance,
    this._then,
  );

  final Input$BookingNoteInput _instance;

  final TRes Function(Input$BookingNoteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userId = _undefined,
    Object? branchId = _undefined,
    Object? visitId = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Input$BookingNoteInput._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (branchId != _undefined) 'branchId': (branchId as String?),
        if (visitId != _undefined) 'visitId': (visitId as String?),
        if (text != _undefined) 'text': (text as String?),
      }));
}

class _CopyWithStubImpl$Input$BookingNoteInput<TRes>
    implements CopyWith$Input$BookingNoteInput<TRes> {
  _CopyWithStubImpl$Input$BookingNoteInput(this._res);

  final TRes _res;

  @override
  call({
    String? userId,
    String? branchId,
    String? visitId,
    String? text,
  }) =>
      _res;
}

class Input$BookingNoteModifiableInput {
  factory Input$BookingNoteModifiableInput({String? text}) =>
      Input$BookingNoteModifiableInput._({
        if (text != null) r'text': text,
      });

  Input$BookingNoteModifiableInput._(this._$data);

  factory Input$BookingNoteModifiableInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Input$BookingNoteModifiableInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get text => (_$data['text'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith$Input$BookingNoteModifiableInput<Input$BookingNoteModifiableInput>
      get copyWith => CopyWith$Input$BookingNoteModifiableInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingNoteModifiableInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$text = text;
    return Object.hashAll([_$data.containsKey('text') ? l$text : const {}]);
  }
}

abstract class CopyWith$Input$BookingNoteModifiableInput<TRes> {
  factory CopyWith$Input$BookingNoteModifiableInput(
    Input$BookingNoteModifiableInput instance,
    TRes Function(Input$BookingNoteModifiableInput) then,
  ) = _CopyWithImpl$Input$BookingNoteModifiableInput;

  factory CopyWith$Input$BookingNoteModifiableInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingNoteModifiableInput;

  TRes call({String? text});
}

class _CopyWithImpl$Input$BookingNoteModifiableInput<TRes>
    implements CopyWith$Input$BookingNoteModifiableInput<TRes> {
  _CopyWithImpl$Input$BookingNoteModifiableInput(
    this._instance,
    this._then,
  );

  final Input$BookingNoteModifiableInput _instance;

  final TRes Function(Input$BookingNoteModifiableInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? text = _undefined}) =>
      _then(Input$BookingNoteModifiableInput._({
        ..._instance._$data,
        if (text != _undefined) 'text': (text as String?),
      }));
}

class _CopyWithStubImpl$Input$BookingNoteModifiableInput<TRes>
    implements CopyWith$Input$BookingNoteModifiableInput<TRes> {
  _CopyWithStubImpl$Input$BookingNoteModifiableInput(this._res);

  final TRes _res;

  @override
  call({String? text}) => _res;
}

class Input$BookingReservationInput {
  factory Input$BookingReservationInput({
    required String branchId,
    required String serviceId,
    required int date,
    required int time,
  }) =>
      Input$BookingReservationInput._({
        r'branchId': branchId,
        r'serviceId': serviceId,
        r'date': date,
        r'time': time,
      });

  Input$BookingReservationInput._(this._$data);

  factory Input$BookingReservationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$branchId = data['branchId'];
    result$data['branchId'] = (l$branchId as String);
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = (l$serviceId as String);
    final l$date = data['date'];
    result$data['date'] = (l$date as int);
    final l$time = data['time'];
    result$data['time'] = (l$time as int);
    return Input$BookingReservationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get branchId => (_$data['branchId'] as String);
  String get serviceId => (_$data['serviceId'] as String);
  int get date => (_$data['date'] as int);
  int get time => (_$data['time'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$branchId = branchId;
    result$data['branchId'] = l$branchId;
    final l$serviceId = serviceId;
    result$data['serviceId'] = l$serviceId;
    final l$date = date;
    result$data['date'] = l$date;
    final l$time = time;
    result$data['time'] = l$time;
    return result$data;
  }

  CopyWith$Input$BookingReservationInput<Input$BookingReservationInput>
      get copyWith => CopyWith$Input$BookingReservationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingReservationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$branchId = branchId;
    final l$serviceId = serviceId;
    final l$date = date;
    final l$time = time;
    return Object.hashAll([
      l$branchId,
      l$serviceId,
      l$date,
      l$time,
    ]);
  }
}

abstract class CopyWith$Input$BookingReservationInput<TRes> {
  factory CopyWith$Input$BookingReservationInput(
    Input$BookingReservationInput instance,
    TRes Function(Input$BookingReservationInput) then,
  ) = _CopyWithImpl$Input$BookingReservationInput;

  factory CopyWith$Input$BookingReservationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingReservationInput;

  TRes call({
    String? branchId,
    String? serviceId,
    int? date,
    int? time,
  });
}

class _CopyWithImpl$Input$BookingReservationInput<TRes>
    implements CopyWith$Input$BookingReservationInput<TRes> {
  _CopyWithImpl$Input$BookingReservationInput(
    this._instance,
    this._then,
  );

  final Input$BookingReservationInput _instance;

  final TRes Function(Input$BookingReservationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? branchId = _undefined,
    Object? serviceId = _undefined,
    Object? date = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input$BookingReservationInput._({
        ..._instance._$data,
        if (branchId != _undefined && branchId != null)
          'branchId': (branchId as String),
        if (serviceId != _undefined && serviceId != null)
          'serviceId': (serviceId as String),
        if (date != _undefined && date != null) 'date': (date as int),
        if (time != _undefined && time != null) 'time': (time as int),
      }));
}

class _CopyWithStubImpl$Input$BookingReservationInput<TRes>
    implements CopyWith$Input$BookingReservationInput<TRes> {
  _CopyWithStubImpl$Input$BookingReservationInput(this._res);

  final TRes _res;

  @override
  call({
    String? branchId,
    String? serviceId,
    int? date,
    int? time,
  }) =>
      _res;
}

class Input$BookingReservationModifiableInput {
  factory Input$BookingReservationModifiableInput({
    String? branchId,
    int? date,
    int? time,
  }) =>
      Input$BookingReservationModifiableInput._({
        if (branchId != null) r'branchId': branchId,
        if (date != null) r'date': date,
        if (time != null) r'time': time,
      });

  Input$BookingReservationModifiableInput._(this._$data);

  factory Input$BookingReservationModifiableInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('branchId')) {
      final l$branchId = data['branchId'];
      result$data['branchId'] = (l$branchId as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as int?);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = (l$time as int?);
    }
    return Input$BookingReservationModifiableInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get branchId => (_$data['branchId'] as String?);
  int? get date => (_$data['date'] as int?);
  int? get time => (_$data['time'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('branchId')) {
      final l$branchId = branchId;
      result$data['branchId'] = l$branchId;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time;
    }
    return result$data;
  }

  CopyWith$Input$BookingReservationModifiableInput<
          Input$BookingReservationModifiableInput>
      get copyWith => CopyWith$Input$BookingReservationModifiableInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingReservationModifiableInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (_$data.containsKey('branchId') !=
        other._$data.containsKey('branchId')) {
      return false;
    }
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$branchId = branchId;
    final l$date = date;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('branchId') ? l$branchId : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith$Input$BookingReservationModifiableInput<TRes> {
  factory CopyWith$Input$BookingReservationModifiableInput(
    Input$BookingReservationModifiableInput instance,
    TRes Function(Input$BookingReservationModifiableInput) then,
  ) = _CopyWithImpl$Input$BookingReservationModifiableInput;

  factory CopyWith$Input$BookingReservationModifiableInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingReservationModifiableInput;

  TRes call({
    String? branchId,
    int? date,
    int? time,
  });
}

class _CopyWithImpl$Input$BookingReservationModifiableInput<TRes>
    implements CopyWith$Input$BookingReservationModifiableInput<TRes> {
  _CopyWithImpl$Input$BookingReservationModifiableInput(
    this._instance,
    this._then,
  );

  final Input$BookingReservationModifiableInput _instance;

  final TRes Function(Input$BookingReservationModifiableInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? branchId = _undefined,
    Object? date = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input$BookingReservationModifiableInput._({
        ..._instance._$data,
        if (branchId != _undefined) 'branchId': (branchId as String?),
        if (date != _undefined) 'date': (date as int?),
        if (time != _undefined) 'time': (time as int?),
      }));
}

class _CopyWithStubImpl$Input$BookingReservationModifiableInput<TRes>
    implements CopyWith$Input$BookingReservationModifiableInput<TRes> {
  _CopyWithStubImpl$Input$BookingReservationModifiableInput(this._res);

  final TRes _res;

  @override
  call({
    String? branchId,
    int? date,
    int? time,
  }) =>
      _res;
}

class Input$BookingServiceInput {
  factory Input$BookingServiceInput({
    required String branchId,
    required String name,
    required int duration,
  }) =>
      Input$BookingServiceInput._({
        r'branchId': branchId,
        r'name': name,
        r'duration': duration,
      });

  Input$BookingServiceInput._(this._$data);

  factory Input$BookingServiceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$branchId = data['branchId'];
    result$data['branchId'] = (l$branchId as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as int);
    return Input$BookingServiceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get branchId => (_$data['branchId'] as String);
  String get name => (_$data['name'] as String);
  int get duration => (_$data['duration'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$branchId = branchId;
    result$data['branchId'] = l$branchId;
    final l$name = name;
    result$data['name'] = l$name;
    final l$duration = duration;
    result$data['duration'] = l$duration;
    return result$data;
  }

  CopyWith$Input$BookingServiceInput<Input$BookingServiceInput> get copyWith =>
      CopyWith$Input$BookingServiceInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingServiceInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$branchId = branchId;
    final l$name = name;
    final l$duration = duration;
    return Object.hashAll([
      l$branchId,
      l$name,
      l$duration,
    ]);
  }
}

abstract class CopyWith$Input$BookingServiceInput<TRes> {
  factory CopyWith$Input$BookingServiceInput(
    Input$BookingServiceInput instance,
    TRes Function(Input$BookingServiceInput) then,
  ) = _CopyWithImpl$Input$BookingServiceInput;

  factory CopyWith$Input$BookingServiceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingServiceInput;

  TRes call({
    String? branchId,
    String? name,
    int? duration,
  });
}

class _CopyWithImpl$Input$BookingServiceInput<TRes>
    implements CopyWith$Input$BookingServiceInput<TRes> {
  _CopyWithImpl$Input$BookingServiceInput(
    this._instance,
    this._then,
  );

  final Input$BookingServiceInput _instance;

  final TRes Function(Input$BookingServiceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? branchId = _undefined,
    Object? name = _undefined,
    Object? duration = _undefined,
  }) =>
      _then(Input$BookingServiceInput._({
        ..._instance._$data,
        if (branchId != _undefined && branchId != null)
          'branchId': (branchId as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (duration != _undefined && duration != null)
          'duration': (duration as int),
      }));
}

class _CopyWithStubImpl$Input$BookingServiceInput<TRes>
    implements CopyWith$Input$BookingServiceInput<TRes> {
  _CopyWithStubImpl$Input$BookingServiceInput(this._res);

  final TRes _res;

  @override
  call({
    String? branchId,
    String? name,
    int? duration,
  }) =>
      _res;
}

class Input$BookingServiceModifiableInput {
  factory Input$BookingServiceModifiableInput({
    String? name,
    int? duration,
    bool? isActive,
  }) =>
      Input$BookingServiceModifiableInput._({
        if (name != null) r'name': name,
        if (duration != null) r'duration': duration,
        if (isActive != null) r'isActive': isActive,
      });

  Input$BookingServiceModifiableInput._(this._$data);

  factory Input$BookingServiceModifiableInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('duration')) {
      final l$duration = data['duration'];
      result$data['duration'] = (l$duration as int?);
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    return Input$BookingServiceModifiableInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  int? get duration => (_$data['duration'] as int?);
  bool? get isActive => (_$data['isActive'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('duration')) {
      final l$duration = duration;
      result$data['duration'] = l$duration;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    return result$data;
  }

  CopyWith$Input$BookingServiceModifiableInput<
          Input$BookingServiceModifiableInput>
      get copyWith => CopyWith$Input$BookingServiceModifiableInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BookingServiceModifiableInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (_$data.containsKey('duration') !=
        other._$data.containsKey('duration')) {
      return false;
    }
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (_$data.containsKey('isActive') !=
        other._$data.containsKey('isActive')) {
      return false;
    }
    if (l$isActive != lOther$isActive) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$duration = duration;
    final l$isActive = isActive;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('duration') ? l$duration : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
    ]);
  }
}

abstract class CopyWith$Input$BookingServiceModifiableInput<TRes> {
  factory CopyWith$Input$BookingServiceModifiableInput(
    Input$BookingServiceModifiableInput instance,
    TRes Function(Input$BookingServiceModifiableInput) then,
  ) = _CopyWithImpl$Input$BookingServiceModifiableInput;

  factory CopyWith$Input$BookingServiceModifiableInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookingServiceModifiableInput;

  TRes call({
    String? name,
    int? duration,
    bool? isActive,
  });
}

class _CopyWithImpl$Input$BookingServiceModifiableInput<TRes>
    implements CopyWith$Input$BookingServiceModifiableInput<TRes> {
  _CopyWithImpl$Input$BookingServiceModifiableInput(
    this._instance,
    this._then,
  );

  final Input$BookingServiceModifiableInput _instance;

  final TRes Function(Input$BookingServiceModifiableInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? duration = _undefined,
    Object? isActive = _undefined,
  }) =>
      _then(Input$BookingServiceModifiableInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (duration != _undefined) 'duration': (duration as int?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
      }));
}

class _CopyWithStubImpl$Input$BookingServiceModifiableInput<TRes>
    implements CopyWith$Input$BookingServiceModifiableInput<TRes> {
  _CopyWithStubImpl$Input$BookingServiceModifiableInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    int? duration,
    bool? isActive,
  }) =>
      _res;
}

class Input$DateRangeInput {
  factory Input$DateRangeInput({
    required int startDate,
    required int endDate,
  }) =>
      Input$DateRangeInput._({
        r'startDate': startDate,
        r'endDate': endDate,
      });

  Input$DateRangeInput._(this._$data);

  factory Input$DateRangeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$startDate = data['startDate'];
    result$data['startDate'] = (l$startDate as int);
    final l$endDate = data['endDate'];
    result$data['endDate'] = (l$endDate as int);
    return Input$DateRangeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get startDate => (_$data['startDate'] as int);
  int get endDate => (_$data['endDate'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$startDate = startDate;
    result$data['startDate'] = l$startDate;
    final l$endDate = endDate;
    result$data['endDate'] = l$endDate;
    return result$data;
  }

  CopyWith$Input$DateRangeInput<Input$DateRangeInput> get copyWith =>
      CopyWith$Input$DateRangeInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateRangeInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      l$startDate,
      l$endDate,
    ]);
  }
}

abstract class CopyWith$Input$DateRangeInput<TRes> {
  factory CopyWith$Input$DateRangeInput(
    Input$DateRangeInput instance,
    TRes Function(Input$DateRangeInput) then,
  ) = _CopyWithImpl$Input$DateRangeInput;

  factory CopyWith$Input$DateRangeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DateRangeInput;

  TRes call({
    int? startDate,
    int? endDate,
  });
}

class _CopyWithImpl$Input$DateRangeInput<TRes>
    implements CopyWith$Input$DateRangeInput<TRes> {
  _CopyWithImpl$Input$DateRangeInput(
    this._instance,
    this._then,
  );

  final Input$DateRangeInput _instance;

  final TRes Function(Input$DateRangeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Input$DateRangeInput._({
        ..._instance._$data,
        if (startDate != _undefined && startDate != null)
          'startDate': (startDate as int),
        if (endDate != _undefined && endDate != null)
          'endDate': (endDate as int),
      }));
}

class _CopyWithStubImpl$Input$DateRangeInput<TRes>
    implements CopyWith$Input$DateRangeInput<TRes> {
  _CopyWithStubImpl$Input$DateRangeInput(this._res);

  final TRes _res;

  @override
  call({
    int? startDate,
    int? endDate,
  }) =>
      _res;
}

class Input$ModifiableRegularUserInput {
  factory Input$ModifiableRegularUserInput({
    String? firstName,
    String? lastName,
    String? email,
    int? birthDate,
    String? gender,
    String? photo,
    String? phone,
  }) =>
      Input$ModifiableRegularUserInput._({
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (email != null) r'email': email,
        if (birthDate != null) r'birthDate': birthDate,
        if (gender != null) r'gender': gender,
        if (photo != null) r'photo': photo,
        if (phone != null) r'phone': phone,
      });

  Input$ModifiableRegularUserInput._(this._$data);

  factory Input$ModifiableRegularUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('birthDate')) {
      final l$birthDate = data['birthDate'];
      result$data['birthDate'] = (l$birthDate as int?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('photo')) {
      final l$photo = data['photo'];
      result$data['photo'] = (l$photo as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$ModifiableRegularUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get email => (_$data['email'] as String?);
  int? get birthDate => (_$data['birthDate'] as int?);
  String? get gender => (_$data['gender'] as String?);
  String? get photo => (_$data['photo'] as String?);
  String? get phone => (_$data['phone'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('birthDate')) {
      final l$birthDate = birthDate;
      result$data['birthDate'] = l$birthDate;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('photo')) {
      final l$photo = photo;
      result$data['photo'] = l$photo;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$ModifiableRegularUserInput<Input$ModifiableRegularUserInput>
      get copyWith => CopyWith$Input$ModifiableRegularUserInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModifiableRegularUserInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (_$data.containsKey('birthDate') !=
        other._$data.containsKey('birthDate')) {
      return false;
    }
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$photo = photo;
    final lOther$photo = other.photo;
    if (_$data.containsKey('photo') != other._$data.containsKey('photo')) {
      return false;
    }
    if (l$photo != lOther$photo) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$birthDate = birthDate;
    final l$gender = gender;
    final l$photo = photo;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('birthDate') ? l$birthDate : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('photo') ? l$photo : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModifiableRegularUserInput<TRes> {
  factory CopyWith$Input$ModifiableRegularUserInput(
    Input$ModifiableRegularUserInput instance,
    TRes Function(Input$ModifiableRegularUserInput) then,
  ) = _CopyWithImpl$Input$ModifiableRegularUserInput;

  factory CopyWith$Input$ModifiableRegularUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModifiableRegularUserInput;

  TRes call({
    String? firstName,
    String? lastName,
    String? email,
    int? birthDate,
    String? gender,
    String? photo,
    String? phone,
  });
}

class _CopyWithImpl$Input$ModifiableRegularUserInput<TRes>
    implements CopyWith$Input$ModifiableRegularUserInput<TRes> {
  _CopyWithImpl$Input$ModifiableRegularUserInput(
    this._instance,
    this._then,
  );

  final Input$ModifiableRegularUserInput _instance;

  final TRes Function(Input$ModifiableRegularUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? birthDate = _undefined,
    Object? gender = _undefined,
    Object? photo = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$ModifiableRegularUserInput._({
        ..._instance._$data,
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (email != _undefined) 'email': (email as String?),
        if (birthDate != _undefined) 'birthDate': (birthDate as int?),
        if (gender != _undefined) 'gender': (gender as String?),
        if (photo != _undefined) 'photo': (photo as String?),
        if (phone != _undefined) 'phone': (phone as String?),
      }));
}

class _CopyWithStubImpl$Input$ModifiableRegularUserInput<TRes>
    implements CopyWith$Input$ModifiableRegularUserInput<TRes> {
  _CopyWithStubImpl$Input$ModifiableRegularUserInput(this._res);

  final TRes _res;

  @override
  call({
    String? firstName,
    String? lastName,
    String? email,
    int? birthDate,
    String? gender,
    String? photo,
    String? phone,
  }) =>
      _res;
}

class Input$RegularPasswordUserInput {
  factory Input$RegularPasswordUserInput({
    required String firstName,
    required String lastName,
    required String password,
    String? email,
    String? photo,
    int? birthDate,
    String? gender,
    String? phone,
  }) =>
      Input$RegularPasswordUserInput._({
        r'firstName': firstName,
        r'lastName': lastName,
        r'password': password,
        if (email != null) r'email': email,
        if (photo != null) r'photo': photo,
        if (birthDate != null) r'birthDate': birthDate,
        if (gender != null) r'gender': gender,
        if (phone != null) r'phone': phone,
      });

  Input$RegularPasswordUserInput._(this._$data);

  factory Input$RegularPasswordUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('photo')) {
      final l$photo = data['photo'];
      result$data['photo'] = (l$photo as String?);
    }
    if (data.containsKey('birthDate')) {
      final l$birthDate = data['birthDate'];
      result$data['birthDate'] = (l$birthDate as int?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$RegularPasswordUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);
  String get lastName => (_$data['lastName'] as String);
  String get password => (_$data['password'] as String);
  String? get email => (_$data['email'] as String?);
  String? get photo => (_$data['photo'] as String?);
  int? get birthDate => (_$data['birthDate'] as int?);
  String? get gender => (_$data['gender'] as String?);
  String? get phone => (_$data['phone'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('photo')) {
      final l$photo = photo;
      result$data['photo'] = l$photo;
    }
    if (_$data.containsKey('birthDate')) {
      final l$birthDate = birthDate;
      result$data['birthDate'] = l$birthDate;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$RegularPasswordUserInput<Input$RegularPasswordUserInput>
      get copyWith => CopyWith$Input$RegularPasswordUserInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RegularPasswordUserInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$photo = photo;
    final lOther$photo = other.photo;
    if (_$data.containsKey('photo') != other._$data.containsKey('photo')) {
      return false;
    }
    if (l$photo != lOther$photo) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (_$data.containsKey('birthDate') !=
        other._$data.containsKey('birthDate')) {
      return false;
    }
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$password = password;
    final l$email = email;
    final l$photo = photo;
    final l$birthDate = birthDate;
    final l$gender = gender;
    final l$phone = phone;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$password,
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('photo') ? l$photo : const {},
      _$data.containsKey('birthDate') ? l$birthDate : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$RegularPasswordUserInput<TRes> {
  factory CopyWith$Input$RegularPasswordUserInput(
    Input$RegularPasswordUserInput instance,
    TRes Function(Input$RegularPasswordUserInput) then,
  ) = _CopyWithImpl$Input$RegularPasswordUserInput;

  factory CopyWith$Input$RegularPasswordUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegularPasswordUserInput;

  TRes call({
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    String? photo,
    int? birthDate,
    String? gender,
    String? phone,
  });
}

class _CopyWithImpl$Input$RegularPasswordUserInput<TRes>
    implements CopyWith$Input$RegularPasswordUserInput<TRes> {
  _CopyWithImpl$Input$RegularPasswordUserInput(
    this._instance,
    this._then,
  );

  final Input$RegularPasswordUserInput _instance;

  final TRes Function(Input$RegularPasswordUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? password = _undefined,
    Object? email = _undefined,
    Object? photo = _undefined,
    Object? birthDate = _undefined,
    Object? gender = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$RegularPasswordUserInput._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (email != _undefined) 'email': (email as String?),
        if (photo != _undefined) 'photo': (photo as String?),
        if (birthDate != _undefined) 'birthDate': (birthDate as int?),
        if (gender != _undefined) 'gender': (gender as String?),
        if (phone != _undefined) 'phone': (phone as String?),
      }));
}

class _CopyWithStubImpl$Input$RegularPasswordUserInput<TRes>
    implements CopyWith$Input$RegularPasswordUserInput<TRes> {
  _CopyWithStubImpl$Input$RegularPasswordUserInput(this._res);

  final TRes _res;

  @override
  call({
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    String? photo,
    int? birthDate,
    String? gender,
    String? phone,
  }) =>
      _res;
}

class Input$RegularUserInput {
  factory Input$RegularUserInput({
    required String firstName,
    required String lastName,
    String? email,
    String? phone,
    int? birthDate,
    String? gender,
    String? photo,
    int? level,
  }) =>
      Input$RegularUserInput._({
        r'firstName': firstName,
        r'lastName': lastName,
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
        if (birthDate != null) r'birthDate': birthDate,
        if (gender != null) r'gender': gender,
        if (photo != null) r'photo': photo,
        if (level != null) r'level': level,
      });

  Input$RegularUserInput._(this._$data);

  factory Input$RegularUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('birthDate')) {
      final l$birthDate = data['birthDate'];
      result$data['birthDate'] = (l$birthDate as int?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('photo')) {
      final l$photo = data['photo'];
      result$data['photo'] = (l$photo as String?);
    }
    if (data.containsKey('level')) {
      final l$level = data['level'];
      result$data['level'] = (l$level as int?);
    }
    return Input$RegularUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);
  String get lastName => (_$data['lastName'] as String);
  String? get email => (_$data['email'] as String?);
  String? get phone => (_$data['phone'] as String?);
  int? get birthDate => (_$data['birthDate'] as int?);
  String? get gender => (_$data['gender'] as String?);
  String? get photo => (_$data['photo'] as String?);
  int? get level => (_$data['level'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('birthDate')) {
      final l$birthDate = birthDate;
      result$data['birthDate'] = l$birthDate;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('photo')) {
      final l$photo = photo;
      result$data['photo'] = l$photo;
    }
    if (_$data.containsKey('level')) {
      final l$level = level;
      result$data['level'] = l$level;
    }
    return result$data;
  }

  CopyWith$Input$RegularUserInput<Input$RegularUserInput> get copyWith =>
      CopyWith$Input$RegularUserInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RegularUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (_$data.containsKey('birthDate') !=
        other._$data.containsKey('birthDate')) {
      return false;
    }
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$photo = photo;
    final lOther$photo = other.photo;
    if (_$data.containsKey('photo') != other._$data.containsKey('photo')) {
      return false;
    }
    if (l$photo != lOther$photo) {
      return false;
    }
    final l$level = level;
    final lOther$level = other.level;
    if (_$data.containsKey('level') != other._$data.containsKey('level')) {
      return false;
    }
    if (l$level != lOther$level) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$phone = phone;
    final l$birthDate = birthDate;
    final l$gender = gender;
    final l$photo = photo;
    final l$level = level;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('birthDate') ? l$birthDate : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('photo') ? l$photo : const {},
      _$data.containsKey('level') ? l$level : const {},
    ]);
  }
}

abstract class CopyWith$Input$RegularUserInput<TRes> {
  factory CopyWith$Input$RegularUserInput(
    Input$RegularUserInput instance,
    TRes Function(Input$RegularUserInput) then,
  ) = _CopyWithImpl$Input$RegularUserInput;

  factory CopyWith$Input$RegularUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegularUserInput;

  TRes call({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    int? birthDate,
    String? gender,
    String? photo,
    int? level,
  });
}

class _CopyWithImpl$Input$RegularUserInput<TRes>
    implements CopyWith$Input$RegularUserInput<TRes> {
  _CopyWithImpl$Input$RegularUserInput(
    this._instance,
    this._then,
  );

  final Input$RegularUserInput _instance;

  final TRes Function(Input$RegularUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? birthDate = _undefined,
    Object? gender = _undefined,
    Object? photo = _undefined,
    Object? level = _undefined,
  }) =>
      _then(Input$RegularUserInput._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (birthDate != _undefined) 'birthDate': (birthDate as int?),
        if (gender != _undefined) 'gender': (gender as String?),
        if (photo != _undefined) 'photo': (photo as String?),
        if (level != _undefined) 'level': (level as int?),
      }));
}

class _CopyWithStubImpl$Input$RegularUserInput<TRes>
    implements CopyWith$Input$RegularUserInput<TRes> {
  _CopyWithStubImpl$Input$RegularUserInput(this._res);

  final TRes _res;

  @override
  call({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    int? birthDate,
    String? gender,
    String? photo,
    int? level,
  }) =>
      _res;
}

class Input$UserCredentialsInput {
  factory Input$UserCredentialsInput({
    required String identifier,
    required String password,
  }) =>
      Input$UserCredentialsInput._({
        r'identifier': identifier,
        r'password': password,
      });

  Input$UserCredentialsInput._(this._$data);

  factory Input$UserCredentialsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$identifier = data['identifier'];
    result$data['identifier'] = (l$identifier as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$UserCredentialsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get identifier => (_$data['identifier'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$identifier = identifier;
    result$data['identifier'] = l$identifier;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$UserCredentialsInput<Input$UserCredentialsInput>
      get copyWith => CopyWith$Input$UserCredentialsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserCredentialsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$identifier = identifier;
    final lOther$identifier = other.identifier;
    if (l$identifier != lOther$identifier) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$identifier = identifier;
    final l$password = password;
    return Object.hashAll([
      l$identifier,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$UserCredentialsInput<TRes> {
  factory CopyWith$Input$UserCredentialsInput(
    Input$UserCredentialsInput instance,
    TRes Function(Input$UserCredentialsInput) then,
  ) = _CopyWithImpl$Input$UserCredentialsInput;

  factory CopyWith$Input$UserCredentialsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserCredentialsInput;

  TRes call({
    String? identifier,
    String? password,
  });
}

class _CopyWithImpl$Input$UserCredentialsInput<TRes>
    implements CopyWith$Input$UserCredentialsInput<TRes> {
  _CopyWithImpl$Input$UserCredentialsInput(
    this._instance,
    this._then,
  );

  final Input$UserCredentialsInput _instance;

  final TRes Function(Input$UserCredentialsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? identifier = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$UserCredentialsInput._({
        ..._instance._$data,
        if (identifier != _undefined && identifier != null)
          'identifier': (identifier as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$UserCredentialsInput<TRes>
    implements CopyWith$Input$UserCredentialsInput<TRes> {
  _CopyWithStubImpl$Input$UserCredentialsInput(this._res);

  final TRes _res;

  @override
  call({
    String? identifier,
    String? password,
  }) =>
      _res;
}

class Input$UserIdentifierInput {
  factory Input$UserIdentifierInput({
    String? email,
    String? phone,
  }) =>
      Input$UserIdentifierInput._({
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
      });

  Input$UserIdentifierInput._(this._$data);

  factory Input$UserIdentifierInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$UserIdentifierInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);
  String? get phone => (_$data['phone'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$UserIdentifierInput<Input$UserIdentifierInput> get copyWith =>
      CopyWith$Input$UserIdentifierInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserIdentifierInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserIdentifierInput<TRes> {
  factory CopyWith$Input$UserIdentifierInput(
    Input$UserIdentifierInput instance,
    TRes Function(Input$UserIdentifierInput) then,
  ) = _CopyWithImpl$Input$UserIdentifierInput;

  factory CopyWith$Input$UserIdentifierInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserIdentifierInput;

  TRes call({
    String? email,
    String? phone,
  });
}

class _CopyWithImpl$Input$UserIdentifierInput<TRes>
    implements CopyWith$Input$UserIdentifierInput<TRes> {
  _CopyWithImpl$Input$UserIdentifierInput(
    this._instance,
    this._then,
  );

  final Input$UserIdentifierInput _instance;

  final TRes Function(Input$UserIdentifierInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? email = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$UserIdentifierInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
      }));
}

class _CopyWithStubImpl$Input$UserIdentifierInput<TRes>
    implements CopyWith$Input$UserIdentifierInput<TRes> {
  _CopyWithStubImpl$Input$UserIdentifierInput(this._res);

  final TRes _res;

  @override
  call({
    String? email,
    String? phone,
  }) =>
      _res;
}

class Input$UserResetPasswordInput {
  factory Input$UserResetPasswordInput({
    required String token,
    required String password,
  }) =>
      Input$UserResetPasswordInput._({
        r'token': token,
        r'password': password,
      });

  Input$UserResetPasswordInput._(this._$data);

  factory Input$UserResetPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$UserResetPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$UserResetPasswordInput<Input$UserResetPasswordInput>
      get copyWith => CopyWith$Input$UserResetPasswordInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserResetPasswordInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$password = password;
    return Object.hashAll([
      l$token,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$UserResetPasswordInput<TRes> {
  factory CopyWith$Input$UserResetPasswordInput(
    Input$UserResetPasswordInput instance,
    TRes Function(Input$UserResetPasswordInput) then,
  ) = _CopyWithImpl$Input$UserResetPasswordInput;

  factory CopyWith$Input$UserResetPasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserResetPasswordInput;

  TRes call({
    String? token,
    String? password,
  });
}

class _CopyWithImpl$Input$UserResetPasswordInput<TRes>
    implements CopyWith$Input$UserResetPasswordInput<TRes> {
  _CopyWithImpl$Input$UserResetPasswordInput(
    this._instance,
    this._then,
  );

  final Input$UserResetPasswordInput _instance;

  final TRes Function(Input$UserResetPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? token = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$UserResetPasswordInput._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$UserResetPasswordInput<TRes>
    implements CopyWith$Input$UserResetPasswordInput<TRes> {
  _CopyWithStubImpl$Input$UserResetPasswordInput(this._res);

  final TRes _res;

  @override
  call({
    String? token,
    String? password,
  }) =>
      _res;
}

enum Enum$BookingReservationStatus {
  PENDING,
  CONFIRMED,
  CANCELLED,
  ENDED,
  $unknown
}

String toJson$Enum$BookingReservationStatus(Enum$BookingReservationStatus e) {
  switch (e) {
    case Enum$BookingReservationStatus.PENDING:
      return r'PENDING';
    case Enum$BookingReservationStatus.CONFIRMED:
      return r'CONFIRMED';
    case Enum$BookingReservationStatus.CANCELLED:
      return r'CANCELLED';
    case Enum$BookingReservationStatus.ENDED:
      return r'ENDED';
    case Enum$BookingReservationStatus.$unknown:
      return r'$unknown';
  }
}

Enum$BookingReservationStatus fromJson$Enum$BookingReservationStatus(
    String value) {
  switch (value) {
    case r'PENDING':
      return Enum$BookingReservationStatus.PENDING;
    case r'CONFIRMED':
      return Enum$BookingReservationStatus.CONFIRMED;
    case r'CANCELLED':
      return Enum$BookingReservationStatus.CANCELLED;
    case r'ENDED':
      return Enum$BookingReservationStatus.ENDED;
    default:
      return Enum$BookingReservationStatus.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};

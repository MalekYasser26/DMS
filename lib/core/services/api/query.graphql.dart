import 'package:gql/ast.dart';

class Query$currentUser {
  Query$currentUser({
    this.currentUser,
    this.$__typename = 'Query',
  });

  factory Query$currentUser.fromJson(Map<String, dynamic> json) {
    final l$currentUser = json['currentUser'];
    final l$$__typename = json['__typename'];
    return Query$currentUser(
      currentUser: l$currentUser == null
          ? null
          : Query$currentUser$currentUser.fromJson(
              (l$currentUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$currentUser$currentUser? currentUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentUser = currentUser;
    _resultData['currentUser'] = l$currentUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentUser = currentUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$currentUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentUser = currentUser;
    final lOther$currentUser = other.currentUser;
    if (l$currentUser != lOther$currentUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$currentUser on Query$currentUser {
  CopyWith$Query$currentUser<Query$currentUser> get copyWith =>
      CopyWith$Query$currentUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$currentUser<TRes> {
  factory CopyWith$Query$currentUser(
    Query$currentUser instance,
    TRes Function(Query$currentUser) then,
  ) = _CopyWithImpl$Query$currentUser;

  factory CopyWith$Query$currentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$currentUser;

  TRes call({
    Query$currentUser$currentUser? currentUser,
    String? $__typename,
  });
  CopyWith$Query$currentUser$currentUser<TRes> get currentUser;
}

class _CopyWithImpl$Query$currentUser<TRes>
    implements CopyWith$Query$currentUser<TRes> {
  _CopyWithImpl$Query$currentUser(
    this._instance,
    this._then,
  );

  final Query$currentUser _instance;

  final TRes Function(Query$currentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$currentUser(
        currentUser: currentUser == _undefined
            ? _instance.currentUser
            : (currentUser as Query$currentUser$currentUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$currentUser$currentUser<TRes> get currentUser {
    final local$currentUser = _instance.currentUser;
    return local$currentUser == null
        ? CopyWith$Query$currentUser$currentUser.stub(_then(_instance))
        : CopyWith$Query$currentUser$currentUser(
            local$currentUser, (e) => call(currentUser: e));
  }
}

class _CopyWithStubImpl$Query$currentUser<TRes>
    implements CopyWith$Query$currentUser<TRes> {
  _CopyWithStubImpl$Query$currentUser(this._res);

  TRes _res;

  call({
    Query$currentUser$currentUser? currentUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$currentUser$currentUser<TRes> get currentUser =>
      CopyWith$Query$currentUser$currentUser.stub(_res);
}

const documentNodeQuerycurrentUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'currentUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'currentUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'roles'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'permissions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'password'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visitCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'level'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'photo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$currentUser$currentUser {
  Query$currentUser$currentUser({
    required this.id,
    required this.roles,
    required this.permissions,
    required this.firstName,
    required this.lastName,
    this.email,
    this.phone,
    this.password,
    this.visitCount,
    this.level,
    this.birthDate,
    this.gender,
    this.photo,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'User',
  });

  factory Query$currentUser$currentUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$roles = json['roles'];
    final l$permissions = json['permissions'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$password = json['password'];
    final l$visitCount = json['visitCount'];
    final l$level = json['level'];
    final l$birthDate = json['birthDate'];
    final l$gender = json['gender'];
    final l$photo = json['photo'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$currentUser$currentUser(
      id: (l$id as String),
      roles: (l$roles as List<dynamic>)
          .map((e) => Query$currentUser$currentUser$roles.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Query$currentUser$currentUser$permissions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      email: (l$email as String?),
      phone: (l$phone as String?),
      password: (l$password as String?),
      visitCount: (l$visitCount as int?),
      level: (l$level as int?),
      birthDate: (l$birthDate as int?),
      gender: (l$gender as String?),
      photo: (l$photo as String?),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$currentUser$currentUser$roles> roles;

  final List<Query$currentUser$currentUser$permissions> permissions;

  final String firstName;

  final String lastName;

  final String? email;

  final String? phone;

  final String? password;

  final int? visitCount;

  final int? level;

  final int? birthDate;

  final String? gender;

  final String? photo;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$roles = roles;
    _resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$password = password;
    _resultData['password'] = l$password;
    final l$visitCount = visitCount;
    _resultData['visitCount'] = l$visitCount;
    final l$level = level;
    _resultData['level'] = l$level;
    final l$birthDate = birthDate;
    _resultData['birthDate'] = l$birthDate;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$photo = photo;
    _resultData['photo'] = l$photo;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$roles = roles;
    final l$permissions = permissions;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$phone = phone;
    final l$password = password;
    final l$visitCount = visitCount;
    final l$level = level;
    final l$birthDate = birthDate;
    final l$gender = gender;
    final l$photo = photo;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$roles.map((v) => v)),
      Object.hashAll(l$permissions.map((v) => v)),
      l$firstName,
      l$lastName,
      l$email,
      l$phone,
      l$password,
      l$visitCount,
      l$level,
      l$birthDate,
      l$gender,
      l$photo,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$currentUser$currentUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles.length != lOther$roles.length) {
      return false;
    }
    for (int i = 0; i < l$roles.length; i++) {
      final l$roles$entry = l$roles[i];
      final lOther$roles$entry = lOther$roles[i];
      if (l$roles$entry != lOther$roles$entry) {
        return false;
      }
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
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
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$visitCount = visitCount;
    final lOther$visitCount = other.visitCount;
    if (l$visitCount != lOther$visitCount) {
      return false;
    }
    final l$level = level;
    final lOther$level = other.level;
    if (l$level != lOther$level) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$photo = photo;
    final lOther$photo = other.photo;
    if (l$photo != lOther$photo) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$currentUser$currentUser
    on Query$currentUser$currentUser {
  CopyWith$Query$currentUser$currentUser<Query$currentUser$currentUser>
      get copyWith => CopyWith$Query$currentUser$currentUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$currentUser$currentUser<TRes> {
  factory CopyWith$Query$currentUser$currentUser(
    Query$currentUser$currentUser instance,
    TRes Function(Query$currentUser$currentUser) then,
  ) = _CopyWithImpl$Query$currentUser$currentUser;

  factory CopyWith$Query$currentUser$currentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$currentUser$currentUser;

  TRes call({
    String? id,
    List<Query$currentUser$currentUser$roles>? roles,
    List<Query$currentUser$currentUser$permissions>? permissions,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? password,
    int? visitCount,
    int? level,
    int? birthDate,
    String? gender,
    String? photo,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  TRes roles(
      Iterable<Query$currentUser$currentUser$roles> Function(
              Iterable<
                  CopyWith$Query$currentUser$currentUser$roles<
                      Query$currentUser$currentUser$roles>>)
          _fn);
  TRes permissions(
      Iterable<Query$currentUser$currentUser$permissions> Function(
              Iterable<
                  CopyWith$Query$currentUser$currentUser$permissions<
                      Query$currentUser$currentUser$permissions>>)
          _fn);
}

class _CopyWithImpl$Query$currentUser$currentUser<TRes>
    implements CopyWith$Query$currentUser$currentUser<TRes> {
  _CopyWithImpl$Query$currentUser$currentUser(
    this._instance,
    this._then,
  );

  final Query$currentUser$currentUser _instance;

  final TRes Function(Query$currentUser$currentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? roles = _undefined,
    Object? permissions = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? password = _undefined,
    Object? visitCount = _undefined,
    Object? level = _undefined,
    Object? birthDate = _undefined,
    Object? gender = _undefined,
    Object? photo = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$currentUser$currentUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles as List<Query$currentUser$currentUser$roles>),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Query$currentUser$currentUser$permissions>),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        email: email == _undefined ? _instance.email : (email as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        password:
            password == _undefined ? _instance.password : (password as String?),
        visitCount: visitCount == _undefined
            ? _instance.visitCount
            : (visitCount as int?),
        level: level == _undefined ? _instance.level : (level as int?),
        birthDate:
            birthDate == _undefined ? _instance.birthDate : (birthDate as int?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        photo: photo == _undefined ? _instance.photo : (photo as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes roles(
          Iterable<Query$currentUser$currentUser$roles> Function(
                  Iterable<
                      CopyWith$Query$currentUser$currentUser$roles<
                          Query$currentUser$currentUser$roles>>)
              _fn) =>
      call(
          roles: _fn(_instance.roles
              .map((e) => CopyWith$Query$currentUser$currentUser$roles(
                    e,
                    (i) => i,
                  ))).toList());
  TRes permissions(
          Iterable<Query$currentUser$currentUser$permissions> Function(
                  Iterable<
                      CopyWith$Query$currentUser$currentUser$permissions<
                          Query$currentUser$currentUser$permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith$Query$currentUser$currentUser$permissions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$currentUser$currentUser<TRes>
    implements CopyWith$Query$currentUser$currentUser<TRes> {
  _CopyWithStubImpl$Query$currentUser$currentUser(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$currentUser$currentUser$roles>? roles,
    List<Query$currentUser$currentUser$permissions>? permissions,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? password,
    int? visitCount,
    int? level,
    int? birthDate,
    String? gender,
    String? photo,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  roles(_fn) => _res;
  permissions(_fn) => _res;
}

class Query$currentUser$currentUser$roles {
  Query$currentUser$currentUser$roles({
    this.id,
    this.name,
    this.$__typename = 'Role',
  });

  factory Query$currentUser$currentUser$roles.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$currentUser$currentUser$roles(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$currentUser$currentUser$roles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$currentUser$currentUser$roles
    on Query$currentUser$currentUser$roles {
  CopyWith$Query$currentUser$currentUser$roles<
          Query$currentUser$currentUser$roles>
      get copyWith => CopyWith$Query$currentUser$currentUser$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$currentUser$currentUser$roles<TRes> {
  factory CopyWith$Query$currentUser$currentUser$roles(
    Query$currentUser$currentUser$roles instance,
    TRes Function(Query$currentUser$currentUser$roles) then,
  ) = _CopyWithImpl$Query$currentUser$currentUser$roles;

  factory CopyWith$Query$currentUser$currentUser$roles.stub(TRes res) =
      _CopyWithStubImpl$Query$currentUser$currentUser$roles;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$currentUser$currentUser$roles<TRes>
    implements CopyWith$Query$currentUser$currentUser$roles<TRes> {
  _CopyWithImpl$Query$currentUser$currentUser$roles(
    this._instance,
    this._then,
  );

  final Query$currentUser$currentUser$roles _instance;

  final TRes Function(Query$currentUser$currentUser$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$currentUser$currentUser$roles(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$currentUser$currentUser$roles<TRes>
    implements CopyWith$Query$currentUser$currentUser$roles<TRes> {
  _CopyWithStubImpl$Query$currentUser$currentUser$roles(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$currentUser$currentUser$permissions {
  Query$currentUser$currentUser$permissions({
    this.id,
    this.name,
    this.$__typename = 'Permission',
  });

  factory Query$currentUser$currentUser$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$currentUser$currentUser$permissions(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$currentUser$currentUser$permissions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$currentUser$currentUser$permissions
    on Query$currentUser$currentUser$permissions {
  CopyWith$Query$currentUser$currentUser$permissions<
          Query$currentUser$currentUser$permissions>
      get copyWith => CopyWith$Query$currentUser$currentUser$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$currentUser$currentUser$permissions<TRes> {
  factory CopyWith$Query$currentUser$currentUser$permissions(
    Query$currentUser$currentUser$permissions instance,
    TRes Function(Query$currentUser$currentUser$permissions) then,
  ) = _CopyWithImpl$Query$currentUser$currentUser$permissions;

  factory CopyWith$Query$currentUser$currentUser$permissions.stub(TRes res) =
      _CopyWithStubImpl$Query$currentUser$currentUser$permissions;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$currentUser$currentUser$permissions<TRes>
    implements CopyWith$Query$currentUser$currentUser$permissions<TRes> {
  _CopyWithImpl$Query$currentUser$currentUser$permissions(
    this._instance,
    this._then,
  );

  final Query$currentUser$currentUser$permissions _instance;

  final TRes Function(Query$currentUser$currentUser$permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$currentUser$currentUser$permissions(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$currentUser$currentUser$permissions<TRes>
    implements CopyWith$Query$currentUser$currentUser$permissions<TRes> {
  _CopyWithStubImpl$Query$currentUser$currentUser$permissions(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

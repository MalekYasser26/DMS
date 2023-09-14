import 'package:gql/ast.dart';
import 'schema.graphql.dart';

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

class Query$bookingBranches {
  Query$bookingBranches({
    required this.bookingBranches,
    this.$__typename = 'Query',
  });

  factory Query$bookingBranches.fromJson(Map<String, dynamic> json) {
    final l$bookingBranches = json['bookingBranches'];
    final l$$__typename = json['__typename'];
    return Query$bookingBranches(
      bookingBranches: (l$bookingBranches as List<dynamic>)
          .map((e) => Query$bookingBranches$bookingBranches.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$bookingBranches$bookingBranches> bookingBranches;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingBranches = bookingBranches;
    _resultData['bookingBranches'] =
        l$bookingBranches.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingBranches = bookingBranches;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bookingBranches.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingBranches) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingBranches = bookingBranches;
    final lOther$bookingBranches = other.bookingBranches;
    if (l$bookingBranches.length != lOther$bookingBranches.length) {
      return false;
    }
    for (int i = 0; i < l$bookingBranches.length; i++) {
      final l$bookingBranches$entry = l$bookingBranches[i];
      final lOther$bookingBranches$entry = lOther$bookingBranches[i];
      if (l$bookingBranches$entry != lOther$bookingBranches$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingBranches on Query$bookingBranches {
  CopyWith$Query$bookingBranches<Query$bookingBranches> get copyWith =>
      CopyWith$Query$bookingBranches(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$bookingBranches<TRes> {
  factory CopyWith$Query$bookingBranches(
    Query$bookingBranches instance,
    TRes Function(Query$bookingBranches) then,
  ) = _CopyWithImpl$Query$bookingBranches;

  factory CopyWith$Query$bookingBranches.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingBranches;

  TRes call({
    List<Query$bookingBranches$bookingBranches>? bookingBranches,
    String? $__typename,
  });
  TRes bookingBranches(
      Iterable<Query$bookingBranches$bookingBranches> Function(
              Iterable<
                  CopyWith$Query$bookingBranches$bookingBranches<
                      Query$bookingBranches$bookingBranches>>)
          _fn);
}

class _CopyWithImpl$Query$bookingBranches<TRes>
    implements CopyWith$Query$bookingBranches<TRes> {
  _CopyWithImpl$Query$bookingBranches(
    this._instance,
    this._then,
  );

  final Query$bookingBranches _instance;

  final TRes Function(Query$bookingBranches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingBranches = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingBranches(
        bookingBranches: bookingBranches == _undefined ||
                bookingBranches == null
            ? _instance.bookingBranches
            : (bookingBranches as List<Query$bookingBranches$bookingBranches>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bookingBranches(
          Iterable<Query$bookingBranches$bookingBranches> Function(
                  Iterable<
                      CopyWith$Query$bookingBranches$bookingBranches<
                          Query$bookingBranches$bookingBranches>>)
              _fn) =>
      call(
          bookingBranches: _fn(_instance.bookingBranches
              .map((e) => CopyWith$Query$bookingBranches$bookingBranches(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$bookingBranches<TRes>
    implements CopyWith$Query$bookingBranches<TRes> {
  _CopyWithStubImpl$Query$bookingBranches(this._res);

  TRes _res;

  call({
    List<Query$bookingBranches$bookingBranches>? bookingBranches,
    String? $__typename,
  }) =>
      _res;
  bookingBranches(_fn) => _res;
}

const documentNodeQuerybookingBranches = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingBranches'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingBranches'),
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
            name: NameNode(value: 'address'),
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
            name: NameNode(value: 'mapURL'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'services'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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

class Query$bookingBranches$bookingBranches {
  Query$bookingBranches$bookingBranches({
    required this.id,
    required this.name,
    required this.address,
    this.phone,
    this.mapURL,
    this.isActive,
    this.services,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'BookingBranch',
  });

  factory Query$bookingBranches$bookingBranches.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$address = json['address'];
    final l$phone = json['phone'];
    final l$mapURL = json['mapURL'];
    final l$isActive = json['isActive'];
    final l$services = json['services'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$bookingBranches$bookingBranches(
      id: (l$id as String),
      name: (l$name as String),
      address: (l$address as String),
      phone: (l$phone as String?),
      mapURL: (l$mapURL as String?),
      isActive: (l$isActive as bool?),
      services: (l$services as List<dynamic>?)
          ?.map((e) => Query$bookingBranches$bookingBranches$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String address;

  final String? phone;

  final String? mapURL;

  final bool? isActive;

  final List<Query$bookingBranches$bookingBranches$services>? services;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$mapURL = mapURL;
    _resultData['mapURL'] = l$mapURL;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$services = services;
    _resultData['services'] = l$services?.map((e) => e.toJson()).toList();
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
    final l$name = name;
    final l$address = address;
    final l$phone = phone;
    final l$mapURL = mapURL;
    final l$isActive = isActive;
    final l$services = services;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$address,
      l$phone,
      l$mapURL,
      l$isActive,
      l$services == null ? null : Object.hashAll(l$services.map((v) => v)),
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
    if (!(other is Query$bookingBranches$bookingBranches) ||
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$mapURL = mapURL;
    final lOther$mapURL = other.mapURL;
    if (l$mapURL != lOther$mapURL) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services != null && lOther$services != null) {
      if (l$services.length != lOther$services.length) {
        return false;
      }
      for (int i = 0; i < l$services.length; i++) {
        final l$services$entry = l$services[i];
        final lOther$services$entry = lOther$services[i];
        if (l$services$entry != lOther$services$entry) {
          return false;
        }
      }
    } else if (l$services != lOther$services) {
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

extension UtilityExtension$Query$bookingBranches$bookingBranches
    on Query$bookingBranches$bookingBranches {
  CopyWith$Query$bookingBranches$bookingBranches<
          Query$bookingBranches$bookingBranches>
      get copyWith => CopyWith$Query$bookingBranches$bookingBranches(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingBranches$bookingBranches<TRes> {
  factory CopyWith$Query$bookingBranches$bookingBranches(
    Query$bookingBranches$bookingBranches instance,
    TRes Function(Query$bookingBranches$bookingBranches) then,
  ) = _CopyWithImpl$Query$bookingBranches$bookingBranches;

  factory CopyWith$Query$bookingBranches$bookingBranches.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingBranches$bookingBranches;

  TRes call({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
    List<Query$bookingBranches$bookingBranches$services>? services,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  TRes services(
      Iterable<Query$bookingBranches$bookingBranches$services>? Function(
              Iterable<
                  CopyWith$Query$bookingBranches$bookingBranches$services<
                      Query$bookingBranches$bookingBranches$services>>?)
          _fn);
}

class _CopyWithImpl$Query$bookingBranches$bookingBranches<TRes>
    implements CopyWith$Query$bookingBranches$bookingBranches<TRes> {
  _CopyWithImpl$Query$bookingBranches$bookingBranches(
    this._instance,
    this._then,
  );

  final Query$bookingBranches$bookingBranches _instance;

  final TRes Function(Query$bookingBranches$bookingBranches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? address = _undefined,
    Object? phone = _undefined,
    Object? mapURL = _undefined,
    Object? isActive = _undefined,
    Object? services = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingBranches$bookingBranches(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        mapURL: mapURL == _undefined ? _instance.mapURL : (mapURL as String?),
        isActive:
            isActive == _undefined ? _instance.isActive : (isActive as bool?),
        services: services == _undefined
            ? _instance.services
            : (services
                as List<Query$bookingBranches$bookingBranches$services>?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes services(
          Iterable<Query$bookingBranches$bookingBranches$services>? Function(
                  Iterable<
                      CopyWith$Query$bookingBranches$bookingBranches$services<
                          Query$bookingBranches$bookingBranches$services>>?)
              _fn) =>
      call(
          services: _fn(_instance.services?.map(
              (e) => CopyWith$Query$bookingBranches$bookingBranches$services(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$bookingBranches$bookingBranches<TRes>
    implements CopyWith$Query$bookingBranches$bookingBranches<TRes> {
  _CopyWithStubImpl$Query$bookingBranches$bookingBranches(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
    List<Query$bookingBranches$bookingBranches$services>? services,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  services(_fn) => _res;
}

class Query$bookingBranches$bookingBranches$services {
  Query$bookingBranches$bookingBranches$services({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Query$bookingBranches$bookingBranches$services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingBranches$bookingBranches$services(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingBranches$bookingBranches$services) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingBranches$bookingBranches$services
    on Query$bookingBranches$bookingBranches$services {
  CopyWith$Query$bookingBranches$bookingBranches$services<
          Query$bookingBranches$bookingBranches$services>
      get copyWith => CopyWith$Query$bookingBranches$bookingBranches$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingBranches$bookingBranches$services<TRes> {
  factory CopyWith$Query$bookingBranches$bookingBranches$services(
    Query$bookingBranches$bookingBranches$services instance,
    TRes Function(Query$bookingBranches$bookingBranches$services) then,
  ) = _CopyWithImpl$Query$bookingBranches$bookingBranches$services;

  factory CopyWith$Query$bookingBranches$bookingBranches$services.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingBranches$bookingBranches$services;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingBranches$bookingBranches$services<TRes>
    implements CopyWith$Query$bookingBranches$bookingBranches$services<TRes> {
  _CopyWithImpl$Query$bookingBranches$bookingBranches$services(
    this._instance,
    this._then,
  );

  final Query$bookingBranches$bookingBranches$services _instance;

  final TRes Function(Query$bookingBranches$bookingBranches$services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingBranches$bookingBranches$services(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingBranches$bookingBranches$services<TRes>
    implements CopyWith$Query$bookingBranches$bookingBranches$services<TRes> {
  _CopyWithStubImpl$Query$bookingBranches$bookingBranches$services(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$bookingCustomerNotes {
  factory Variables$Query$bookingCustomerNotes({required String customerId}) =>
      Variables$Query$bookingCustomerNotes._({
        r'customerId': customerId,
      });

  Variables$Query$bookingCustomerNotes._(this._$data);

  factory Variables$Query$bookingCustomerNotes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$customerId = data['customerId'];
    result$data['customerId'] = (l$customerId as String);
    return Variables$Query$bookingCustomerNotes._(result$data);
  }

  Map<String, dynamic> _$data;

  String get customerId => (_$data['customerId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$customerId = customerId;
    result$data['customerId'] = l$customerId;
    return result$data;
  }

  CopyWith$Variables$Query$bookingCustomerNotes<
          Variables$Query$bookingCustomerNotes>
      get copyWith => CopyWith$Variables$Query$bookingCustomerNotes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$bookingCustomerNotes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerId = customerId;
    final lOther$customerId = other.customerId;
    if (l$customerId != lOther$customerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$customerId = customerId;
    return Object.hashAll([l$customerId]);
  }
}

abstract class CopyWith$Variables$Query$bookingCustomerNotes<TRes> {
  factory CopyWith$Variables$Query$bookingCustomerNotes(
    Variables$Query$bookingCustomerNotes instance,
    TRes Function(Variables$Query$bookingCustomerNotes) then,
  ) = _CopyWithImpl$Variables$Query$bookingCustomerNotes;

  factory CopyWith$Variables$Query$bookingCustomerNotes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$bookingCustomerNotes;

  TRes call({String? customerId});
}

class _CopyWithImpl$Variables$Query$bookingCustomerNotes<TRes>
    implements CopyWith$Variables$Query$bookingCustomerNotes<TRes> {
  _CopyWithImpl$Variables$Query$bookingCustomerNotes(
    this._instance,
    this._then,
  );

  final Variables$Query$bookingCustomerNotes _instance;

  final TRes Function(Variables$Query$bookingCustomerNotes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? customerId = _undefined}) =>
      _then(Variables$Query$bookingCustomerNotes._({
        ..._instance._$data,
        if (customerId != _undefined && customerId != null)
          'customerId': (customerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$bookingCustomerNotes<TRes>
    implements CopyWith$Variables$Query$bookingCustomerNotes<TRes> {
  _CopyWithStubImpl$Variables$Query$bookingCustomerNotes(this._res);

  TRes _res;

  call({String? customerId}) => _res;
}

class Query$bookingCustomerNotes {
  Query$bookingCustomerNotes({
    required this.bookingCustomerNotes,
    this.$__typename = 'Query',
  });

  factory Query$bookingCustomerNotes.fromJson(Map<String, dynamic> json) {
    final l$bookingCustomerNotes = json['bookingCustomerNotes'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerNotes(
      bookingCustomerNotes: (l$bookingCustomerNotes as List<dynamic>)
          .map((e) => Query$bookingCustomerNotes$bookingCustomerNotes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$bookingCustomerNotes$bookingCustomerNotes>
      bookingCustomerNotes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingCustomerNotes = bookingCustomerNotes;
    _resultData['bookingCustomerNotes'] =
        l$bookingCustomerNotes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingCustomerNotes = bookingCustomerNotes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bookingCustomerNotes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCustomerNotes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingCustomerNotes = bookingCustomerNotes;
    final lOther$bookingCustomerNotes = other.bookingCustomerNotes;
    if (l$bookingCustomerNotes.length != lOther$bookingCustomerNotes.length) {
      return false;
    }
    for (int i = 0; i < l$bookingCustomerNotes.length; i++) {
      final l$bookingCustomerNotes$entry = l$bookingCustomerNotes[i];
      final lOther$bookingCustomerNotes$entry = lOther$bookingCustomerNotes[i];
      if (l$bookingCustomerNotes$entry != lOther$bookingCustomerNotes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingCustomerNotes
    on Query$bookingCustomerNotes {
  CopyWith$Query$bookingCustomerNotes<Query$bookingCustomerNotes>
      get copyWith => CopyWith$Query$bookingCustomerNotes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerNotes<TRes> {
  factory CopyWith$Query$bookingCustomerNotes(
    Query$bookingCustomerNotes instance,
    TRes Function(Query$bookingCustomerNotes) then,
  ) = _CopyWithImpl$Query$bookingCustomerNotes;

  factory CopyWith$Query$bookingCustomerNotes.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerNotes;

  TRes call({
    List<Query$bookingCustomerNotes$bookingCustomerNotes>? bookingCustomerNotes,
    String? $__typename,
  });
  TRes bookingCustomerNotes(
      Iterable<Query$bookingCustomerNotes$bookingCustomerNotes> Function(
              Iterable<
                  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes<
                      Query$bookingCustomerNotes$bookingCustomerNotes>>)
          _fn);
}

class _CopyWithImpl$Query$bookingCustomerNotes<TRes>
    implements CopyWith$Query$bookingCustomerNotes<TRes> {
  _CopyWithImpl$Query$bookingCustomerNotes(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerNotes _instance;

  final TRes Function(Query$bookingCustomerNotes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingCustomerNotes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerNotes(
        bookingCustomerNotes:
            bookingCustomerNotes == _undefined || bookingCustomerNotes == null
                ? _instance.bookingCustomerNotes
                : (bookingCustomerNotes
                    as List<Query$bookingCustomerNotes$bookingCustomerNotes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bookingCustomerNotes(
          Iterable<Query$bookingCustomerNotes$bookingCustomerNotes> Function(
                  Iterable<
                      CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes<
                          Query$bookingCustomerNotes$bookingCustomerNotes>>)
              _fn) =>
      call(
          bookingCustomerNotes: _fn(_instance.bookingCustomerNotes.map(
              (e) => CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$bookingCustomerNotes<TRes>
    implements CopyWith$Query$bookingCustomerNotes<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerNotes(this._res);

  TRes _res;

  call({
    List<Query$bookingCustomerNotes$bookingCustomerNotes>? bookingCustomerNotes,
    String? $__typename,
  }) =>
      _res;
  bookingCustomerNotes(_fn) => _res;
}

const documentNodeQuerybookingCustomerNotes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingCustomerNotes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingCustomerNotes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'customerId'),
            value: VariableNode(name: NameNode(value: 'customerId')),
          )
        ],
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
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'branchId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'branch'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'visitId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visit'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'text'),
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

class Query$bookingCustomerNotes$bookingCustomerNotes {
  Query$bookingCustomerNotes$bookingCustomerNotes({
    required this.id,
    required this.userId,
    required this.user,
    this.branchId,
    this.branch,
    this.visitId,
    this.visit,
    this.text,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'BookingNote',
  });

  factory Query$bookingCustomerNotes$bookingCustomerNotes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$branchId = json['branchId'];
    final l$branch = json['branch'];
    final l$visitId = json['visitId'];
    final l$visit = json['visit'];
    final l$text = json['text'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerNotes$bookingCustomerNotes(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Query$bookingCustomerNotes$bookingCustomerNotes$user.fromJson(
          (l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String?),
      branch: l$branch == null
          ? null
          : Query$bookingCustomerNotes$bookingCustomerNotes$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      visitId: (l$visitId as String?),
      visit: l$visit == null
          ? null
          : Query$bookingCustomerNotes$bookingCustomerNotes$visit.fromJson(
              (l$visit as Map<String, dynamic>)),
      text: (l$text as String?),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Query$bookingCustomerNotes$bookingCustomerNotes$user user;

  final String? branchId;

  final Query$bookingCustomerNotes$bookingCustomerNotes$branch? branch;

  final String? visitId;

  final Query$bookingCustomerNotes$bookingCustomerNotes$visit? visit;

  final String? text;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    _resultData['branchId'] = l$branchId;
    final l$branch = branch;
    _resultData['branch'] = l$branch?.toJson();
    final l$visitId = visitId;
    _resultData['visitId'] = l$visitId;
    final l$visit = visit;
    _resultData['visit'] = l$visit?.toJson();
    final l$text = text;
    _resultData['text'] = l$text;
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
    final l$userId = userId;
    final l$user = user;
    final l$branchId = branchId;
    final l$branch = branch;
    final l$visitId = visitId;
    final l$visit = visit;
    final l$text = text;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$user,
      l$branchId,
      l$branch,
      l$visitId,
      l$visit,
      l$text,
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
    if (!(other is Query$bookingCustomerNotes$bookingCustomerNotes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$branch = branch;
    final lOther$branch = other.branch;
    if (l$branch != lOther$branch) {
      return false;
    }
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (l$visitId != lOther$visitId) {
      return false;
    }
    final l$visit = visit;
    final lOther$visit = other.visit;
    if (l$visit != lOther$visit) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Query$bookingCustomerNotes$bookingCustomerNotes
    on Query$bookingCustomerNotes$bookingCustomerNotes {
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes<
          Query$bookingCustomerNotes$bookingCustomerNotes>
      get copyWith => CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes<TRes> {
  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes(
    Query$bookingCustomerNotes$bookingCustomerNotes instance,
    TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes) then,
  ) = _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes;

  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes;

  TRes call({
    String? id,
    String? userId,
    Query$bookingCustomerNotes$bookingCustomerNotes$user? user,
    String? branchId,
    Query$bookingCustomerNotes$bookingCustomerNotes$branch? branch,
    String? visitId,
    Query$bookingCustomerNotes$bookingCustomerNotes$visit? visit,
    String? text,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<TRes> get user;
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<TRes>
      get branch;
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<TRes>
      get visit;
}

class _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes<TRes>
    implements CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes<TRes> {
  _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerNotes$bookingCustomerNotes _instance;

  final TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? branchId = _undefined,
    Object? branch = _undefined,
    Object? visitId = _undefined,
    Object? visit = _undefined,
    Object? text = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerNotes$bookingCustomerNotes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$bookingCustomerNotes$bookingCustomerNotes$user),
        branchId:
            branchId == _undefined ? _instance.branchId : (branchId as String?),
        branch: branch == _undefined
            ? _instance.branch
            : (branch
                as Query$bookingCustomerNotes$bookingCustomerNotes$branch?),
        visitId:
            visitId == _undefined ? _instance.visitId : (visitId as String?),
        visit: visit == _undefined
            ? _instance.visit
            : (visit as Query$bookingCustomerNotes$bookingCustomerNotes$visit?),
        text: text == _undefined ? _instance.text : (text as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user(
        local$user, (e) => call(user: e));
  }

  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<TRes>
      get branch {
    final local$branch = _instance.branch;
    return local$branch == null
        ? CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch.stub(
            _then(_instance))
        : CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch(
            local$branch, (e) => call(branch: e));
  }

  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<TRes>
      get visit {
    final local$visit = _instance.visit;
    return local$visit == null
        ? CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit.stub(
            _then(_instance))
        : CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit(
            local$visit, (e) => call(visit: e));
  }
}

class _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes<TRes>
    implements CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Query$bookingCustomerNotes$bookingCustomerNotes$user? user,
    String? branchId,
    Query$bookingCustomerNotes$bookingCustomerNotes$branch? branch,
    String? visitId,
    Query$bookingCustomerNotes$bookingCustomerNotes$visit? visit,
    String? text,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<TRes>
      get user =>
          CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user.stub(
              _res);
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<TRes>
      get branch =>
          CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch.stub(
              _res);
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<TRes>
      get visit =>
          CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit.stub(
              _res);
}

class Query$bookingCustomerNotes$bookingCustomerNotes$user {
  Query$bookingCustomerNotes$bookingCustomerNotes$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$bookingCustomerNotes$bookingCustomerNotes$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerNotes$bookingCustomerNotes$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCustomerNotes$bookingCustomerNotes$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingCustomerNotes$bookingCustomerNotes$user
    on Query$bookingCustomerNotes$bookingCustomerNotes$user {
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<
          Query$bookingCustomerNotes$bookingCustomerNotes$user>
      get copyWith =>
          CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<
    TRes> {
  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user(
    Query$bookingCustomerNotes$bookingCustomerNotes$user instance,
    TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes$user) then,
  ) = _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$user;

  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$user<TRes>
    implements
        CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<TRes> {
  _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$user(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerNotes$bookingCustomerNotes$user _instance;

  final TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerNotes$bookingCustomerNotes$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$user<
        TRes>
    implements
        CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$user<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$user(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$bookingCustomerNotes$bookingCustomerNotes$branch {
  Query$bookingCustomerNotes$bookingCustomerNotes$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Query$bookingCustomerNotes$bookingCustomerNotes$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerNotes$bookingCustomerNotes$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCustomerNotes$bookingCustomerNotes$branch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingCustomerNotes$bookingCustomerNotes$branch
    on Query$bookingCustomerNotes$bookingCustomerNotes$branch {
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<
          Query$bookingCustomerNotes$bookingCustomerNotes$branch>
      get copyWith =>
          CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<
    TRes> {
  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch(
    Query$bookingCustomerNotes$bookingCustomerNotes$branch instance,
    TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes$branch) then,
  ) = _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$branch;

  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$branch<TRes>
    implements
        CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<TRes> {
  _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$branch(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerNotes$bookingCustomerNotes$branch _instance;

  final TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes$branch)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerNotes$bookingCustomerNotes$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$branch<
        TRes>
    implements
        CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$branch<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$branch(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$bookingCustomerNotes$bookingCustomerNotes$visit {
  Query$bookingCustomerNotes$bookingCustomerNotes$visit({
    required this.id,
    this.$__typename = 'BookingVisit',
  });

  factory Query$bookingCustomerNotes$bookingCustomerNotes$visit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerNotes$bookingCustomerNotes$visit(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCustomerNotes$bookingCustomerNotes$visit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingCustomerNotes$bookingCustomerNotes$visit
    on Query$bookingCustomerNotes$bookingCustomerNotes$visit {
  CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<
          Query$bookingCustomerNotes$bookingCustomerNotes$visit>
      get copyWith =>
          CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<
    TRes> {
  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit(
    Query$bookingCustomerNotes$bookingCustomerNotes$visit instance,
    TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes$visit) then,
  ) = _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$visit;

  factory CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$visit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$visit<TRes>
    implements
        CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<TRes> {
  _CopyWithImpl$Query$bookingCustomerNotes$bookingCustomerNotes$visit(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerNotes$bookingCustomerNotes$visit _instance;

  final TRes Function(Query$bookingCustomerNotes$bookingCustomerNotes$visit)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerNotes$bookingCustomerNotes$visit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$visit<
        TRes>
    implements
        CopyWith$Query$bookingCustomerNotes$bookingCustomerNotes$visit<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerNotes$bookingCustomerNotes$visit(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$bookingCustomerVisits {
  factory Variables$Query$bookingCustomerVisits({required String customerId}) =>
      Variables$Query$bookingCustomerVisits._({
        r'customerId': customerId,
      });

  Variables$Query$bookingCustomerVisits._(this._$data);

  factory Variables$Query$bookingCustomerVisits.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$customerId = data['customerId'];
    result$data['customerId'] = (l$customerId as String);
    return Variables$Query$bookingCustomerVisits._(result$data);
  }

  Map<String, dynamic> _$data;

  String get customerId => (_$data['customerId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$customerId = customerId;
    result$data['customerId'] = l$customerId;
    return result$data;
  }

  CopyWith$Variables$Query$bookingCustomerVisits<
          Variables$Query$bookingCustomerVisits>
      get copyWith => CopyWith$Variables$Query$bookingCustomerVisits(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$bookingCustomerVisits) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerId = customerId;
    final lOther$customerId = other.customerId;
    if (l$customerId != lOther$customerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$customerId = customerId;
    return Object.hashAll([l$customerId]);
  }
}

abstract class CopyWith$Variables$Query$bookingCustomerVisits<TRes> {
  factory CopyWith$Variables$Query$bookingCustomerVisits(
    Variables$Query$bookingCustomerVisits instance,
    TRes Function(Variables$Query$bookingCustomerVisits) then,
  ) = _CopyWithImpl$Variables$Query$bookingCustomerVisits;

  factory CopyWith$Variables$Query$bookingCustomerVisits.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$bookingCustomerVisits;

  TRes call({String? customerId});
}

class _CopyWithImpl$Variables$Query$bookingCustomerVisits<TRes>
    implements CopyWith$Variables$Query$bookingCustomerVisits<TRes> {
  _CopyWithImpl$Variables$Query$bookingCustomerVisits(
    this._instance,
    this._then,
  );

  final Variables$Query$bookingCustomerVisits _instance;

  final TRes Function(Variables$Query$bookingCustomerVisits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? customerId = _undefined}) =>
      _then(Variables$Query$bookingCustomerVisits._({
        ..._instance._$data,
        if (customerId != _undefined && customerId != null)
          'customerId': (customerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$bookingCustomerVisits<TRes>
    implements CopyWith$Variables$Query$bookingCustomerVisits<TRes> {
  _CopyWithStubImpl$Variables$Query$bookingCustomerVisits(this._res);

  TRes _res;

  call({String? customerId}) => _res;
}

class Query$bookingCustomerVisits {
  Query$bookingCustomerVisits({
    required this.bookingCustomerVisits,
    this.$__typename = 'Query',
  });

  factory Query$bookingCustomerVisits.fromJson(Map<String, dynamic> json) {
    final l$bookingCustomerVisits = json['bookingCustomerVisits'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerVisits(
      bookingCustomerVisits: (l$bookingCustomerVisits as List<dynamic>)
          .map((e) =>
              Query$bookingCustomerVisits$bookingCustomerVisits.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$bookingCustomerVisits$bookingCustomerVisits>
      bookingCustomerVisits;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingCustomerVisits = bookingCustomerVisits;
    _resultData['bookingCustomerVisits'] =
        l$bookingCustomerVisits.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingCustomerVisits = bookingCustomerVisits;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bookingCustomerVisits.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCustomerVisits) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingCustomerVisits = bookingCustomerVisits;
    final lOther$bookingCustomerVisits = other.bookingCustomerVisits;
    if (l$bookingCustomerVisits.length != lOther$bookingCustomerVisits.length) {
      return false;
    }
    for (int i = 0; i < l$bookingCustomerVisits.length; i++) {
      final l$bookingCustomerVisits$entry = l$bookingCustomerVisits[i];
      final lOther$bookingCustomerVisits$entry =
          lOther$bookingCustomerVisits[i];
      if (l$bookingCustomerVisits$entry != lOther$bookingCustomerVisits$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingCustomerVisits
    on Query$bookingCustomerVisits {
  CopyWith$Query$bookingCustomerVisits<Query$bookingCustomerVisits>
      get copyWith => CopyWith$Query$bookingCustomerVisits(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerVisits<TRes> {
  factory CopyWith$Query$bookingCustomerVisits(
    Query$bookingCustomerVisits instance,
    TRes Function(Query$bookingCustomerVisits) then,
  ) = _CopyWithImpl$Query$bookingCustomerVisits;

  factory CopyWith$Query$bookingCustomerVisits.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerVisits;

  TRes call({
    List<Query$bookingCustomerVisits$bookingCustomerVisits>?
        bookingCustomerVisits,
    String? $__typename,
  });
  TRes bookingCustomerVisits(
      Iterable<Query$bookingCustomerVisits$bookingCustomerVisits> Function(
              Iterable<
                  CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits<
                      Query$bookingCustomerVisits$bookingCustomerVisits>>)
          _fn);
}

class _CopyWithImpl$Query$bookingCustomerVisits<TRes>
    implements CopyWith$Query$bookingCustomerVisits<TRes> {
  _CopyWithImpl$Query$bookingCustomerVisits(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerVisits _instance;

  final TRes Function(Query$bookingCustomerVisits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingCustomerVisits = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerVisits(
        bookingCustomerVisits:
            bookingCustomerVisits == _undefined || bookingCustomerVisits == null
                ? _instance.bookingCustomerVisits
                : (bookingCustomerVisits
                    as List<Query$bookingCustomerVisits$bookingCustomerVisits>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bookingCustomerVisits(
          Iterable<Query$bookingCustomerVisits$bookingCustomerVisits> Function(
                  Iterable<
                      CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits<
                          Query$bookingCustomerVisits$bookingCustomerVisits>>)
              _fn) =>
      call(
          bookingCustomerVisits: _fn(_instance.bookingCustomerVisits.map(
              (e) => CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$bookingCustomerVisits<TRes>
    implements CopyWith$Query$bookingCustomerVisits<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerVisits(this._res);

  TRes _res;

  call({
    List<Query$bookingCustomerVisits$bookingCustomerVisits>?
        bookingCustomerVisits,
    String? $__typename,
  }) =>
      _res;
  bookingCustomerVisits(_fn) => _res;
}

const documentNodeQuerybookingCustomerVisits = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingCustomerVisits'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingCustomerVisits'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'customerId'),
            value: VariableNode(name: NameNode(value: 'customerId')),
          )
        ],
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
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'time'),
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

class Query$bookingCustomerVisits$bookingCustomerVisits {
  Query$bookingCustomerVisits$bookingCustomerVisits({
    required this.id,
    required this.userId,
    required this.user,
    required this.time,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'BookingVisit',
  });

  factory Query$bookingCustomerVisits$bookingCustomerVisits.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$time = json['time'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerVisits$bookingCustomerVisits(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Query$bookingCustomerVisits$bookingCustomerVisits$user.fromJson(
          (l$user as Map<String, dynamic>)),
      time: (l$time as int),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Query$bookingCustomerVisits$bookingCustomerVisits$user user;

  final int time;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$time = time;
    _resultData['time'] = l$time;
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
    final l$userId = userId;
    final l$user = user;
    final l$time = time;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$user,
      l$time,
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
    if (!(other is Query$bookingCustomerVisits$bookingCustomerVisits) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension$Query$bookingCustomerVisits$bookingCustomerVisits
    on Query$bookingCustomerVisits$bookingCustomerVisits {
  CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits<
          Query$bookingCustomerVisits$bookingCustomerVisits>
      get copyWith =>
          CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits<
    TRes> {
  factory CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits(
    Query$bookingCustomerVisits$bookingCustomerVisits instance,
    TRes Function(Query$bookingCustomerVisits$bookingCustomerVisits) then,
  ) = _CopyWithImpl$Query$bookingCustomerVisits$bookingCustomerVisits;

  factory CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerVisits$bookingCustomerVisits;

  TRes call({
    String? id,
    String? userId,
    Query$bookingCustomerVisits$bookingCustomerVisits$user? user,
    int? time,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<TRes>
      get user;
}

class _CopyWithImpl$Query$bookingCustomerVisits$bookingCustomerVisits<TRes>
    implements
        CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits<TRes> {
  _CopyWithImpl$Query$bookingCustomerVisits$bookingCustomerVisits(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerVisits$bookingCustomerVisits _instance;

  final TRes Function(Query$bookingCustomerVisits$bookingCustomerVisits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? time = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerVisits$bookingCustomerVisits(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$bookingCustomerVisits$bookingCustomerVisits$user),
        time:
            time == _undefined || time == null ? _instance.time : (time as int),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$bookingCustomerVisits$bookingCustomerVisits<TRes>
    implements
        CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerVisits$bookingCustomerVisits(
      this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Query$bookingCustomerVisits$bookingCustomerVisits$user? user,
    int? time,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<TRes>
      get user =>
          CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user.stub(
              _res);
}

class Query$bookingCustomerVisits$bookingCustomerVisits$user {
  Query$bookingCustomerVisits$bookingCustomerVisits$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$bookingCustomerVisits$bookingCustomerVisits$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingCustomerVisits$bookingCustomerVisits$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCustomerVisits$bookingCustomerVisits$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingCustomerVisits$bookingCustomerVisits$user
    on Query$bookingCustomerVisits$bookingCustomerVisits$user {
  CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<
          Query$bookingCustomerVisits$bookingCustomerVisits$user>
      get copyWith =>
          CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<
    TRes> {
  factory CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user(
    Query$bookingCustomerVisits$bookingCustomerVisits$user instance,
    TRes Function(Query$bookingCustomerVisits$bookingCustomerVisits$user) then,
  ) = _CopyWithImpl$Query$bookingCustomerVisits$bookingCustomerVisits$user;

  factory CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCustomerVisits$bookingCustomerVisits$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingCustomerVisits$bookingCustomerVisits$user<TRes>
    implements
        CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<TRes> {
  _CopyWithImpl$Query$bookingCustomerVisits$bookingCustomerVisits$user(
    this._instance,
    this._then,
  );

  final Query$bookingCustomerVisits$bookingCustomerVisits$user _instance;

  final TRes Function(Query$bookingCustomerVisits$bookingCustomerVisits$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCustomerVisits$bookingCustomerVisits$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingCustomerVisits$bookingCustomerVisits$user<
        TRes>
    implements
        CopyWith$Query$bookingCustomerVisits$bookingCustomerVisits$user<TRes> {
  _CopyWithStubImpl$Query$bookingCustomerVisits$bookingCustomerVisits$user(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$bookingReservation {
  factory Variables$Query$bookingReservation({required String reservationId}) =>
      Variables$Query$bookingReservation._({
        r'reservationId': reservationId,
      });

  Variables$Query$bookingReservation._(this._$data);

  factory Variables$Query$bookingReservation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reservationId = data['reservationId'];
    result$data['reservationId'] = (l$reservationId as String);
    return Variables$Query$bookingReservation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get reservationId => (_$data['reservationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reservationId = reservationId;
    result$data['reservationId'] = l$reservationId;
    return result$data;
  }

  CopyWith$Variables$Query$bookingReservation<
          Variables$Query$bookingReservation>
      get copyWith => CopyWith$Variables$Query$bookingReservation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$bookingReservation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reservationId = reservationId;
    final lOther$reservationId = other.reservationId;
    if (l$reservationId != lOther$reservationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reservationId = reservationId;
    return Object.hashAll([l$reservationId]);
  }
}

abstract class CopyWith$Variables$Query$bookingReservation<TRes> {
  factory CopyWith$Variables$Query$bookingReservation(
    Variables$Query$bookingReservation instance,
    TRes Function(Variables$Query$bookingReservation) then,
  ) = _CopyWithImpl$Variables$Query$bookingReservation;

  factory CopyWith$Variables$Query$bookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$bookingReservation;

  TRes call({String? reservationId});
}

class _CopyWithImpl$Variables$Query$bookingReservation<TRes>
    implements CopyWith$Variables$Query$bookingReservation<TRes> {
  _CopyWithImpl$Variables$Query$bookingReservation(
    this._instance,
    this._then,
  );

  final Variables$Query$bookingReservation _instance;

  final TRes Function(Variables$Query$bookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? reservationId = _undefined}) =>
      _then(Variables$Query$bookingReservation._({
        ..._instance._$data,
        if (reservationId != _undefined && reservationId != null)
          'reservationId': (reservationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$bookingReservation<TRes>
    implements CopyWith$Variables$Query$bookingReservation<TRes> {
  _CopyWithStubImpl$Variables$Query$bookingReservation(this._res);

  TRes _res;

  call({String? reservationId}) => _res;
}

class Query$bookingReservation {
  Query$bookingReservation({
    required this.bookingReservation,
    this.$__typename = 'Query',
  });

  factory Query$bookingReservation.fromJson(Map<String, dynamic> json) {
    final l$bookingReservation = json['bookingReservation'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservation(
      bookingReservation: Query$bookingReservation$bookingReservation.fromJson(
          (l$bookingReservation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$bookingReservation$bookingReservation bookingReservation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingReservation = bookingReservation;
    _resultData['bookingReservation'] = l$bookingReservation.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingReservation = bookingReservation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bookingReservation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingReservation = bookingReservation;
    final lOther$bookingReservation = other.bookingReservation;
    if (l$bookingReservation != lOther$bookingReservation) {
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

extension UtilityExtension$Query$bookingReservation
    on Query$bookingReservation {
  CopyWith$Query$bookingReservation<Query$bookingReservation> get copyWith =>
      CopyWith$Query$bookingReservation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$bookingReservation<TRes> {
  factory CopyWith$Query$bookingReservation(
    Query$bookingReservation instance,
    TRes Function(Query$bookingReservation) then,
  ) = _CopyWithImpl$Query$bookingReservation;

  factory CopyWith$Query$bookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingReservation;

  TRes call({
    Query$bookingReservation$bookingReservation? bookingReservation,
    String? $__typename,
  });
  CopyWith$Query$bookingReservation$bookingReservation<TRes>
      get bookingReservation;
}

class _CopyWithImpl$Query$bookingReservation<TRes>
    implements CopyWith$Query$bookingReservation<TRes> {
  _CopyWithImpl$Query$bookingReservation(
    this._instance,
    this._then,
  );

  final Query$bookingReservation _instance;

  final TRes Function(Query$bookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingReservation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservation(
        bookingReservation:
            bookingReservation == _undefined || bookingReservation == null
                ? _instance.bookingReservation
                : (bookingReservation
                    as Query$bookingReservation$bookingReservation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$bookingReservation$bookingReservation<TRes>
      get bookingReservation {
    final local$bookingReservation = _instance.bookingReservation;
    return CopyWith$Query$bookingReservation$bookingReservation(
        local$bookingReservation, (e) => call(bookingReservation: e));
  }
}

class _CopyWithStubImpl$Query$bookingReservation<TRes>
    implements CopyWith$Query$bookingReservation<TRes> {
  _CopyWithStubImpl$Query$bookingReservation(this._res);

  TRes _res;

  call({
    Query$bookingReservation$bookingReservation? bookingReservation,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$bookingReservation$bookingReservation<TRes>
      get bookingReservation =>
          CopyWith$Query$bookingReservation$bookingReservation.stub(_res);
}

const documentNodeQuerybookingReservation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingReservation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reservationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingReservation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reservationId'),
            value: VariableNode(name: NameNode(value: 'reservationId')),
          )
        ],
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
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'branchId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'branch'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'serviceId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'channel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'queueNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
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

class Query$bookingReservation$bookingReservation {
  Query$bookingReservation$bookingReservation({
    required this.id,
    required this.userId,
    required this.user,
    required this.branchId,
    required this.branch,
    required this.serviceId,
    required this.service,
    required this.channel,
    required this.date,
    required this.time,
    this.queueNumber,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'BookingReservation',
  });

  factory Query$bookingReservation$bookingReservation.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$branchId = json['branchId'];
    final l$branch = json['branch'];
    final l$serviceId = json['serviceId'];
    final l$service = json['service'];
    final l$channel = json['channel'];
    final l$date = json['date'];
    final l$time = json['time'];
    final l$queueNumber = json['queueNumber'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservation$bookingReservation(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Query$bookingReservation$bookingReservation$user.fromJson(
          (l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String),
      branch: Query$bookingReservation$bookingReservation$branch.fromJson(
          (l$branch as Map<String, dynamic>)),
      serviceId: (l$serviceId as String),
      service: Query$bookingReservation$bookingReservation$service.fromJson(
          (l$service as Map<String, dynamic>)),
      channel: (l$channel as String),
      date: (l$date as int),
      time: (l$time as int),
      queueNumber: (l$queueNumber as int?),
      status: fromJson$Enum$BookingReservationStatus((l$status as String)),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Query$bookingReservation$bookingReservation$user user;

  final String branchId;

  final Query$bookingReservation$bookingReservation$branch branch;

  final String serviceId;

  final Query$bookingReservation$bookingReservation$service service;

  final String channel;

  final int date;

  final int time;

  final int? queueNumber;

  final Enum$BookingReservationStatus status;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    _resultData['branchId'] = l$branchId;
    final l$branch = branch;
    _resultData['branch'] = l$branch.toJson();
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$channel = channel;
    _resultData['channel'] = l$channel;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$time = time;
    _resultData['time'] = l$time;
    final l$queueNumber = queueNumber;
    _resultData['queueNumber'] = l$queueNumber;
    final l$status = status;
    _resultData['status'] = toJson$Enum$BookingReservationStatus(l$status);
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
    final l$userId = userId;
    final l$user = user;
    final l$branchId = branchId;
    final l$branch = branch;
    final l$serviceId = serviceId;
    final l$service = service;
    final l$channel = channel;
    final l$date = date;
    final l$time = time;
    final l$queueNumber = queueNumber;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$user,
      l$branchId,
      l$branch,
      l$serviceId,
      l$service,
      l$channel,
      l$date,
      l$time,
      l$queueNumber,
      l$status,
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
    if (!(other is Query$bookingReservation$bookingReservation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$branch = branch;
    final lOther$branch = other.branch;
    if (l$branch != lOther$branch) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$channel = channel;
    final lOther$channel = other.channel;
    if (l$channel != lOther$channel) {
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
    final l$queueNumber = queueNumber;
    final lOther$queueNumber = other.queueNumber;
    if (l$queueNumber != lOther$queueNumber) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$bookingReservation$bookingReservation
    on Query$bookingReservation$bookingReservation {
  CopyWith$Query$bookingReservation$bookingReservation<
          Query$bookingReservation$bookingReservation>
      get copyWith => CopyWith$Query$bookingReservation$bookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingReservation$bookingReservation<TRes> {
  factory CopyWith$Query$bookingReservation$bookingReservation(
    Query$bookingReservation$bookingReservation instance,
    TRes Function(Query$bookingReservation$bookingReservation) then,
  ) = _CopyWithImpl$Query$bookingReservation$bookingReservation;

  factory CopyWith$Query$bookingReservation$bookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingReservation$bookingReservation;

  TRes call({
    String? id,
    String? userId,
    Query$bookingReservation$bookingReservation$user? user,
    String? branchId,
    Query$bookingReservation$bookingReservation$branch? branch,
    String? serviceId,
    Query$bookingReservation$bookingReservation$service? service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$bookingReservation$bookingReservation$user<TRes> get user;
  CopyWith$Query$bookingReservation$bookingReservation$branch<TRes> get branch;
  CopyWith$Query$bookingReservation$bookingReservation$service<TRes>
      get service;
}

class _CopyWithImpl$Query$bookingReservation$bookingReservation<TRes>
    implements CopyWith$Query$bookingReservation$bookingReservation<TRes> {
  _CopyWithImpl$Query$bookingReservation$bookingReservation(
    this._instance,
    this._then,
  );

  final Query$bookingReservation$bookingReservation _instance;

  final TRes Function(Query$bookingReservation$bookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? branchId = _undefined,
    Object? branch = _undefined,
    Object? serviceId = _undefined,
    Object? service = _undefined,
    Object? channel = _undefined,
    Object? date = _undefined,
    Object? time = _undefined,
    Object? queueNumber = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservation$bookingReservation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$bookingReservation$bookingReservation$user),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch as Query$bookingReservation$bookingReservation$branch),
        serviceId: serviceId == _undefined || serviceId == null
            ? _instance.serviceId
            : (serviceId as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Query$bookingReservation$bookingReservation$service),
        channel: channel == _undefined || channel == null
            ? _instance.channel
            : (channel as String),
        date:
            date == _undefined || date == null ? _instance.date : (date as int),
        time:
            time == _undefined || time == null ? _instance.time : (time as int),
        queueNumber: queueNumber == _undefined
            ? _instance.queueNumber
            : (queueNumber as int?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$BookingReservationStatus),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$bookingReservation$bookingReservation$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$bookingReservation$bookingReservation$user(
        local$user, (e) => call(user: e));
  }

  CopyWith$Query$bookingReservation$bookingReservation$branch<TRes> get branch {
    final local$branch = _instance.branch;
    return CopyWith$Query$bookingReservation$bookingReservation$branch(
        local$branch, (e) => call(branch: e));
  }

  CopyWith$Query$bookingReservation$bookingReservation$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$bookingReservation$bookingReservation$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$bookingReservation$bookingReservation<TRes>
    implements CopyWith$Query$bookingReservation$bookingReservation<TRes> {
  _CopyWithStubImpl$Query$bookingReservation$bookingReservation(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Query$bookingReservation$bookingReservation$user? user,
    String? branchId,
    Query$bookingReservation$bookingReservation$branch? branch,
    String? serviceId,
    Query$bookingReservation$bookingReservation$service? service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$bookingReservation$bookingReservation$user<TRes> get user =>
      CopyWith$Query$bookingReservation$bookingReservation$user.stub(_res);
  CopyWith$Query$bookingReservation$bookingReservation$branch<TRes>
      get branch =>
          CopyWith$Query$bookingReservation$bookingReservation$branch.stub(
              _res);
  CopyWith$Query$bookingReservation$bookingReservation$service<TRes>
      get service =>
          CopyWith$Query$bookingReservation$bookingReservation$service.stub(
              _res);
}

class Query$bookingReservation$bookingReservation$user {
  Query$bookingReservation$bookingReservation$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$bookingReservation$bookingReservation$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservation$bookingReservation$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservation$bookingReservation$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingReservation$bookingReservation$user
    on Query$bookingReservation$bookingReservation$user {
  CopyWith$Query$bookingReservation$bookingReservation$user<
          Query$bookingReservation$bookingReservation$user>
      get copyWith => CopyWith$Query$bookingReservation$bookingReservation$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingReservation$bookingReservation$user<TRes> {
  factory CopyWith$Query$bookingReservation$bookingReservation$user(
    Query$bookingReservation$bookingReservation$user instance,
    TRes Function(Query$bookingReservation$bookingReservation$user) then,
  ) = _CopyWithImpl$Query$bookingReservation$bookingReservation$user;

  factory CopyWith$Query$bookingReservation$bookingReservation$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingReservation$bookingReservation$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingReservation$bookingReservation$user<TRes>
    implements CopyWith$Query$bookingReservation$bookingReservation$user<TRes> {
  _CopyWithImpl$Query$bookingReservation$bookingReservation$user(
    this._instance,
    this._then,
  );

  final Query$bookingReservation$bookingReservation$user _instance;

  final TRes Function(Query$bookingReservation$bookingReservation$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservation$bookingReservation$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingReservation$bookingReservation$user<TRes>
    implements CopyWith$Query$bookingReservation$bookingReservation$user<TRes> {
  _CopyWithStubImpl$Query$bookingReservation$bookingReservation$user(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$bookingReservation$bookingReservation$branch {
  Query$bookingReservation$bookingReservation$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Query$bookingReservation$bookingReservation$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservation$bookingReservation$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservation$bookingReservation$branch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingReservation$bookingReservation$branch
    on Query$bookingReservation$bookingReservation$branch {
  CopyWith$Query$bookingReservation$bookingReservation$branch<
          Query$bookingReservation$bookingReservation$branch>
      get copyWith =>
          CopyWith$Query$bookingReservation$bookingReservation$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingReservation$bookingReservation$branch<
    TRes> {
  factory CopyWith$Query$bookingReservation$bookingReservation$branch(
    Query$bookingReservation$bookingReservation$branch instance,
    TRes Function(Query$bookingReservation$bookingReservation$branch) then,
  ) = _CopyWithImpl$Query$bookingReservation$bookingReservation$branch;

  factory CopyWith$Query$bookingReservation$bookingReservation$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingReservation$bookingReservation$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingReservation$bookingReservation$branch<TRes>
    implements
        CopyWith$Query$bookingReservation$bookingReservation$branch<TRes> {
  _CopyWithImpl$Query$bookingReservation$bookingReservation$branch(
    this._instance,
    this._then,
  );

  final Query$bookingReservation$bookingReservation$branch _instance;

  final TRes Function(Query$bookingReservation$bookingReservation$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservation$bookingReservation$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingReservation$bookingReservation$branch<TRes>
    implements
        CopyWith$Query$bookingReservation$bookingReservation$branch<TRes> {
  _CopyWithStubImpl$Query$bookingReservation$bookingReservation$branch(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$bookingReservation$bookingReservation$service {
  Query$bookingReservation$bookingReservation$service({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Query$bookingReservation$bookingReservation$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservation$bookingReservation$service(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservation$bookingReservation$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingReservation$bookingReservation$service
    on Query$bookingReservation$bookingReservation$service {
  CopyWith$Query$bookingReservation$bookingReservation$service<
          Query$bookingReservation$bookingReservation$service>
      get copyWith =>
          CopyWith$Query$bookingReservation$bookingReservation$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingReservation$bookingReservation$service<
    TRes> {
  factory CopyWith$Query$bookingReservation$bookingReservation$service(
    Query$bookingReservation$bookingReservation$service instance,
    TRes Function(Query$bookingReservation$bookingReservation$service) then,
  ) = _CopyWithImpl$Query$bookingReservation$bookingReservation$service;

  factory CopyWith$Query$bookingReservation$bookingReservation$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingReservation$bookingReservation$service;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingReservation$bookingReservation$service<TRes>
    implements
        CopyWith$Query$bookingReservation$bookingReservation$service<TRes> {
  _CopyWithImpl$Query$bookingReservation$bookingReservation$service(
    this._instance,
    this._then,
  );

  final Query$bookingReservation$bookingReservation$service _instance;

  final TRes Function(Query$bookingReservation$bookingReservation$service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservation$bookingReservation$service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingReservation$bookingReservation$service<
        TRes>
    implements
        CopyWith$Query$bookingReservation$bookingReservation$service<TRes> {
  _CopyWithStubImpl$Query$bookingReservation$bookingReservation$service(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$bookingReservations {
  factory Variables$Query$bookingReservations({
    int? limit,
    int? page,
    Input$DateRangeInput? date,
  }) =>
      Variables$Query$bookingReservations._({
        if (limit != null) r'limit': limit,
        if (page != null) r'page': page,
        if (date != null) r'date': date,
      });

  Variables$Query$bookingReservations._(this._$data);

  factory Variables$Query$bookingReservations.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateRangeInput.fromJson((l$date as Map<String, dynamic>));
    }
    return Variables$Query$bookingReservations._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  int? get page => (_$data['page'] as int?);
  Input$DateRangeInput? get date => (_$data['date'] as Input$DateRangeInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$bookingReservations<
          Variables$Query$bookingReservations>
      get copyWith => CopyWith$Variables$Query$bookingReservations(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$bookingReservations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$bookingReservations<TRes> {
  factory CopyWith$Variables$Query$bookingReservations(
    Variables$Query$bookingReservations instance,
    TRes Function(Variables$Query$bookingReservations) then,
  ) = _CopyWithImpl$Variables$Query$bookingReservations;

  factory CopyWith$Variables$Query$bookingReservations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$bookingReservations;

  TRes call({
    int? limit,
    int? page,
    Input$DateRangeInput? date,
  });
}

class _CopyWithImpl$Variables$Query$bookingReservations<TRes>
    implements CopyWith$Variables$Query$bookingReservations<TRes> {
  _CopyWithImpl$Variables$Query$bookingReservations(
    this._instance,
    this._then,
  );

  final Variables$Query$bookingReservations _instance;

  final TRes Function(Variables$Query$bookingReservations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Variables$Query$bookingReservations._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (page != _undefined) 'page': (page as int?),
        if (date != _undefined) 'date': (date as Input$DateRangeInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$bookingReservations<TRes>
    implements CopyWith$Variables$Query$bookingReservations<TRes> {
  _CopyWithStubImpl$Variables$Query$bookingReservations(this._res);

  TRes _res;

  call({
    int? limit,
    int? page,
    Input$DateRangeInput? date,
  }) =>
      _res;
}

class Query$bookingReservations {
  Query$bookingReservations({
    required this.bookingReservations,
    this.$__typename = 'Query',
  });

  factory Query$bookingReservations.fromJson(Map<String, dynamic> json) {
    final l$bookingReservations = json['bookingReservations'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservations(
      bookingReservations:
          Query$bookingReservations$bookingReservations.fromJson(
              (l$bookingReservations as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$bookingReservations$bookingReservations bookingReservations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingReservations = bookingReservations;
    _resultData['bookingReservations'] = l$bookingReservations.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingReservations = bookingReservations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bookingReservations,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingReservations = bookingReservations;
    final lOther$bookingReservations = other.bookingReservations;
    if (l$bookingReservations != lOther$bookingReservations) {
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

extension UtilityExtension$Query$bookingReservations
    on Query$bookingReservations {
  CopyWith$Query$bookingReservations<Query$bookingReservations> get copyWith =>
      CopyWith$Query$bookingReservations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$bookingReservations<TRes> {
  factory CopyWith$Query$bookingReservations(
    Query$bookingReservations instance,
    TRes Function(Query$bookingReservations) then,
  ) = _CopyWithImpl$Query$bookingReservations;

  factory CopyWith$Query$bookingReservations.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingReservations;

  TRes call({
    Query$bookingReservations$bookingReservations? bookingReservations,
    String? $__typename,
  });
  CopyWith$Query$bookingReservations$bookingReservations<TRes>
      get bookingReservations;
}

class _CopyWithImpl$Query$bookingReservations<TRes>
    implements CopyWith$Query$bookingReservations<TRes> {
  _CopyWithImpl$Query$bookingReservations(
    this._instance,
    this._then,
  );

  final Query$bookingReservations _instance;

  final TRes Function(Query$bookingReservations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingReservations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservations(
        bookingReservations:
            bookingReservations == _undefined || bookingReservations == null
                ? _instance.bookingReservations
                : (bookingReservations
                    as Query$bookingReservations$bookingReservations),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$bookingReservations$bookingReservations<TRes>
      get bookingReservations {
    final local$bookingReservations = _instance.bookingReservations;
    return CopyWith$Query$bookingReservations$bookingReservations(
        local$bookingReservations, (e) => call(bookingReservations: e));
  }
}

class _CopyWithStubImpl$Query$bookingReservations<TRes>
    implements CopyWith$Query$bookingReservations<TRes> {
  _CopyWithStubImpl$Query$bookingReservations(this._res);

  TRes _res;

  call({
    Query$bookingReservations$bookingReservations? bookingReservations,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$bookingReservations$bookingReservations<TRes>
      get bookingReservations =>
          CopyWith$Query$bookingReservations$bookingReservations.stub(_res);
}

const documentNodeQuerybookingReservations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingReservations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'date')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateRangeInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingReservations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'date'),
            value: VariableNode(name: NameNode(value: 'date')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'limit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'page'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sort'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalRows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalPages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rows'),
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

class Query$bookingReservations$bookingReservations {
  Query$bookingReservations$bookingReservations({
    this.limit,
    this.page,
    this.sort,
    this.totalRows,
    this.totalPages,
    required this.rows,
    this.$__typename = 'BookingReservationPagination',
  });

  factory Query$bookingReservations$bookingReservations.fromJson(
      Map<String, dynamic> json) {
    final l$limit = json['limit'];
    final l$page = json['page'];
    final l$sort = json['sort'];
    final l$totalRows = json['totalRows'];
    final l$totalPages = json['totalPages'];
    final l$rows = json['rows'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservations$bookingReservations(
      limit: (l$limit as int?),
      page: (l$page as int?),
      sort: (l$sort as String?),
      totalRows: (l$totalRows as int?),
      totalPages: (l$totalPages as int?),
      rows: (l$rows as List<dynamic>)
          .map((e) =>
              Query$bookingReservations$bookingReservations$rows.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? limit;

  final int? page;

  final String? sort;

  final int? totalRows;

  final int? totalPages;

  final List<Query$bookingReservations$bookingReservations$rows> rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$sort = sort;
    _resultData['sort'] = l$sort;
    final l$totalRows = totalRows;
    _resultData['totalRows'] = l$totalRows;
    final l$totalPages = totalPages;
    _resultData['totalPages'] = l$totalPages;
    final l$rows = rows;
    _resultData['rows'] = l$rows.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$sort = sort;
    final l$totalRows = totalRows;
    final l$totalPages = totalPages;
    final l$rows = rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$limit,
      l$page,
      l$sort,
      l$totalRows,
      l$totalPages,
      Object.hashAll(l$rows.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservations$bookingReservations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) {
      return false;
    }
    final l$totalRows = totalRows;
    final lOther$totalRows = other.totalRows;
    if (l$totalRows != lOther$totalRows) {
      return false;
    }
    final l$totalPages = totalPages;
    final lOther$totalPages = other.totalPages;
    if (l$totalPages != lOther$totalPages) {
      return false;
    }
    final l$rows = rows;
    final lOther$rows = other.rows;
    if (l$rows.length != lOther$rows.length) {
      return false;
    }
    for (int i = 0; i < l$rows.length; i++) {
      final l$rows$entry = l$rows[i];
      final lOther$rows$entry = lOther$rows[i];
      if (l$rows$entry != lOther$rows$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingReservations$bookingReservations
    on Query$bookingReservations$bookingReservations {
  CopyWith$Query$bookingReservations$bookingReservations<
          Query$bookingReservations$bookingReservations>
      get copyWith => CopyWith$Query$bookingReservations$bookingReservations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingReservations$bookingReservations<TRes> {
  factory CopyWith$Query$bookingReservations$bookingReservations(
    Query$bookingReservations$bookingReservations instance,
    TRes Function(Query$bookingReservations$bookingReservations) then,
  ) = _CopyWithImpl$Query$bookingReservations$bookingReservations;

  factory CopyWith$Query$bookingReservations$bookingReservations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingReservations$bookingReservations;

  TRes call({
    int? limit,
    int? page,
    String? sort,
    int? totalRows,
    int? totalPages,
    List<Query$bookingReservations$bookingReservations$rows>? rows,
    String? $__typename,
  });
  TRes rows(
      Iterable<Query$bookingReservations$bookingReservations$rows> Function(
              Iterable<
                  CopyWith$Query$bookingReservations$bookingReservations$rows<
                      Query$bookingReservations$bookingReservations$rows>>)
          _fn);
}

class _CopyWithImpl$Query$bookingReservations$bookingReservations<TRes>
    implements CopyWith$Query$bookingReservations$bookingReservations<TRes> {
  _CopyWithImpl$Query$bookingReservations$bookingReservations(
    this._instance,
    this._then,
  );

  final Query$bookingReservations$bookingReservations _instance;

  final TRes Function(Query$bookingReservations$bookingReservations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? sort = _undefined,
    Object? totalRows = _undefined,
    Object? totalPages = _undefined,
    Object? rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservations$bookingReservations(
        limit: limit == _undefined ? _instance.limit : (limit as int?),
        page: page == _undefined ? _instance.page : (page as int?),
        sort: sort == _undefined ? _instance.sort : (sort as String?),
        totalRows:
            totalRows == _undefined ? _instance.totalRows : (totalRows as int?),
        totalPages: totalPages == _undefined
            ? _instance.totalPages
            : (totalPages as int?),
        rows: rows == _undefined || rows == null
            ? _instance.rows
            : (rows
                as List<Query$bookingReservations$bookingReservations$rows>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes rows(
          Iterable<Query$bookingReservations$bookingReservations$rows> Function(
                  Iterable<
                      CopyWith$Query$bookingReservations$bookingReservations$rows<
                          Query$bookingReservations$bookingReservations$rows>>)
              _fn) =>
      call(
          rows: _fn(_instance.rows.map((e) =>
              CopyWith$Query$bookingReservations$bookingReservations$rows(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$bookingReservations$bookingReservations<TRes>
    implements CopyWith$Query$bookingReservations$bookingReservations<TRes> {
  _CopyWithStubImpl$Query$bookingReservations$bookingReservations(this._res);

  TRes _res;

  call({
    int? limit,
    int? page,
    String? sort,
    int? totalRows,
    int? totalPages,
    List<Query$bookingReservations$bookingReservations$rows>? rows,
    String? $__typename,
  }) =>
      _res;
  rows(_fn) => _res;
}

class Query$bookingReservations$bookingReservations$rows {
  Query$bookingReservations$bookingReservations$rows({
    required this.id,
    this.$__typename = 'BookingReservation',
  });

  factory Query$bookingReservations$bookingReservations$rows.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingReservations$bookingReservations$rows(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingReservations$bookingReservations$rows) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingReservations$bookingReservations$rows
    on Query$bookingReservations$bookingReservations$rows {
  CopyWith$Query$bookingReservations$bookingReservations$rows<
          Query$bookingReservations$bookingReservations$rows>
      get copyWith =>
          CopyWith$Query$bookingReservations$bookingReservations$rows(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingReservations$bookingReservations$rows<
    TRes> {
  factory CopyWith$Query$bookingReservations$bookingReservations$rows(
    Query$bookingReservations$bookingReservations$rows instance,
    TRes Function(Query$bookingReservations$bookingReservations$rows) then,
  ) = _CopyWithImpl$Query$bookingReservations$bookingReservations$rows;

  factory CopyWith$Query$bookingReservations$bookingReservations$rows.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingReservations$bookingReservations$rows;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingReservations$bookingReservations$rows<TRes>
    implements
        CopyWith$Query$bookingReservations$bookingReservations$rows<TRes> {
  _CopyWithImpl$Query$bookingReservations$bookingReservations$rows(
    this._instance,
    this._then,
  );

  final Query$bookingReservations$bookingReservations$rows _instance;

  final TRes Function(Query$bookingReservations$bookingReservations$rows) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingReservations$bookingReservations$rows(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingReservations$bookingReservations$rows<TRes>
    implements
        CopyWith$Query$bookingReservations$bookingReservations$rows<TRes> {
  _CopyWithStubImpl$Query$bookingReservations$bookingReservations$rows(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$bookingTimeSlots {
  factory Variables$Query$bookingTimeSlots({
    required String branchId,
    int? day,
  }) =>
      Variables$Query$bookingTimeSlots._({
        r'branchId': branchId,
        if (day != null) r'day': day,
      });

  Variables$Query$bookingTimeSlots._(this._$data);

  factory Variables$Query$bookingTimeSlots.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$branchId = data['branchId'];
    result$data['branchId'] = (l$branchId as String);
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = (l$day as int?);
    }
    return Variables$Query$bookingTimeSlots._(result$data);
  }

  Map<String, dynamic> _$data;

  String get branchId => (_$data['branchId'] as String);
  int? get day => (_$data['day'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$branchId = branchId;
    result$data['branchId'] = l$branchId;
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day;
    }
    return result$data;
  }

  CopyWith$Variables$Query$bookingTimeSlots<Variables$Query$bookingTimeSlots>
      get copyWith => CopyWith$Variables$Query$bookingTimeSlots(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$bookingTimeSlots) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$branchId = branchId;
    final l$day = day;
    return Object.hashAll([
      l$branchId,
      _$data.containsKey('day') ? l$day : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$bookingTimeSlots<TRes> {
  factory CopyWith$Variables$Query$bookingTimeSlots(
    Variables$Query$bookingTimeSlots instance,
    TRes Function(Variables$Query$bookingTimeSlots) then,
  ) = _CopyWithImpl$Variables$Query$bookingTimeSlots;

  factory CopyWith$Variables$Query$bookingTimeSlots.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$bookingTimeSlots;

  TRes call({
    String? branchId,
    int? day,
  });
}

class _CopyWithImpl$Variables$Query$bookingTimeSlots<TRes>
    implements CopyWith$Variables$Query$bookingTimeSlots<TRes> {
  _CopyWithImpl$Variables$Query$bookingTimeSlots(
    this._instance,
    this._then,
  );

  final Variables$Query$bookingTimeSlots _instance;

  final TRes Function(Variables$Query$bookingTimeSlots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? branchId = _undefined,
    Object? day = _undefined,
  }) =>
      _then(Variables$Query$bookingTimeSlots._({
        ..._instance._$data,
        if (branchId != _undefined && branchId != null)
          'branchId': (branchId as String),
        if (day != _undefined) 'day': (day as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$bookingTimeSlots<TRes>
    implements CopyWith$Variables$Query$bookingTimeSlots<TRes> {
  _CopyWithStubImpl$Variables$Query$bookingTimeSlots(this._res);

  TRes _res;

  call({
    String? branchId,
    int? day,
  }) =>
      _res;
}

class Query$bookingTimeSlots {
  Query$bookingTimeSlots({
    required this.bookingTimeSlots,
    this.$__typename = 'Query',
  });

  factory Query$bookingTimeSlots.fromJson(Map<String, dynamic> json) {
    final l$bookingTimeSlots = json['bookingTimeSlots'];
    final l$$__typename = json['__typename'];
    return Query$bookingTimeSlots(
      bookingTimeSlots: (l$bookingTimeSlots as List<dynamic>)
          .map((e) => Query$bookingTimeSlots$bookingTimeSlots.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$bookingTimeSlots$bookingTimeSlots> bookingTimeSlots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingTimeSlots = bookingTimeSlots;
    _resultData['bookingTimeSlots'] =
        l$bookingTimeSlots.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingTimeSlots = bookingTimeSlots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bookingTimeSlots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingTimeSlots) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingTimeSlots = bookingTimeSlots;
    final lOther$bookingTimeSlots = other.bookingTimeSlots;
    if (l$bookingTimeSlots.length != lOther$bookingTimeSlots.length) {
      return false;
    }
    for (int i = 0; i < l$bookingTimeSlots.length; i++) {
      final l$bookingTimeSlots$entry = l$bookingTimeSlots[i];
      final lOther$bookingTimeSlots$entry = lOther$bookingTimeSlots[i];
      if (l$bookingTimeSlots$entry != lOther$bookingTimeSlots$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingTimeSlots on Query$bookingTimeSlots {
  CopyWith$Query$bookingTimeSlots<Query$bookingTimeSlots> get copyWith =>
      CopyWith$Query$bookingTimeSlots(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$bookingTimeSlots<TRes> {
  factory CopyWith$Query$bookingTimeSlots(
    Query$bookingTimeSlots instance,
    TRes Function(Query$bookingTimeSlots) then,
  ) = _CopyWithImpl$Query$bookingTimeSlots;

  factory CopyWith$Query$bookingTimeSlots.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingTimeSlots;

  TRes call({
    List<Query$bookingTimeSlots$bookingTimeSlots>? bookingTimeSlots,
    String? $__typename,
  });
  TRes bookingTimeSlots(
      Iterable<Query$bookingTimeSlots$bookingTimeSlots> Function(
              Iterable<
                  CopyWith$Query$bookingTimeSlots$bookingTimeSlots<
                      Query$bookingTimeSlots$bookingTimeSlots>>)
          _fn);
}

class _CopyWithImpl$Query$bookingTimeSlots<TRes>
    implements CopyWith$Query$bookingTimeSlots<TRes> {
  _CopyWithImpl$Query$bookingTimeSlots(
    this._instance,
    this._then,
  );

  final Query$bookingTimeSlots _instance;

  final TRes Function(Query$bookingTimeSlots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingTimeSlots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingTimeSlots(
        bookingTimeSlots:
            bookingTimeSlots == _undefined || bookingTimeSlots == null
                ? _instance.bookingTimeSlots
                : (bookingTimeSlots
                    as List<Query$bookingTimeSlots$bookingTimeSlots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bookingTimeSlots(
          Iterable<Query$bookingTimeSlots$bookingTimeSlots> Function(
                  Iterable<
                      CopyWith$Query$bookingTimeSlots$bookingTimeSlots<
                          Query$bookingTimeSlots$bookingTimeSlots>>)
              _fn) =>
      call(
          bookingTimeSlots: _fn(_instance.bookingTimeSlots
              .map((e) => CopyWith$Query$bookingTimeSlots$bookingTimeSlots(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$bookingTimeSlots<TRes>
    implements CopyWith$Query$bookingTimeSlots<TRes> {
  _CopyWithStubImpl$Query$bookingTimeSlots(this._res);

  TRes _res;

  call({
    List<Query$bookingTimeSlots$bookingTimeSlots>? bookingTimeSlots,
    String? $__typename,
  }) =>
      _res;
  bookingTimeSlots(_fn) => _res;
}

const documentNodeQuerybookingTimeSlots = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingTimeSlots'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'branchId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'day')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingTimeSlots'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'branchId'),
            value: VariableNode(name: NameNode(value: 'branchId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'day'),
            value: VariableNode(name: NameNode(value: 'day')),
          ),
        ],
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
            name: NameNode(value: 'reservationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'branchId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'day'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'endTime'),
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

class Query$bookingTimeSlots$bookingTimeSlots {
  Query$bookingTimeSlots$bookingTimeSlots({
    required this.id,
    required this.reservationId,
    required this.branchId,
    required this.day,
    required this.startTime,
    required this.endTime,
    this.$__typename = 'BookingTimeSlot',
  });

  factory Query$bookingTimeSlots$bookingTimeSlots.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$reservationId = json['reservationId'];
    final l$branchId = json['branchId'];
    final l$day = json['day'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$$__typename = json['__typename'];
    return Query$bookingTimeSlots$bookingTimeSlots(
      id: (l$id as String),
      reservationId: (l$reservationId as String),
      branchId: (l$branchId as String),
      day: (l$day as String),
      startTime: (l$startTime as int),
      endTime: (l$endTime as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String reservationId;

  final String branchId;

  final String day;

  final int startTime;

  final int endTime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$reservationId = reservationId;
    _resultData['reservationId'] = l$reservationId;
    final l$branchId = branchId;
    _resultData['branchId'] = l$branchId;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$startTime = startTime;
    _resultData['startTime'] = l$startTime;
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$reservationId = reservationId;
    final l$branchId = branchId;
    final l$day = day;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$reservationId,
      l$branchId,
      l$day,
      l$startTime,
      l$endTime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingTimeSlots$bookingTimeSlots) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$reservationId = reservationId;
    final lOther$reservationId = other.reservationId;
    if (l$reservationId != lOther$reservationId) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$endTime = endTime;
    final lOther$endTime = other.endTime;
    if (l$endTime != lOther$endTime) {
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

extension UtilityExtension$Query$bookingTimeSlots$bookingTimeSlots
    on Query$bookingTimeSlots$bookingTimeSlots {
  CopyWith$Query$bookingTimeSlots$bookingTimeSlots<
          Query$bookingTimeSlots$bookingTimeSlots>
      get copyWith => CopyWith$Query$bookingTimeSlots$bookingTimeSlots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingTimeSlots$bookingTimeSlots<TRes> {
  factory CopyWith$Query$bookingTimeSlots$bookingTimeSlots(
    Query$bookingTimeSlots$bookingTimeSlots instance,
    TRes Function(Query$bookingTimeSlots$bookingTimeSlots) then,
  ) = _CopyWithImpl$Query$bookingTimeSlots$bookingTimeSlots;

  factory CopyWith$Query$bookingTimeSlots$bookingTimeSlots.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingTimeSlots$bookingTimeSlots;

  TRes call({
    String? id,
    String? reservationId,
    String? branchId,
    String? day,
    int? startTime,
    int? endTime,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingTimeSlots$bookingTimeSlots<TRes>
    implements CopyWith$Query$bookingTimeSlots$bookingTimeSlots<TRes> {
  _CopyWithImpl$Query$bookingTimeSlots$bookingTimeSlots(
    this._instance,
    this._then,
  );

  final Query$bookingTimeSlots$bookingTimeSlots _instance;

  final TRes Function(Query$bookingTimeSlots$bookingTimeSlots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? reservationId = _undefined,
    Object? branchId = _undefined,
    Object? day = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingTimeSlots$bookingTimeSlots(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        reservationId: reservationId == _undefined || reservationId == null
            ? _instance.reservationId
            : (reservationId as String),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        day: day == _undefined || day == null ? _instance.day : (day as String),
        startTime: startTime == _undefined || startTime == null
            ? _instance.startTime
            : (startTime as int),
        endTime: endTime == _undefined || endTime == null
            ? _instance.endTime
            : (endTime as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingTimeSlots$bookingTimeSlots<TRes>
    implements CopyWith$Query$bookingTimeSlots$bookingTimeSlots<TRes> {
  _CopyWithStubImpl$Query$bookingTimeSlots$bookingTimeSlots(this._res);

  TRes _res;

  call({
    String? id,
    String? reservationId,
    String? branchId,
    String? day,
    int? startTime,
    int? endTime,
    String? $__typename,
  }) =>
      _res;
}

class Query$settingGroups {
  Query$settingGroups({
    required this.settingGroups,
    this.$__typename = 'Query',
  });

  factory Query$settingGroups.fromJson(Map<String, dynamic> json) {
    final l$settingGroups = json['settingGroups'];
    final l$$__typename = json['__typename'];
    return Query$settingGroups(
      settingGroups: (l$settingGroups as List<dynamic>)
          .map((e) => Query$settingGroups$settingGroups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$settingGroups$settingGroups> settingGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$settingGroups = settingGroups;
    _resultData['settingGroups'] =
        l$settingGroups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$settingGroups = settingGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$settingGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$settingGroups) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$settingGroups = settingGroups;
    final lOther$settingGroups = other.settingGroups;
    if (l$settingGroups.length != lOther$settingGroups.length) {
      return false;
    }
    for (int i = 0; i < l$settingGroups.length; i++) {
      final l$settingGroups$entry = l$settingGroups[i];
      final lOther$settingGroups$entry = lOther$settingGroups[i];
      if (l$settingGroups$entry != lOther$settingGroups$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$settingGroups on Query$settingGroups {
  CopyWith$Query$settingGroups<Query$settingGroups> get copyWith =>
      CopyWith$Query$settingGroups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$settingGroups<TRes> {
  factory CopyWith$Query$settingGroups(
    Query$settingGroups instance,
    TRes Function(Query$settingGroups) then,
  ) = _CopyWithImpl$Query$settingGroups;

  factory CopyWith$Query$settingGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$settingGroups;

  TRes call({
    List<Query$settingGroups$settingGroups>? settingGroups,
    String? $__typename,
  });
  TRes settingGroups(
      Iterable<Query$settingGroups$settingGroups> Function(
              Iterable<
                  CopyWith$Query$settingGroups$settingGroups<
                      Query$settingGroups$settingGroups>>)
          _fn);
}

class _CopyWithImpl$Query$settingGroups<TRes>
    implements CopyWith$Query$settingGroups<TRes> {
  _CopyWithImpl$Query$settingGroups(
    this._instance,
    this._then,
  );

  final Query$settingGroups _instance;

  final TRes Function(Query$settingGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? settingGroups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$settingGroups(
        settingGroups: settingGroups == _undefined || settingGroups == null
            ? _instance.settingGroups
            : (settingGroups as List<Query$settingGroups$settingGroups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes settingGroups(
          Iterable<Query$settingGroups$settingGroups> Function(
                  Iterable<
                      CopyWith$Query$settingGroups$settingGroups<
                          Query$settingGroups$settingGroups>>)
              _fn) =>
      call(
          settingGroups: _fn(_instance.settingGroups
              .map((e) => CopyWith$Query$settingGroups$settingGroups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$settingGroups<TRes>
    implements CopyWith$Query$settingGroups<TRes> {
  _CopyWithStubImpl$Query$settingGroups(this._res);

  TRes _res;

  call({
    List<Query$settingGroups$settingGroups>? settingGroups,
    String? $__typename,
  }) =>
      _res;
  settingGroups(_fn) => _res;
}

const documentNodeQuerysettingGroups = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'settingGroups'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'settingGroups'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'key'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name_en'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name_ar'),
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

class Query$settingGroups$settingGroups {
  Query$settingGroups$settingGroups({
    required this.key,
    required this.name_en,
    required this.name_ar,
    this.$__typename = 'SettingGroup',
  });

  factory Query$settingGroups$settingGroups.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$name_en = json['name_en'];
    final l$name_ar = json['name_ar'];
    final l$$__typename = json['__typename'];
    return Query$settingGroups$settingGroups(
      key: (l$key as String),
      name_en: (l$name_en as String),
      name_ar: (l$name_ar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String name_en;

  final String name_ar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name_en = name_en;
    _resultData['name_en'] = l$name_en;
    final l$name_ar = name_ar;
    _resultData['name_ar'] = l$name_ar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$name_en = name_en;
    final l$name_ar = name_ar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$name_en,
      l$name_ar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$settingGroups$settingGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name_en = name_en;
    final lOther$name_en = other.name_en;
    if (l$name_en != lOther$name_en) {
      return false;
    }
    final l$name_ar = name_ar;
    final lOther$name_ar = other.name_ar;
    if (l$name_ar != lOther$name_ar) {
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

extension UtilityExtension$Query$settingGroups$settingGroups
    on Query$settingGroups$settingGroups {
  CopyWith$Query$settingGroups$settingGroups<Query$settingGroups$settingGroups>
      get copyWith => CopyWith$Query$settingGroups$settingGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$settingGroups$settingGroups<TRes> {
  factory CopyWith$Query$settingGroups$settingGroups(
    Query$settingGroups$settingGroups instance,
    TRes Function(Query$settingGroups$settingGroups) then,
  ) = _CopyWithImpl$Query$settingGroups$settingGroups;

  factory CopyWith$Query$settingGroups$settingGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$settingGroups$settingGroups;

  TRes call({
    String? key,
    String? name_en,
    String? name_ar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$settingGroups$settingGroups<TRes>
    implements CopyWith$Query$settingGroups$settingGroups<TRes> {
  _CopyWithImpl$Query$settingGroups$settingGroups(
    this._instance,
    this._then,
  );

  final Query$settingGroups$settingGroups _instance;

  final TRes Function(Query$settingGroups$settingGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? name_en = _undefined,
    Object? name_ar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$settingGroups$settingGroups(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        name_en: name_en == _undefined || name_en == null
            ? _instance.name_en
            : (name_en as String),
        name_ar: name_ar == _undefined || name_ar == null
            ? _instance.name_ar
            : (name_ar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$settingGroups$settingGroups<TRes>
    implements CopyWith$Query$settingGroups$settingGroups<TRes> {
  _CopyWithStubImpl$Query$settingGroups$settingGroups(this._res);

  TRes _res;

  call({
    String? key,
    String? name_en,
    String? name_ar,
    String? $__typename,
  }) =>
      _res;
}

class Query$settings {
  Query$settings({
    required this.settings,
    this.$__typename = 'Query',
  });

  factory Query$settings.fromJson(Map<String, dynamic> json) {
    final l$settings = json['settings'];
    final l$$__typename = json['__typename'];
    return Query$settings(
      settings: (l$settings as List<dynamic>)
          .map((e) =>
              Query$settings$settings.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$settings$settings> settings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$settings = settings;
    _resultData['settings'] = l$settings.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$settings.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$settings) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings.length != lOther$settings.length) {
      return false;
    }
    for (int i = 0; i < l$settings.length; i++) {
      final l$settings$entry = l$settings[i];
      final lOther$settings$entry = lOther$settings[i];
      if (l$settings$entry != lOther$settings$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$settings on Query$settings {
  CopyWith$Query$settings<Query$settings> get copyWith =>
      CopyWith$Query$settings(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$settings<TRes> {
  factory CopyWith$Query$settings(
    Query$settings instance,
    TRes Function(Query$settings) then,
  ) = _CopyWithImpl$Query$settings;

  factory CopyWith$Query$settings.stub(TRes res) =
      _CopyWithStubImpl$Query$settings;

  TRes call({
    List<Query$settings$settings>? settings,
    String? $__typename,
  });
  TRes settings(
      Iterable<Query$settings$settings> Function(
              Iterable<
                  CopyWith$Query$settings$settings<Query$settings$settings>>)
          _fn);
}

class _CopyWithImpl$Query$settings<TRes>
    implements CopyWith$Query$settings<TRes> {
  _CopyWithImpl$Query$settings(
    this._instance,
    this._then,
  );

  final Query$settings _instance;

  final TRes Function(Query$settings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? settings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$settings(
        settings: settings == _undefined || settings == null
            ? _instance.settings
            : (settings as List<Query$settings$settings>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes settings(
          Iterable<Query$settings$settings> Function(
                  Iterable<
                      CopyWith$Query$settings$settings<
                          Query$settings$settings>>)
              _fn) =>
      call(
          settings: _fn(
              _instance.settings.map((e) => CopyWith$Query$settings$settings(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$settings<TRes>
    implements CopyWith$Query$settings<TRes> {
  _CopyWithStubImpl$Query$settings(this._res);

  TRes _res;

  call({
    List<Query$settings$settings>? settings,
    String? $__typename,
  }) =>
      _res;
  settings(_fn) => _res;
}

const documentNodeQuerysettings = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'settings'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'settings'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'key'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name_en'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name_ar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description_en'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description_ar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'group'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'component'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiable'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'value'),
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

class Query$settings$settings {
  Query$settings$settings({
    required this.key,
    required this.name_en,
    required this.name_ar,
    this.description_en,
    this.description_ar,
    this.group,
    required this.type,
    required this.component,
    required this.modifiable,
    required this.value,
    this.$__typename = 'Setting',
  });

  factory Query$settings$settings.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$name_en = json['name_en'];
    final l$name_ar = json['name_ar'];
    final l$description_en = json['description_en'];
    final l$description_ar = json['description_ar'];
    final l$group = json['group'];
    final l$type = json['type'];
    final l$component = json['component'];
    final l$modifiable = json['modifiable'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$settings$settings(
      key: (l$key as String),
      name_en: (l$name_en as String),
      name_ar: (l$name_ar as String),
      description_en: (l$description_en as String?),
      description_ar: (l$description_ar as String?),
      group: (l$group as String?),
      type: (l$type as String),
      component: (l$component as String),
      modifiable: (l$modifiable as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String name_en;

  final String name_ar;

  final String? description_en;

  final String? description_ar;

  final String? group;

  final String type;

  final String component;

  final bool modifiable;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name_en = name_en;
    _resultData['name_en'] = l$name_en;
    final l$name_ar = name_ar;
    _resultData['name_ar'] = l$name_ar;
    final l$description_en = description_en;
    _resultData['description_en'] = l$description_en;
    final l$description_ar = description_ar;
    _resultData['description_ar'] = l$description_ar;
    final l$group = group;
    _resultData['group'] = l$group;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$component = component;
    _resultData['component'] = l$component;
    final l$modifiable = modifiable;
    _resultData['modifiable'] = l$modifiable;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$name_en = name_en;
    final l$name_ar = name_ar;
    final l$description_en = description_en;
    final l$description_ar = description_ar;
    final l$group = group;
    final l$type = type;
    final l$component = component;
    final l$modifiable = modifiable;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$name_en,
      l$name_ar,
      l$description_en,
      l$description_ar,
      l$group,
      l$type,
      l$component,
      l$modifiable,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$settings$settings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name_en = name_en;
    final lOther$name_en = other.name_en;
    if (l$name_en != lOther$name_en) {
      return false;
    }
    final l$name_ar = name_ar;
    final lOther$name_ar = other.name_ar;
    if (l$name_ar != lOther$name_ar) {
      return false;
    }
    final l$description_en = description_en;
    final lOther$description_en = other.description_en;
    if (l$description_en != lOther$description_en) {
      return false;
    }
    final l$description_ar = description_ar;
    final lOther$description_ar = other.description_ar;
    if (l$description_ar != lOther$description_ar) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$component = component;
    final lOther$component = other.component;
    if (l$component != lOther$component) {
      return false;
    }
    final l$modifiable = modifiable;
    final lOther$modifiable = other.modifiable;
    if (l$modifiable != lOther$modifiable) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$settings$settings on Query$settings$settings {
  CopyWith$Query$settings$settings<Query$settings$settings> get copyWith =>
      CopyWith$Query$settings$settings(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$settings$settings<TRes> {
  factory CopyWith$Query$settings$settings(
    Query$settings$settings instance,
    TRes Function(Query$settings$settings) then,
  ) = _CopyWithImpl$Query$settings$settings;

  factory CopyWith$Query$settings$settings.stub(TRes res) =
      _CopyWithStubImpl$Query$settings$settings;

  TRes call({
    String? key,
    String? name_en,
    String? name_ar,
    String? description_en,
    String? description_ar,
    String? group,
    String? type,
    String? component,
    bool? modifiable,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$settings$settings<TRes>
    implements CopyWith$Query$settings$settings<TRes> {
  _CopyWithImpl$Query$settings$settings(
    this._instance,
    this._then,
  );

  final Query$settings$settings _instance;

  final TRes Function(Query$settings$settings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? name_en = _undefined,
    Object? name_ar = _undefined,
    Object? description_en = _undefined,
    Object? description_ar = _undefined,
    Object? group = _undefined,
    Object? type = _undefined,
    Object? component = _undefined,
    Object? modifiable = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$settings$settings(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        name_en: name_en == _undefined || name_en == null
            ? _instance.name_en
            : (name_en as String),
        name_ar: name_ar == _undefined || name_ar == null
            ? _instance.name_ar
            : (name_ar as String),
        description_en: description_en == _undefined
            ? _instance.description_en
            : (description_en as String?),
        description_ar: description_ar == _undefined
            ? _instance.description_ar
            : (description_ar as String?),
        group: group == _undefined ? _instance.group : (group as String?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        component: component == _undefined || component == null
            ? _instance.component
            : (component as String),
        modifiable: modifiable == _undefined || modifiable == null
            ? _instance.modifiable
            : (modifiable as bool),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$settings$settings<TRes>
    implements CopyWith$Query$settings$settings<TRes> {
  _CopyWithStubImpl$Query$settings$settings(this._res);

  TRes _res;

  call({
    String? key,
    String? name_en,
    String? name_ar,
    String? description_en,
    String? description_ar,
    String? group,
    String? type,
    String? component,
    bool? modifiable,
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$users {
  factory Variables$Query$users({
    int? limit,
    int? page,
    String? role,
  }) =>
      Variables$Query$users._({
        if (limit != null) r'limit': limit,
        if (page != null) r'page': page,
        if (role != null) r'role': role,
      });

  Variables$Query$users._(this._$data);

  factory Variables$Query$users.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = (l$role as String?);
    }
    return Variables$Query$users._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  int? get page => (_$data['page'] as int?);
  String? get role => (_$data['role'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role;
    }
    return result$data;
  }

  CopyWith$Variables$Query$users<Variables$Query$users> get copyWith =>
      CopyWith$Variables$Query$users(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$role = role;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('role') ? l$role : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$users<TRes> {
  factory CopyWith$Variables$Query$users(
    Variables$Query$users instance,
    TRes Function(Variables$Query$users) then,
  ) = _CopyWithImpl$Variables$Query$users;

  factory CopyWith$Variables$Query$users.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$users;

  TRes call({
    int? limit,
    int? page,
    String? role,
  });
}

class _CopyWithImpl$Variables$Query$users<TRes>
    implements CopyWith$Variables$Query$users<TRes> {
  _CopyWithImpl$Variables$Query$users(
    this._instance,
    this._then,
  );

  final Variables$Query$users _instance;

  final TRes Function(Variables$Query$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? role = _undefined,
  }) =>
      _then(Variables$Query$users._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (page != _undefined) 'page': (page as int?),
        if (role != _undefined) 'role': (role as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$users<TRes>
    implements CopyWith$Variables$Query$users<TRes> {
  _CopyWithStubImpl$Variables$Query$users(this._res);

  TRes _res;

  call({
    int? limit,
    int? page,
    String? role,
  }) =>
      _res;
}

class Query$users {
  Query$users({
    required this.users,
    this.$__typename = 'Query',
  });

  factory Query$users.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$users(
      users: Query$users$users.fromJson((l$users as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$users$users users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$users,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) {
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

extension UtilityExtension$Query$users on Query$users {
  CopyWith$Query$users<Query$users> get copyWith => CopyWith$Query$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$users<TRes> {
  factory CopyWith$Query$users(
    Query$users instance,
    TRes Function(Query$users) then,
  ) = _CopyWithImpl$Query$users;

  factory CopyWith$Query$users.stub(TRes res) = _CopyWithStubImpl$Query$users;

  TRes call({
    Query$users$users? users,
    String? $__typename,
  });
  CopyWith$Query$users$users<TRes> get users;
}

class _CopyWithImpl$Query$users<TRes> implements CopyWith$Query$users<TRes> {
  _CopyWithImpl$Query$users(
    this._instance,
    this._then,
  );

  final Query$users _instance;

  final TRes Function(Query$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$users(
        users: users == _undefined || users == null
            ? _instance.users
            : (users as Query$users$users),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$users$users<TRes> get users {
    final local$users = _instance.users;
    return CopyWith$Query$users$users(local$users, (e) => call(users: e));
  }
}

class _CopyWithStubImpl$Query$users<TRes>
    implements CopyWith$Query$users<TRes> {
  _CopyWithStubImpl$Query$users(this._res);

  TRes _res;

  call({
    Query$users$users? users,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$users$users<TRes> get users =>
      CopyWith$Query$users$users.stub(_res);
}

const documentNodeQueryusers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'users'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'role')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'role'),
            value: VariableNode(name: NameNode(value: 'role')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'limit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'page'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sort'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalRows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalPages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rows'),
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

class Query$users$users {
  Query$users$users({
    this.limit,
    this.page,
    this.sort,
    this.totalRows,
    this.totalPages,
    required this.rows,
    this.$__typename = 'UserPagination',
  });

  factory Query$users$users.fromJson(Map<String, dynamic> json) {
    final l$limit = json['limit'];
    final l$page = json['page'];
    final l$sort = json['sort'];
    final l$totalRows = json['totalRows'];
    final l$totalPages = json['totalPages'];
    final l$rows = json['rows'];
    final l$$__typename = json['__typename'];
    return Query$users$users(
      limit: (l$limit as int?),
      page: (l$page as int?),
      sort: (l$sort as String?),
      totalRows: (l$totalRows as int?),
      totalPages: (l$totalPages as int?),
      rows: (l$rows as List<dynamic>)
          .map((e) =>
              Query$users$users$rows.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? limit;

  final int? page;

  final String? sort;

  final int? totalRows;

  final int? totalPages;

  final List<Query$users$users$rows> rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$sort = sort;
    _resultData['sort'] = l$sort;
    final l$totalRows = totalRows;
    _resultData['totalRows'] = l$totalRows;
    final l$totalPages = totalPages;
    _resultData['totalPages'] = l$totalPages;
    final l$rows = rows;
    _resultData['rows'] = l$rows.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$sort = sort;
    final l$totalRows = totalRows;
    final l$totalPages = totalPages;
    final l$rows = rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$limit,
      l$page,
      l$sort,
      l$totalRows,
      l$totalPages,
      Object.hashAll(l$rows.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$users$users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) {
      return false;
    }
    final l$totalRows = totalRows;
    final lOther$totalRows = other.totalRows;
    if (l$totalRows != lOther$totalRows) {
      return false;
    }
    final l$totalPages = totalPages;
    final lOther$totalPages = other.totalPages;
    if (l$totalPages != lOther$totalPages) {
      return false;
    }
    final l$rows = rows;
    final lOther$rows = other.rows;
    if (l$rows.length != lOther$rows.length) {
      return false;
    }
    for (int i = 0; i < l$rows.length; i++) {
      final l$rows$entry = l$rows[i];
      final lOther$rows$entry = lOther$rows[i];
      if (l$rows$entry != lOther$rows$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$users$users on Query$users$users {
  CopyWith$Query$users$users<Query$users$users> get copyWith =>
      CopyWith$Query$users$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$users$users<TRes> {
  factory CopyWith$Query$users$users(
    Query$users$users instance,
    TRes Function(Query$users$users) then,
  ) = _CopyWithImpl$Query$users$users;

  factory CopyWith$Query$users$users.stub(TRes res) =
      _CopyWithStubImpl$Query$users$users;

  TRes call({
    int? limit,
    int? page,
    String? sort,
    int? totalRows,
    int? totalPages,
    List<Query$users$users$rows>? rows,
    String? $__typename,
  });
  TRes rows(
      Iterable<Query$users$users$rows> Function(
              Iterable<CopyWith$Query$users$users$rows<Query$users$users$rows>>)
          _fn);
}

class _CopyWithImpl$Query$users$users<TRes>
    implements CopyWith$Query$users$users<TRes> {
  _CopyWithImpl$Query$users$users(
    this._instance,
    this._then,
  );

  final Query$users$users _instance;

  final TRes Function(Query$users$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? sort = _undefined,
    Object? totalRows = _undefined,
    Object? totalPages = _undefined,
    Object? rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$users$users(
        limit: limit == _undefined ? _instance.limit : (limit as int?),
        page: page == _undefined ? _instance.page : (page as int?),
        sort: sort == _undefined ? _instance.sort : (sort as String?),
        totalRows:
            totalRows == _undefined ? _instance.totalRows : (totalRows as int?),
        totalPages: totalPages == _undefined
            ? _instance.totalPages
            : (totalPages as int?),
        rows: rows == _undefined || rows == null
            ? _instance.rows
            : (rows as List<Query$users$users$rows>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes rows(
          Iterable<Query$users$users$rows> Function(
                  Iterable<
                      CopyWith$Query$users$users$rows<Query$users$users$rows>>)
              _fn) =>
      call(
          rows: _fn(_instance.rows.map((e) => CopyWith$Query$users$users$rows(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$users$users<TRes>
    implements CopyWith$Query$users$users<TRes> {
  _CopyWithStubImpl$Query$users$users(this._res);

  TRes _res;

  call({
    int? limit,
    int? page,
    String? sort,
    int? totalRows,
    int? totalPages,
    List<Query$users$users$rows>? rows,
    String? $__typename,
  }) =>
      _res;
  rows(_fn) => _res;
}

class Query$users$users$rows {
  Query$users$users$rows({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$users$users$rows.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$users$users$rows(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$users$users$rows) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$users$users$rows on Query$users$users$rows {
  CopyWith$Query$users$users$rows<Query$users$users$rows> get copyWith =>
      CopyWith$Query$users$users$rows(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$users$users$rows<TRes> {
  factory CopyWith$Query$users$users$rows(
    Query$users$users$rows instance,
    TRes Function(Query$users$users$rows) then,
  ) = _CopyWithImpl$Query$users$users$rows;

  factory CopyWith$Query$users$users$rows.stub(TRes res) =
      _CopyWithStubImpl$Query$users$users$rows;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$users$users$rows<TRes>
    implements CopyWith$Query$users$users$rows<TRes> {
  _CopyWithImpl$Query$users$users$rows(
    this._instance,
    this._then,
  );

  final Query$users$users$rows _instance;

  final TRes Function(Query$users$users$rows) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$users$users$rows(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$users$users$rows<TRes>
    implements CopyWith$Query$users$users$rows<TRes> {
  _CopyWithStubImpl$Query$users$users$rows(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$bookingCurrentReservations {
  Query$bookingCurrentReservations({
    required this.bookingCurrentReservations,
    this.$__typename = 'Query',
  });

  factory Query$bookingCurrentReservations.fromJson(Map<String, dynamic> json) {
    final l$bookingCurrentReservations = json['bookingCurrentReservations'];
    final l$$__typename = json['__typename'];
    return Query$bookingCurrentReservations(
      bookingCurrentReservations:
          (l$bookingCurrentReservations as List<dynamic>)
              .map((e) =>
                  Query$bookingCurrentReservations$bookingCurrentReservations
                      .fromJson((e as Map<String, dynamic>)))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$bookingCurrentReservations$bookingCurrentReservations>
      bookingCurrentReservations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bookingCurrentReservations = bookingCurrentReservations;
    _resultData['bookingCurrentReservations'] =
        l$bookingCurrentReservations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bookingCurrentReservations = bookingCurrentReservations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bookingCurrentReservations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$bookingCurrentReservations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookingCurrentReservations = bookingCurrentReservations;
    final lOther$bookingCurrentReservations = other.bookingCurrentReservations;
    if (l$bookingCurrentReservations.length !=
        lOther$bookingCurrentReservations.length) {
      return false;
    }
    for (int i = 0; i < l$bookingCurrentReservations.length; i++) {
      final l$bookingCurrentReservations$entry =
          l$bookingCurrentReservations[i];
      final lOther$bookingCurrentReservations$entry =
          lOther$bookingCurrentReservations[i];
      if (l$bookingCurrentReservations$entry !=
          lOther$bookingCurrentReservations$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingCurrentReservations
    on Query$bookingCurrentReservations {
  CopyWith$Query$bookingCurrentReservations<Query$bookingCurrentReservations>
      get copyWith => CopyWith$Query$bookingCurrentReservations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCurrentReservations<TRes> {
  factory CopyWith$Query$bookingCurrentReservations(
    Query$bookingCurrentReservations instance,
    TRes Function(Query$bookingCurrentReservations) then,
  ) = _CopyWithImpl$Query$bookingCurrentReservations;

  factory CopyWith$Query$bookingCurrentReservations.stub(TRes res) =
      _CopyWithStubImpl$Query$bookingCurrentReservations;

  TRes call({
    List<Query$bookingCurrentReservations$bookingCurrentReservations>?
        bookingCurrentReservations,
    String? $__typename,
  });
  TRes bookingCurrentReservations(
      Iterable<Query$bookingCurrentReservations$bookingCurrentReservations> Function(
              Iterable<
                  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations<
                      Query$bookingCurrentReservations$bookingCurrentReservations>>)
          _fn);
}

class _CopyWithImpl$Query$bookingCurrentReservations<TRes>
    implements CopyWith$Query$bookingCurrentReservations<TRes> {
  _CopyWithImpl$Query$bookingCurrentReservations(
    this._instance,
    this._then,
  );

  final Query$bookingCurrentReservations _instance;

  final TRes Function(Query$bookingCurrentReservations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookingCurrentReservations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCurrentReservations(
        bookingCurrentReservations: bookingCurrentReservations == _undefined ||
                bookingCurrentReservations == null
            ? _instance.bookingCurrentReservations
            : (bookingCurrentReservations as List<
                Query$bookingCurrentReservations$bookingCurrentReservations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bookingCurrentReservations(
          Iterable<Query$bookingCurrentReservations$bookingCurrentReservations> Function(
                  Iterable<
                      CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations<
                          Query$bookingCurrentReservations$bookingCurrentReservations>>)
              _fn) =>
      call(
          bookingCurrentReservations: _fn(_instance.bookingCurrentReservations
              .map((e) =>
                  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$bookingCurrentReservations<TRes>
    implements CopyWith$Query$bookingCurrentReservations<TRes> {
  _CopyWithStubImpl$Query$bookingCurrentReservations(this._res);

  TRes _res;

  call({
    List<Query$bookingCurrentReservations$bookingCurrentReservations>?
        bookingCurrentReservations,
    String? $__typename,
  }) =>
      _res;
  bookingCurrentReservations(_fn) => _res;
}

const documentNodeQuerybookingCurrentReservations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'bookingCurrentReservations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookingCurrentReservations'),
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
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'branchId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'branch'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'serviceId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'channel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'queueNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
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

class Query$bookingCurrentReservations$bookingCurrentReservations {
  Query$bookingCurrentReservations$bookingCurrentReservations({
    required this.id,
    required this.userId,
    required this.user,
    required this.branchId,
    required this.branch,
    required this.serviceId,
    required this.service,
    required this.channel,
    required this.date,
    required this.time,
    this.queueNumber,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'BookingReservation',
  });

  factory Query$bookingCurrentReservations$bookingCurrentReservations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$branchId = json['branchId'];
    final l$branch = json['branch'];
    final l$serviceId = json['serviceId'];
    final l$service = json['service'];
    final l$channel = json['channel'];
    final l$date = json['date'];
    final l$time = json['time'];
    final l$queueNumber = json['queueNumber'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$bookingCurrentReservations$bookingCurrentReservations(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Query$bookingCurrentReservations$bookingCurrentReservations$user
          .fromJson((l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String),
      branch: Query$bookingCurrentReservations$bookingCurrentReservations$branch
          .fromJson((l$branch as Map<String, dynamic>)),
      serviceId: (l$serviceId as String),
      service:
          Query$bookingCurrentReservations$bookingCurrentReservations$service
              .fromJson((l$service as Map<String, dynamic>)),
      channel: (l$channel as String),
      date: (l$date as int),
      time: (l$time as int),
      queueNumber: (l$queueNumber as int?),
      status: fromJson$Enum$BookingReservationStatus((l$status as String)),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Query$bookingCurrentReservations$bookingCurrentReservations$user user;

  final String branchId;

  final Query$bookingCurrentReservations$bookingCurrentReservations$branch
      branch;

  final String serviceId;

  final Query$bookingCurrentReservations$bookingCurrentReservations$service
      service;

  final String channel;

  final int date;

  final int time;

  final int? queueNumber;

  final Enum$BookingReservationStatus status;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    _resultData['branchId'] = l$branchId;
    final l$branch = branch;
    _resultData['branch'] = l$branch.toJson();
    final l$serviceId = serviceId;
    _resultData['serviceId'] = l$serviceId;
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$channel = channel;
    _resultData['channel'] = l$channel;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$time = time;
    _resultData['time'] = l$time;
    final l$queueNumber = queueNumber;
    _resultData['queueNumber'] = l$queueNumber;
    final l$status = status;
    _resultData['status'] = toJson$Enum$BookingReservationStatus(l$status);
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
    final l$userId = userId;
    final l$user = user;
    final l$branchId = branchId;
    final l$branch = branch;
    final l$serviceId = serviceId;
    final l$service = service;
    final l$channel = channel;
    final l$date = date;
    final l$time = time;
    final l$queueNumber = queueNumber;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$user,
      l$branchId,
      l$branch,
      l$serviceId,
      l$service,
      l$channel,
      l$date,
      l$time,
      l$queueNumber,
      l$status,
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
    if (!(other
            is Query$bookingCurrentReservations$bookingCurrentReservations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$branch = branch;
    final lOther$branch = other.branch;
    if (l$branch != lOther$branch) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$channel = channel;
    final lOther$channel = other.channel;
    if (l$channel != lOther$channel) {
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
    final l$queueNumber = queueNumber;
    final lOther$queueNumber = other.queueNumber;
    if (l$queueNumber != lOther$queueNumber) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$bookingCurrentReservations$bookingCurrentReservations
    on Query$bookingCurrentReservations$bookingCurrentReservations {
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations<
          Query$bookingCurrentReservations$bookingCurrentReservations>
      get copyWith =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations<
    TRes> {
  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations(
    Query$bookingCurrentReservations$bookingCurrentReservations instance,
    TRes Function(Query$bookingCurrentReservations$bookingCurrentReservations)
        then,
  ) = _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations;

  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations;

  TRes call({
    String? id,
    String? userId,
    Query$bookingCurrentReservations$bookingCurrentReservations$user? user,
    String? branchId,
    Query$bookingCurrentReservations$bookingCurrentReservations$branch? branch,
    String? serviceId,
    Query$bookingCurrentReservations$bookingCurrentReservations$service?
        service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
      TRes> get user;
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
      TRes> get branch;
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
      TRes> get service;
}

class _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations<
            TRes> {
  _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations(
    this._instance,
    this._then,
  );

  final Query$bookingCurrentReservations$bookingCurrentReservations _instance;

  final TRes Function(
      Query$bookingCurrentReservations$bookingCurrentReservations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? branchId = _undefined,
    Object? branch = _undefined,
    Object? serviceId = _undefined,
    Object? service = _undefined,
    Object? channel = _undefined,
    Object? date = _undefined,
    Object? time = _undefined,
    Object? queueNumber = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCurrentReservations$bookingCurrentReservations(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user
                as Query$bookingCurrentReservations$bookingCurrentReservations$user),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch
                as Query$bookingCurrentReservations$bookingCurrentReservations$branch),
        serviceId: serviceId == _undefined || serviceId == null
            ? _instance.serviceId
            : (serviceId as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$bookingCurrentReservations$bookingCurrentReservations$service),
        channel: channel == _undefined || channel == null
            ? _instance.channel
            : (channel as String),
        date:
            date == _undefined || date == null ? _instance.date : (date as int),
        time:
            time == _undefined || time == null ? _instance.time : (time as int),
        queueNumber: queueNumber == _undefined
            ? _instance.queueNumber
            : (queueNumber as int?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$BookingReservationStatus),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
      TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user(
        local$user, (e) => call(user: e));
  }

  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
      TRes> get branch {
    final local$branch = _instance.branch;
    return CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch(
        local$branch, (e) => call(branch: e));
  }

  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations<
            TRes> {
  _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations(
      this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Query$bookingCurrentReservations$bookingCurrentReservations$user? user,
    String? branchId,
    Query$bookingCurrentReservations$bookingCurrentReservations$branch? branch,
    String? serviceId,
    Query$bookingCurrentReservations$bookingCurrentReservations$service?
        service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
          TRes>
      get user =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user
              .stub(_res);
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
          TRes>
      get branch =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch
              .stub(_res);
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
          TRes>
      get service =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service
              .stub(_res);
}

class Query$bookingCurrentReservations$bookingCurrentReservations$user {
  Query$bookingCurrentReservations$bookingCurrentReservations$user();

  factory Query$bookingCurrentReservations$bookingCurrentReservations$user.fromJson(
      Map<String, dynamic> json) {
    return Query$bookingCurrentReservations$bookingCurrentReservations$user();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$bookingCurrentReservations$bookingCurrentReservations$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$bookingCurrentReservations$bookingCurrentReservations$user
    on Query$bookingCurrentReservations$bookingCurrentReservations$user {
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
          Query$bookingCurrentReservations$bookingCurrentReservations$user>
      get copyWith =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
    TRes> {
  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user(
    Query$bookingCurrentReservations$bookingCurrentReservations$user instance,
    TRes Function(
            Query$bookingCurrentReservations$bookingCurrentReservations$user)
        then,
  ) = _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$user;

  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$user;

  TRes call();
}

class _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$user<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
            TRes> {
  _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$user(
    this._instance,
    this._then,
  );

  final Query$bookingCurrentReservations$bookingCurrentReservations$user
      _instance;

  final TRes Function(
      Query$bookingCurrentReservations$bookingCurrentReservations$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() =>
      _then(Query$bookingCurrentReservations$bookingCurrentReservations$user());
}

class _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$user<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$user<
            TRes> {
  _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$user(
      this._res);

  TRes _res;

  call() => _res;
}

class Query$bookingCurrentReservations$bookingCurrentReservations$branch {
  Query$bookingCurrentReservations$bookingCurrentReservations$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Query$bookingCurrentReservations$bookingCurrentReservations$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingCurrentReservations$bookingCurrentReservations$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$bookingCurrentReservations$bookingCurrentReservations$branch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingCurrentReservations$bookingCurrentReservations$branch
    on Query$bookingCurrentReservations$bookingCurrentReservations$branch {
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
          Query$bookingCurrentReservations$bookingCurrentReservations$branch>
      get copyWith =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
    TRes> {
  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch(
    Query$bookingCurrentReservations$bookingCurrentReservations$branch instance,
    TRes Function(
            Query$bookingCurrentReservations$bookingCurrentReservations$branch)
        then,
  ) = _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$branch;

  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
            TRes> {
  _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$branch(
    this._instance,
    this._then,
  );

  final Query$bookingCurrentReservations$bookingCurrentReservations$branch
      _instance;

  final TRes Function(
      Query$bookingCurrentReservations$bookingCurrentReservations$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCurrentReservations$bookingCurrentReservations$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$branch<
            TRes> {
  _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$branch(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$bookingCurrentReservations$bookingCurrentReservations$service {
  Query$bookingCurrentReservations$bookingCurrentReservations$service({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Query$bookingCurrentReservations$bookingCurrentReservations$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$bookingCurrentReservations$bookingCurrentReservations$service(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$bookingCurrentReservations$bookingCurrentReservations$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$bookingCurrentReservations$bookingCurrentReservations$service
    on Query$bookingCurrentReservations$bookingCurrentReservations$service {
  CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
          Query$bookingCurrentReservations$bookingCurrentReservations$service>
      get copyWith =>
          CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
    TRes> {
  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service(
    Query$bookingCurrentReservations$bookingCurrentReservations$service
        instance,
    TRes Function(
            Query$bookingCurrentReservations$bookingCurrentReservations$service)
        then,
  ) = _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$service;

  factory CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$service;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$service<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
            TRes> {
  _CopyWithImpl$Query$bookingCurrentReservations$bookingCurrentReservations$service(
    this._instance,
    this._then,
  );

  final Query$bookingCurrentReservations$bookingCurrentReservations$service
      _instance;

  final TRes Function(
          Query$bookingCurrentReservations$bookingCurrentReservations$service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$bookingCurrentReservations$bookingCurrentReservations$service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$service<
        TRes>
    implements
        CopyWith$Query$bookingCurrentReservations$bookingCurrentReservations$service<
            TRes> {
  _CopyWithStubImpl$Query$bookingCurrentReservations$bookingCurrentReservations$service(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

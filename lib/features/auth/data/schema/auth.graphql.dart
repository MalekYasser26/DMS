import '../../../../core/services/api/ucs_scheme.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$loginUser {
  factory Variables$Mutation$loginUser(
          {required Input$UserCredentialsInput input}) =>
      Variables$Mutation$loginUser._({
        r'input': input,
      });

  Variables$Mutation$loginUser._(this._$data);

  factory Variables$Mutation$loginUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserCredentialsInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$loginUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserCredentialsInput get input =>
      (_$data['input'] as Input$UserCredentialsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$loginUser<Variables$Mutation$loginUser>
      get copyWith => CopyWith$Variables$Mutation$loginUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$loginUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$loginUser<TRes> {
  factory CopyWith$Variables$Mutation$loginUser(
    Variables$Mutation$loginUser instance,
    TRes Function(Variables$Mutation$loginUser) then,
  ) = _CopyWithImpl$Variables$Mutation$loginUser;

  factory CopyWith$Variables$Mutation$loginUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$loginUser;

  TRes call({Input$UserCredentialsInput? input});
}

class _CopyWithImpl$Variables$Mutation$loginUser<TRes>
    implements CopyWith$Variables$Mutation$loginUser<TRes> {
  _CopyWithImpl$Variables$Mutation$loginUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$loginUser _instance;

  final TRes Function(Variables$Mutation$loginUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$loginUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserCredentialsInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$loginUser<TRes>
    implements CopyWith$Variables$Mutation$loginUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$loginUser(this._res);

  TRes _res;

  call({Input$UserCredentialsInput? input}) => _res;
}

class Mutation$loginUser {
  Mutation$loginUser({
    required this.loginUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$loginUser.fromJson(Map<String, dynamic> json) {
    final l$loginUser = json['loginUser'];
    final l$$__typename = json['__typename'];
    return Mutation$loginUser(
      loginUser: (l$loginUser as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String loginUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loginUser = loginUser;
    _resultData['loginUser'] = l$loginUser;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loginUser = loginUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$loginUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$loginUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginUser = loginUser;
    final lOther$loginUser = other.loginUser;
    if (l$loginUser != lOther$loginUser) {
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

extension UtilityExtension$Mutation$loginUser on Mutation$loginUser {
  CopyWith$Mutation$loginUser<Mutation$loginUser> get copyWith =>
      CopyWith$Mutation$loginUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$loginUser<TRes> {
  factory CopyWith$Mutation$loginUser(
    Mutation$loginUser instance,
    TRes Function(Mutation$loginUser) then,
  ) = _CopyWithImpl$Mutation$loginUser;

  factory CopyWith$Mutation$loginUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$loginUser;

  TRes call({
    String? loginUser,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$loginUser<TRes>
    implements CopyWith$Mutation$loginUser<TRes> {
  _CopyWithImpl$Mutation$loginUser(
    this._instance,
    this._then,
  );

  final Mutation$loginUser _instance;

  final TRes Function(Mutation$loginUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loginUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$loginUser(
        loginUser: loginUser == _undefined || loginUser == null
            ? _instance.loginUser
            : (loginUser as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$loginUser<TRes>
    implements CopyWith$Mutation$loginUser<TRes> {
  _CopyWithStubImpl$Mutation$loginUser(this._res);

  TRes _res;

  call({
    String? loginUser,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationloginUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'loginUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserCredentialsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loginUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
]);

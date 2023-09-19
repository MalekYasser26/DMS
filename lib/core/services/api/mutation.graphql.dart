import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$cancelBookingReservation {
  factory Variables$Mutation$cancelBookingReservation(
          {required List<String> reservationIds}) =>
      Variables$Mutation$cancelBookingReservation._({
        r'reservationIds': reservationIds,
      });

  Variables$Mutation$cancelBookingReservation._(this._$data);

  factory Variables$Mutation$cancelBookingReservation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reservationIds = data['reservationIds'];
    result$data['reservationIds'] =
        (l$reservationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Variables$Mutation$cancelBookingReservation._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get reservationIds => (_$data['reservationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reservationIds = reservationIds;
    result$data['reservationIds'] = l$reservationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$cancelBookingReservation<
          Variables$Mutation$cancelBookingReservation>
      get copyWith => CopyWith$Variables$Mutation$cancelBookingReservation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$cancelBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reservationIds = reservationIds;
    final lOther$reservationIds = other.reservationIds;
    if (l$reservationIds.length != lOther$reservationIds.length) {
      return false;
    }
    for (int i = 0; i < l$reservationIds.length; i++) {
      final l$reservationIds$entry = l$reservationIds[i];
      final lOther$reservationIds$entry = lOther$reservationIds[i];
      if (l$reservationIds$entry != lOther$reservationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reservationIds = reservationIds;
    return Object.hashAll([Object.hashAll(l$reservationIds.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$cancelBookingReservation<TRes> {
  factory CopyWith$Variables$Mutation$cancelBookingReservation(
    Variables$Mutation$cancelBookingReservation instance,
    TRes Function(Variables$Mutation$cancelBookingReservation) then,
  ) = _CopyWithImpl$Variables$Mutation$cancelBookingReservation;

  factory CopyWith$Variables$Mutation$cancelBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$cancelBookingReservation;

  TRes call({List<String>? reservationIds});
}

class _CopyWithImpl$Variables$Mutation$cancelBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$cancelBookingReservation<TRes> {
  _CopyWithImpl$Variables$Mutation$cancelBookingReservation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$cancelBookingReservation _instance;

  final TRes Function(Variables$Mutation$cancelBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? reservationIds = _undefined}) =>
      _then(Variables$Mutation$cancelBookingReservation._({
        ..._instance._$data,
        if (reservationIds != _undefined && reservationIds != null)
          'reservationIds': (reservationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$cancelBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$cancelBookingReservation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$cancelBookingReservation(this._res);

  final TRes _res;

  @override
  call({List<String>? reservationIds}) => _res;
}

class Mutation$cancelBookingReservation {
  Mutation$cancelBookingReservation({
    required this.cancelBookingReservation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$cancelBookingReservation.fromJson(
      Map<String, dynamic> json) {
    final l$cancelBookingReservation = json['cancelBookingReservation'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelBookingReservation(
      cancelBookingReservation: (l$cancelBookingReservation as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> cancelBookingReservation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$cancelBookingReservation = cancelBookingReservation;
    resultData['cancelBookingReservation'] =
        l$cancelBookingReservation.map((e) => e).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$cancelBookingReservation = cancelBookingReservation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$cancelBookingReservation.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$cancelBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelBookingReservation = cancelBookingReservation;
    final lOther$cancelBookingReservation = other.cancelBookingReservation;
    if (l$cancelBookingReservation.length !=
        lOther$cancelBookingReservation.length) {
      return false;
    }
    for (int i = 0; i < l$cancelBookingReservation.length; i++) {
      final l$cancelBookingReservation$entry = l$cancelBookingReservation[i];
      final lOther$cancelBookingReservation$entry =
          lOther$cancelBookingReservation[i];
      if (l$cancelBookingReservation$entry !=
          lOther$cancelBookingReservation$entry) {
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

extension UtilityExtension$Mutation$cancelBookingReservation
    on Mutation$cancelBookingReservation {
  CopyWith$Mutation$cancelBookingReservation<Mutation$cancelBookingReservation>
      get copyWith => CopyWith$Mutation$cancelBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$cancelBookingReservation<TRes> {
  factory CopyWith$Mutation$cancelBookingReservation(
    Mutation$cancelBookingReservation instance,
    TRes Function(Mutation$cancelBookingReservation) then,
  ) = _CopyWithImpl$Mutation$cancelBookingReservation;

  factory CopyWith$Mutation$cancelBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$cancelBookingReservation;

  TRes call({
    List<String>? cancelBookingReservation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$cancelBookingReservation<TRes>
    implements CopyWith$Mutation$cancelBookingReservation<TRes> {
  _CopyWithImpl$Mutation$cancelBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$cancelBookingReservation _instance;

  final TRes Function(Mutation$cancelBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? cancelBookingReservation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$cancelBookingReservation(
        cancelBookingReservation: cancelBookingReservation == _undefined ||
                cancelBookingReservation == null
            ? _instance.cancelBookingReservation
            : (cancelBookingReservation as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$cancelBookingReservation<TRes>
    implements CopyWith$Mutation$cancelBookingReservation<TRes> {
  _CopyWithStubImpl$Mutation$cancelBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    List<String>? cancelBookingReservation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationcancelBookingReservation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'cancelBookingReservation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reservationIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cancelBookingReservation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reservationIds'),
            value: VariableNode(name: NameNode(value: 'reservationIds')),
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
Mutation$cancelBookingReservation _parserFn$Mutation$cancelBookingReservation(
        Map<String, dynamic> data) =>
    Mutation$cancelBookingReservation.fromJson(data);
typedef OnMutationCompleted$Mutation$cancelBookingReservation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$cancelBookingReservation?,
);

class Options$Mutation$cancelBookingReservation
    extends graphql.MutationOptions<Mutation$cancelBookingReservation> {
  Options$Mutation$cancelBookingReservation({
    String? operationName,
    required Variables$Mutation$cancelBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$cancelBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$cancelBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$cancelBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$cancelBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcancelBookingReservation,
          parserFn: _parserFn$Mutation$cancelBookingReservation,
        );

  final OnMutationCompleted$Mutation$cancelBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$cancelBookingReservation
    extends graphql.WatchQueryOptions<Mutation$cancelBookingReservation> {
  WatchOptions$Mutation$cancelBookingReservation({
    String? operationName,
    required Variables$Mutation$cancelBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$cancelBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcancelBookingReservation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$cancelBookingReservation,
        );
}

extension ClientExtension$Mutation$cancelBookingReservation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$cancelBookingReservation>>
      mutate$cancelBookingReservation(
              Options$Mutation$cancelBookingReservation options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$cancelBookingReservation>
      watchMutation$cancelBookingReservation(
              WatchOptions$Mutation$cancelBookingReservation options) =>
          watchMutation(options);
}

class Mutation$cancelBookingReservation$HookResult {
  Mutation$cancelBookingReservation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$cancelBookingReservation runMutation;

  final graphql.QueryResult<Mutation$cancelBookingReservation> result;
}

Mutation$cancelBookingReservation$HookResult
    useMutation$cancelBookingReservation(
        [WidgetOptions$Mutation$cancelBookingReservation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$cancelBookingReservation());
  return Mutation$cancelBookingReservation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$cancelBookingReservation>
    useWatchMutation$cancelBookingReservation(
            WatchOptions$Mutation$cancelBookingReservation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$cancelBookingReservation
    extends graphql.MutationOptions<Mutation$cancelBookingReservation> {
  WidgetOptions$Mutation$cancelBookingReservation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$cancelBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$cancelBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$cancelBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$cancelBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcancelBookingReservation,
          parserFn: _parserFn$Mutation$cancelBookingReservation,
        );

  final OnMutationCompleted$Mutation$cancelBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$cancelBookingReservation
    = graphql.MultiSourceResult<Mutation$cancelBookingReservation> Function(
  Variables$Mutation$cancelBookingReservation, {
  Object? optimisticResult,
  Mutation$cancelBookingReservation? typedOptimisticResult,
});
typedef Builder$Mutation$cancelBookingReservation = widgets.Widget Function(
  RunMutation$Mutation$cancelBookingReservation,
  graphql.QueryResult<Mutation$cancelBookingReservation>?,
);

class Mutation$cancelBookingReservation$Widget
    extends graphql_flutter.Mutation<Mutation$cancelBookingReservation> {
  Mutation$cancelBookingReservation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$cancelBookingReservation? options,
    required Builder$Mutation$cancelBookingReservation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$cancelBookingReservation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$createBookingBranch {
  factory Variables$Mutation$createBookingBranch(
          {required Input$BookingBranchInput input}) =>
      Variables$Mutation$createBookingBranch._({
        r'input': input,
      });

  Variables$Mutation$createBookingBranch._(this._$data);

  factory Variables$Mutation$createBookingBranch.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BookingBranchInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createBookingBranch._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BookingBranchInput get input =>
      (_$data['input'] as Input$BookingBranchInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createBookingBranch<
          Variables$Mutation$createBookingBranch>
      get copyWith => CopyWith$Variables$Mutation$createBookingBranch(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createBookingBranch ||
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

abstract class CopyWith$Variables$Mutation$createBookingBranch<TRes> {
  factory CopyWith$Variables$Mutation$createBookingBranch(
    Variables$Mutation$createBookingBranch instance,
    TRes Function(Variables$Mutation$createBookingBranch) then,
  ) = _CopyWithImpl$Variables$Mutation$createBookingBranch;

  factory CopyWith$Variables$Mutation$createBookingBranch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createBookingBranch;

  TRes call({Input$BookingBranchInput? input});
}

class _CopyWithImpl$Variables$Mutation$createBookingBranch<TRes>
    implements CopyWith$Variables$Mutation$createBookingBranch<TRes> {
  _CopyWithImpl$Variables$Mutation$createBookingBranch(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createBookingBranch _instance;

  final TRes Function(Variables$Mutation$createBookingBranch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createBookingBranch._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BookingBranchInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createBookingBranch<TRes>
    implements CopyWith$Variables$Mutation$createBookingBranch<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createBookingBranch(this._res);

  final TRes _res;

  @override
  call({Input$BookingBranchInput? input}) => _res;
}

class Mutation$createBookingBranch {
  Mutation$createBookingBranch({
    required this.createBookingBranch,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createBookingBranch.fromJson(Map<String, dynamic> json) {
    final l$createBookingBranch = json['createBookingBranch'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingBranch(
      createBookingBranch:
          Mutation$createBookingBranch$createBookingBranch.fromJson(
              (l$createBookingBranch as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createBookingBranch$createBookingBranch createBookingBranch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$createBookingBranch = createBookingBranch;
    resultData['createBookingBranch'] = l$createBookingBranch.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$createBookingBranch = createBookingBranch;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createBookingBranch,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createBookingBranch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createBookingBranch = createBookingBranch;
    final lOther$createBookingBranch = other.createBookingBranch;
    if (l$createBookingBranch != lOther$createBookingBranch) {
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

extension UtilityExtension$Mutation$createBookingBranch
    on Mutation$createBookingBranch {
  CopyWith$Mutation$createBookingBranch<Mutation$createBookingBranch>
      get copyWith => CopyWith$Mutation$createBookingBranch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingBranch<TRes> {
  factory CopyWith$Mutation$createBookingBranch(
    Mutation$createBookingBranch instance,
    TRes Function(Mutation$createBookingBranch) then,
  ) = _CopyWithImpl$Mutation$createBookingBranch;

  factory CopyWith$Mutation$createBookingBranch.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createBookingBranch;

  TRes call({
    Mutation$createBookingBranch$createBookingBranch? createBookingBranch,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingBranch$createBookingBranch<TRes>
      get createBookingBranch;
}

class _CopyWithImpl$Mutation$createBookingBranch<TRes>
    implements CopyWith$Mutation$createBookingBranch<TRes> {
  _CopyWithImpl$Mutation$createBookingBranch(
    this._instance,
    this._then,
  );

  final Mutation$createBookingBranch _instance;

  final TRes Function(Mutation$createBookingBranch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? createBookingBranch = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingBranch(
        createBookingBranch:
            createBookingBranch == _undefined || createBookingBranch == null
                ? _instance.createBookingBranch
                : (createBookingBranch
                    as Mutation$createBookingBranch$createBookingBranch),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createBookingBranch$createBookingBranch<TRes>
      get createBookingBranch {
    final local$createBookingBranch = _instance.createBookingBranch;
    return CopyWith$Mutation$createBookingBranch$createBookingBranch(
        local$createBookingBranch, (e) => call(createBookingBranch: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingBranch<TRes>
    implements CopyWith$Mutation$createBookingBranch<TRes> {
  _CopyWithStubImpl$Mutation$createBookingBranch(this._res);

  final TRes _res;

  @override
  call({
    Mutation$createBookingBranch$createBookingBranch? createBookingBranch,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createBookingBranch$createBookingBranch<TRes>
      get createBookingBranch =>
          CopyWith$Mutation$createBookingBranch$createBookingBranch.stub(_res);
}

const documentNodeMutationcreateBookingBranch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createBookingBranch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingBranchInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createBookingBranch'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$createBookingBranch _parserFn$Mutation$createBookingBranch(
        Map<String, dynamic> data) =>
    Mutation$createBookingBranch.fromJson(data);
typedef OnMutationCompleted$Mutation$createBookingBranch = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$createBookingBranch?,
);

class Options$Mutation$createBookingBranch
    extends graphql.MutationOptions<Mutation$createBookingBranch> {
  Options$Mutation$createBookingBranch({
    String? operationName,
    required Variables$Mutation$createBookingBranch variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingBranch? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingBranch? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingBranch>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingBranch(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingBranch,
          parserFn: _parserFn$Mutation$createBookingBranch,
        );

  final OnMutationCompleted$Mutation$createBookingBranch? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createBookingBranch
    extends graphql.WatchQueryOptions<Mutation$createBookingBranch> {
  WatchOptions$Mutation$createBookingBranch({
    String? operationName,
    required Variables$Mutation$createBookingBranch variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingBranch? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcreateBookingBranch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createBookingBranch,
        );
}

extension ClientExtension$Mutation$createBookingBranch
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createBookingBranch>>
      mutate$createBookingBranch(
              Options$Mutation$createBookingBranch options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$createBookingBranch>
      watchMutation$createBookingBranch(
              WatchOptions$Mutation$createBookingBranch options) =>
          watchMutation(options);
}

class Mutation$createBookingBranch$HookResult {
  Mutation$createBookingBranch$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createBookingBranch runMutation;

  final graphql.QueryResult<Mutation$createBookingBranch> result;
}

Mutation$createBookingBranch$HookResult useMutation$createBookingBranch(
    [WidgetOptions$Mutation$createBookingBranch? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createBookingBranch());
  return Mutation$createBookingBranch$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createBookingBranch>
    useWatchMutation$createBookingBranch(
            WatchOptions$Mutation$createBookingBranch options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createBookingBranch
    extends graphql.MutationOptions<Mutation$createBookingBranch> {
  WidgetOptions$Mutation$createBookingBranch({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingBranch? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingBranch? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingBranch>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingBranch(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingBranch,
          parserFn: _parserFn$Mutation$createBookingBranch,
        );

  final OnMutationCompleted$Mutation$createBookingBranch? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createBookingBranch
    = graphql.MultiSourceResult<Mutation$createBookingBranch> Function(
  Variables$Mutation$createBookingBranch, {
  Object? optimisticResult,
  Mutation$createBookingBranch? typedOptimisticResult,
});
typedef Builder$Mutation$createBookingBranch = widgets.Widget Function(
  RunMutation$Mutation$createBookingBranch,
  graphql.QueryResult<Mutation$createBookingBranch>?,
);

class Mutation$createBookingBranch$Widget
    extends graphql_flutter.Mutation<Mutation$createBookingBranch> {
  Mutation$createBookingBranch$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createBookingBranch? options,
    required Builder$Mutation$createBookingBranch builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createBookingBranch(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$createBookingBranch$createBookingBranch {
  Mutation$createBookingBranch$createBookingBranch({
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

  factory Mutation$createBookingBranch$createBookingBranch.fromJson(
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
    return Mutation$createBookingBranch$createBookingBranch(
      id: (l$id as String),
      name: (l$name as String),
      address: (l$address as String),
      phone: (l$phone as String?),
      mapURL: (l$mapURL as String?),
      isActive: (l$isActive as bool?),
      services: (l$services as List<dynamic>?)
          ?.map((e) => Mutation$createBookingBranch$createBookingBranch$services
              .fromJson((e as Map<String, dynamic>)))
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

  final List<Mutation$createBookingBranch$createBookingBranch$services>?
      services;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$address = address;
    resultData['address'] = l$address;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$mapURL = mapURL;
    resultData['mapURL'] = l$mapURL;
    final l$isActive = isActive;
    resultData['isActive'] = l$isActive;
    final l$services = services;
    resultData['services'] = l$services?.map((e) => e.toJson()).toList();
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingBranch$createBookingBranch ||
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

extension UtilityExtension$Mutation$createBookingBranch$createBookingBranch
    on Mutation$createBookingBranch$createBookingBranch {
  CopyWith$Mutation$createBookingBranch$createBookingBranch<
          Mutation$createBookingBranch$createBookingBranch>
      get copyWith => CopyWith$Mutation$createBookingBranch$createBookingBranch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingBranch$createBookingBranch<TRes> {
  factory CopyWith$Mutation$createBookingBranch$createBookingBranch(
    Mutation$createBookingBranch$createBookingBranch instance,
    TRes Function(Mutation$createBookingBranch$createBookingBranch) then,
  ) = _CopyWithImpl$Mutation$createBookingBranch$createBookingBranch;

  factory CopyWith$Mutation$createBookingBranch$createBookingBranch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingBranch$createBookingBranch;

  TRes call({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
    List<Mutation$createBookingBranch$createBookingBranch$services>? services,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  TRes services(
      Iterable<Mutation$createBookingBranch$createBookingBranch$services>? Function(
              Iterable<
                  CopyWith$Mutation$createBookingBranch$createBookingBranch$services<
                      Mutation$createBookingBranch$createBookingBranch$services>>?)
          fn);
}

class _CopyWithImpl$Mutation$createBookingBranch$createBookingBranch<TRes>
    implements CopyWith$Mutation$createBookingBranch$createBookingBranch<TRes> {
  _CopyWithImpl$Mutation$createBookingBranch$createBookingBranch(
    this._instance,
    this._then,
  );

  final Mutation$createBookingBranch$createBookingBranch _instance;

  final TRes Function(Mutation$createBookingBranch$createBookingBranch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$createBookingBranch$createBookingBranch(
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
            : (services as List<
                Mutation$createBookingBranch$createBookingBranch$services>?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  TRes services(
          Iterable<Mutation$createBookingBranch$createBookingBranch$services>? Function(
                  Iterable<
                      CopyWith$Mutation$createBookingBranch$createBookingBranch$services<
                          Mutation$createBookingBranch$createBookingBranch$services>>?)
              fn) =>
      call(
          services: fn(_instance.services?.map((e) =>
              CopyWith$Mutation$createBookingBranch$createBookingBranch$services(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Mutation$createBookingBranch$createBookingBranch<TRes>
    implements CopyWith$Mutation$createBookingBranch$createBookingBranch<TRes> {
  _CopyWithStubImpl$Mutation$createBookingBranch$createBookingBranch(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
    List<Mutation$createBookingBranch$createBookingBranch$services>? services,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  @override
  services(fn) => _res;
}

class Mutation$createBookingBranch$createBookingBranch$services {
  Mutation$createBookingBranch$createBookingBranch$services({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Mutation$createBookingBranch$createBookingBranch$services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingBranch$createBookingBranch$services(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingBranch$createBookingBranch$services ||
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

extension UtilityExtension$Mutation$createBookingBranch$createBookingBranch$services
    on Mutation$createBookingBranch$createBookingBranch$services {
  CopyWith$Mutation$createBookingBranch$createBookingBranch$services<
          Mutation$createBookingBranch$createBookingBranch$services>
      get copyWith =>
          CopyWith$Mutation$createBookingBranch$createBookingBranch$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingBranch$createBookingBranch$services<
    TRes> {
  factory CopyWith$Mutation$createBookingBranch$createBookingBranch$services(
    Mutation$createBookingBranch$createBookingBranch$services instance,
    TRes Function(Mutation$createBookingBranch$createBookingBranch$services)
        then,
  ) = _CopyWithImpl$Mutation$createBookingBranch$createBookingBranch$services;

  factory CopyWith$Mutation$createBookingBranch$createBookingBranch$services.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingBranch$createBookingBranch$services;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingBranch$createBookingBranch$services<
        TRes>
    implements
        CopyWith$Mutation$createBookingBranch$createBookingBranch$services<
            TRes> {
  _CopyWithImpl$Mutation$createBookingBranch$createBookingBranch$services(
    this._instance,
    this._then,
  );

  final Mutation$createBookingBranch$createBookingBranch$services _instance;

  final TRes Function(Mutation$createBookingBranch$createBookingBranch$services)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingBranch$createBookingBranch$services(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingBranch$createBookingBranch$services<
        TRes>
    implements
        CopyWith$Mutation$createBookingBranch$createBookingBranch$services<
            TRes> {
  _CopyWithStubImpl$Mutation$createBookingBranch$createBookingBranch$services(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createBookingNote {
  factory Variables$Mutation$createBookingNote(
          {required Input$BookingNoteInput input}) =>
      Variables$Mutation$createBookingNote._({
        r'input': input,
      });

  Variables$Mutation$createBookingNote._(this._$data);

  factory Variables$Mutation$createBookingNote.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BookingNoteInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createBookingNote._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BookingNoteInput get input =>
      (_$data['input'] as Input$BookingNoteInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createBookingNote<
          Variables$Mutation$createBookingNote>
      get copyWith => CopyWith$Variables$Mutation$createBookingNote(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createBookingNote ||
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

abstract class CopyWith$Variables$Mutation$createBookingNote<TRes> {
  factory CopyWith$Variables$Mutation$createBookingNote(
    Variables$Mutation$createBookingNote instance,
    TRes Function(Variables$Mutation$createBookingNote) then,
  ) = _CopyWithImpl$Variables$Mutation$createBookingNote;

  factory CopyWith$Variables$Mutation$createBookingNote.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createBookingNote;

  TRes call({Input$BookingNoteInput? input});
}

class _CopyWithImpl$Variables$Mutation$createBookingNote<TRes>
    implements CopyWith$Variables$Mutation$createBookingNote<TRes> {
  _CopyWithImpl$Variables$Mutation$createBookingNote(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createBookingNote _instance;

  final TRes Function(Variables$Mutation$createBookingNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createBookingNote._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BookingNoteInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createBookingNote<TRes>
    implements CopyWith$Variables$Mutation$createBookingNote<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createBookingNote(this._res);

  final TRes _res;

  @override
  call({Input$BookingNoteInput? input}) => _res;
}

class Mutation$createBookingNote {
  Mutation$createBookingNote({
    required this.createBookingNote,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createBookingNote.fromJson(Map<String, dynamic> json) {
    final l$createBookingNote = json['createBookingNote'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingNote(
      createBookingNote: Mutation$createBookingNote$createBookingNote.fromJson(
          (l$createBookingNote as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createBookingNote$createBookingNote createBookingNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$createBookingNote = createBookingNote;
    resultData['createBookingNote'] = l$createBookingNote.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$createBookingNote = createBookingNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createBookingNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createBookingNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createBookingNote = createBookingNote;
    final lOther$createBookingNote = other.createBookingNote;
    if (l$createBookingNote != lOther$createBookingNote) {
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

extension UtilityExtension$Mutation$createBookingNote
    on Mutation$createBookingNote {
  CopyWith$Mutation$createBookingNote<Mutation$createBookingNote>
      get copyWith => CopyWith$Mutation$createBookingNote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingNote<TRes> {
  factory CopyWith$Mutation$createBookingNote(
    Mutation$createBookingNote instance,
    TRes Function(Mutation$createBookingNote) then,
  ) = _CopyWithImpl$Mutation$createBookingNote;

  factory CopyWith$Mutation$createBookingNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createBookingNote;

  TRes call({
    Mutation$createBookingNote$createBookingNote? createBookingNote,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingNote$createBookingNote<TRes>
      get createBookingNote;
}

class _CopyWithImpl$Mutation$createBookingNote<TRes>
    implements CopyWith$Mutation$createBookingNote<TRes> {
  _CopyWithImpl$Mutation$createBookingNote(
    this._instance,
    this._then,
  );

  final Mutation$createBookingNote _instance;

  final TRes Function(Mutation$createBookingNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? createBookingNote = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingNote(
        createBookingNote:
            createBookingNote == _undefined || createBookingNote == null
                ? _instance.createBookingNote
                : (createBookingNote
                    as Mutation$createBookingNote$createBookingNote),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createBookingNote$createBookingNote<TRes>
      get createBookingNote {
    final local$createBookingNote = _instance.createBookingNote;
    return CopyWith$Mutation$createBookingNote$createBookingNote(
        local$createBookingNote, (e) => call(createBookingNote: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingNote<TRes>
    implements CopyWith$Mutation$createBookingNote<TRes> {
  _CopyWithStubImpl$Mutation$createBookingNote(this._res);

  final TRes _res;

  @override
  call({
    Mutation$createBookingNote$createBookingNote? createBookingNote,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createBookingNote$createBookingNote<TRes>
      get createBookingNote =>
          CopyWith$Mutation$createBookingNote$createBookingNote.stub(_res);
}

const documentNodeMutationcreateBookingNote = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createBookingNote'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingNoteInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createBookingNote'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$createBookingNote _parserFn$Mutation$createBookingNote(
        Map<String, dynamic> data) =>
    Mutation$createBookingNote.fromJson(data);
typedef OnMutationCompleted$Mutation$createBookingNote = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$createBookingNote?,
);

class Options$Mutation$createBookingNote
    extends graphql.MutationOptions<Mutation$createBookingNote> {
  Options$Mutation$createBookingNote({
    String? operationName,
    required Variables$Mutation$createBookingNote variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingNote? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingNote? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingNote>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingNote(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingNote,
          parserFn: _parserFn$Mutation$createBookingNote,
        );

  final OnMutationCompleted$Mutation$createBookingNote? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createBookingNote
    extends graphql.WatchQueryOptions<Mutation$createBookingNote> {
  WatchOptions$Mutation$createBookingNote({
    String? operationName,
    required Variables$Mutation$createBookingNote variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingNote? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcreateBookingNote,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createBookingNote,
        );
}

extension ClientExtension$Mutation$createBookingNote on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createBookingNote>>
      mutate$createBookingNote(
              Options$Mutation$createBookingNote options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$createBookingNote>
      watchMutation$createBookingNote(
              WatchOptions$Mutation$createBookingNote options) =>
          watchMutation(options);
}

class Mutation$createBookingNote$HookResult {
  Mutation$createBookingNote$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createBookingNote runMutation;

  final graphql.QueryResult<Mutation$createBookingNote> result;
}

Mutation$createBookingNote$HookResult useMutation$createBookingNote(
    [WidgetOptions$Mutation$createBookingNote? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createBookingNote());
  return Mutation$createBookingNote$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createBookingNote>
    useWatchMutation$createBookingNote(
            WatchOptions$Mutation$createBookingNote options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createBookingNote
    extends graphql.MutationOptions<Mutation$createBookingNote> {
  WidgetOptions$Mutation$createBookingNote({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingNote? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingNote? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingNote>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingNote(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingNote,
          parserFn: _parserFn$Mutation$createBookingNote,
        );

  final OnMutationCompleted$Mutation$createBookingNote? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createBookingNote
    = graphql.MultiSourceResult<Mutation$createBookingNote> Function(
  Variables$Mutation$createBookingNote, {
  Object? optimisticResult,
  Mutation$createBookingNote? typedOptimisticResult,
});
typedef Builder$Mutation$createBookingNote = widgets.Widget Function(
  RunMutation$Mutation$createBookingNote,
  graphql.QueryResult<Mutation$createBookingNote>?,
);

class Mutation$createBookingNote$Widget
    extends graphql_flutter.Mutation<Mutation$createBookingNote> {
  Mutation$createBookingNote$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createBookingNote? options,
    required Builder$Mutation$createBookingNote builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createBookingNote(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$createBookingNote$createBookingNote {
  Mutation$createBookingNote$createBookingNote({
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

  factory Mutation$createBookingNote$createBookingNote.fromJson(
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
    return Mutation$createBookingNote$createBookingNote(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Mutation$createBookingNote$createBookingNote$user.fromJson(
          (l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String?),
      branch: l$branch == null
          ? null
          : Mutation$createBookingNote$createBookingNote$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      visitId: (l$visitId as String?),
      visit: l$visit == null
          ? null
          : Mutation$createBookingNote$createBookingNote$visit.fromJson(
              (l$visit as Map<String, dynamic>)),
      text: (l$text as String?),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Mutation$createBookingNote$createBookingNote$user user;

  final String? branchId;

  final Mutation$createBookingNote$createBookingNote$branch? branch;

  final String? visitId;

  final Mutation$createBookingNote$createBookingNote$visit? visit;

  final String? text;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch?.toJson();
    final l$visitId = visitId;
    resultData['visitId'] = l$visitId;
    final l$visit = visit;
    resultData['visit'] = l$visit?.toJson();
    final l$text = text;
    resultData['text'] = l$text;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingNote$createBookingNote ||
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

extension UtilityExtension$Mutation$createBookingNote$createBookingNote
    on Mutation$createBookingNote$createBookingNote {
  CopyWith$Mutation$createBookingNote$createBookingNote<
          Mutation$createBookingNote$createBookingNote>
      get copyWith => CopyWith$Mutation$createBookingNote$createBookingNote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingNote$createBookingNote<TRes> {
  factory CopyWith$Mutation$createBookingNote$createBookingNote(
    Mutation$createBookingNote$createBookingNote instance,
    TRes Function(Mutation$createBookingNote$createBookingNote) then,
  ) = _CopyWithImpl$Mutation$createBookingNote$createBookingNote;

  factory CopyWith$Mutation$createBookingNote$createBookingNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote;

  TRes call({
    String? id,
    String? userId,
    Mutation$createBookingNote$createBookingNote$user? user,
    String? branchId,
    Mutation$createBookingNote$createBookingNote$branch? branch,
    String? visitId,
    Mutation$createBookingNote$createBookingNote$visit? visit,
    String? text,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingNote$createBookingNote$user<TRes> get user;
  CopyWith$Mutation$createBookingNote$createBookingNote$branch<TRes> get branch;
  CopyWith$Mutation$createBookingNote$createBookingNote$visit<TRes> get visit;
}

class _CopyWithImpl$Mutation$createBookingNote$createBookingNote<TRes>
    implements CopyWith$Mutation$createBookingNote$createBookingNote<TRes> {
  _CopyWithImpl$Mutation$createBookingNote$createBookingNote(
    this._instance,
    this._then,
  );

  final Mutation$createBookingNote$createBookingNote _instance;

  final TRes Function(Mutation$createBookingNote$createBookingNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$createBookingNote$createBookingNote(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$createBookingNote$createBookingNote$user),
        branchId:
            branchId == _undefined ? _instance.branchId : (branchId as String?),
        branch: branch == _undefined
            ? _instance.branch
            : (branch as Mutation$createBookingNote$createBookingNote$branch?),
        visitId:
            visitId == _undefined ? _instance.visitId : (visitId as String?),
        visit: visit == _undefined
            ? _instance.visit
            : (visit as Mutation$createBookingNote$createBookingNote$visit?),
        text: text == _undefined ? _instance.text : (text as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createBookingNote$createBookingNote$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$createBookingNote$createBookingNote$user(
        local$user, (e) => call(user: e));
  }

  @override
  CopyWith$Mutation$createBookingNote$createBookingNote$branch<TRes>
      get branch {
    final local$branch = _instance.branch;
    return local$branch == null
        ? CopyWith$Mutation$createBookingNote$createBookingNote$branch.stub(
            _then(_instance))
        : CopyWith$Mutation$createBookingNote$createBookingNote$branch(
            local$branch, (e) => call(branch: e));
  }

  @override
  CopyWith$Mutation$createBookingNote$createBookingNote$visit<TRes> get visit {
    final local$visit = _instance.visit;
    return local$visit == null
        ? CopyWith$Mutation$createBookingNote$createBookingNote$visit.stub(
            _then(_instance))
        : CopyWith$Mutation$createBookingNote$createBookingNote$visit(
            local$visit, (e) => call(visit: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote<TRes>
    implements CopyWith$Mutation$createBookingNote$createBookingNote<TRes> {
  _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? userId,
    Mutation$createBookingNote$createBookingNote$user? user,
    String? branchId,
    Mutation$createBookingNote$createBookingNote$branch? branch,
    String? visitId,
    Mutation$createBookingNote$createBookingNote$visit? visit,
    String? text,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createBookingNote$createBookingNote$user<TRes> get user =>
      CopyWith$Mutation$createBookingNote$createBookingNote$user.stub(_res);
  @override
  CopyWith$Mutation$createBookingNote$createBookingNote$branch<TRes>
      get branch =>
          CopyWith$Mutation$createBookingNote$createBookingNote$branch.stub(
              _res);
  @override
  CopyWith$Mutation$createBookingNote$createBookingNote$visit<TRes> get visit =>
      CopyWith$Mutation$createBookingNote$createBookingNote$visit.stub(_res);
}

class Mutation$createBookingNote$createBookingNote$user {
  Mutation$createBookingNote$createBookingNote$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$createBookingNote$createBookingNote$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingNote$createBookingNote$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingNote$createBookingNote$user ||
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

extension UtilityExtension$Mutation$createBookingNote$createBookingNote$user
    on Mutation$createBookingNote$createBookingNote$user {
  CopyWith$Mutation$createBookingNote$createBookingNote$user<
          Mutation$createBookingNote$createBookingNote$user>
      get copyWith =>
          CopyWith$Mutation$createBookingNote$createBookingNote$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingNote$createBookingNote$user<
    TRes> {
  factory CopyWith$Mutation$createBookingNote$createBookingNote$user(
    Mutation$createBookingNote$createBookingNote$user instance,
    TRes Function(Mutation$createBookingNote$createBookingNote$user) then,
  ) = _CopyWithImpl$Mutation$createBookingNote$createBookingNote$user;

  factory CopyWith$Mutation$createBookingNote$createBookingNote$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingNote$createBookingNote$user<TRes>
    implements
        CopyWith$Mutation$createBookingNote$createBookingNote$user<TRes> {
  _CopyWithImpl$Mutation$createBookingNote$createBookingNote$user(
    this._instance,
    this._then,
  );

  final Mutation$createBookingNote$createBookingNote$user _instance;

  final TRes Function(Mutation$createBookingNote$createBookingNote$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingNote$createBookingNote$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$user<TRes>
    implements
        CopyWith$Mutation$createBookingNote$createBookingNote$user<TRes> {
  _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$user(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createBookingNote$createBookingNote$branch {
  Mutation$createBookingNote$createBookingNote$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$createBookingNote$createBookingNote$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingNote$createBookingNote$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingNote$createBookingNote$branch ||
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

extension UtilityExtension$Mutation$createBookingNote$createBookingNote$branch
    on Mutation$createBookingNote$createBookingNote$branch {
  CopyWith$Mutation$createBookingNote$createBookingNote$branch<
          Mutation$createBookingNote$createBookingNote$branch>
      get copyWith =>
          CopyWith$Mutation$createBookingNote$createBookingNote$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingNote$createBookingNote$branch<
    TRes> {
  factory CopyWith$Mutation$createBookingNote$createBookingNote$branch(
    Mutation$createBookingNote$createBookingNote$branch instance,
    TRes Function(Mutation$createBookingNote$createBookingNote$branch) then,
  ) = _CopyWithImpl$Mutation$createBookingNote$createBookingNote$branch;

  factory CopyWith$Mutation$createBookingNote$createBookingNote$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingNote$createBookingNote$branch<TRes>
    implements
        CopyWith$Mutation$createBookingNote$createBookingNote$branch<TRes> {
  _CopyWithImpl$Mutation$createBookingNote$createBookingNote$branch(
    this._instance,
    this._then,
  );

  final Mutation$createBookingNote$createBookingNote$branch _instance;

  final TRes Function(Mutation$createBookingNote$createBookingNote$branch)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingNote$createBookingNote$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$branch<
        TRes>
    implements
        CopyWith$Mutation$createBookingNote$createBookingNote$branch<TRes> {
  _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createBookingNote$createBookingNote$visit {
  Mutation$createBookingNote$createBookingNote$visit({
    required this.id,
    this.$__typename = 'BookingVisit',
  });

  factory Mutation$createBookingNote$createBookingNote$visit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingNote$createBookingNote$visit(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingNote$createBookingNote$visit ||
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

extension UtilityExtension$Mutation$createBookingNote$createBookingNote$visit
    on Mutation$createBookingNote$createBookingNote$visit {
  CopyWith$Mutation$createBookingNote$createBookingNote$visit<
          Mutation$createBookingNote$createBookingNote$visit>
      get copyWith =>
          CopyWith$Mutation$createBookingNote$createBookingNote$visit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingNote$createBookingNote$visit<
    TRes> {
  factory CopyWith$Mutation$createBookingNote$createBookingNote$visit(
    Mutation$createBookingNote$createBookingNote$visit instance,
    TRes Function(Mutation$createBookingNote$createBookingNote$visit) then,
  ) = _CopyWithImpl$Mutation$createBookingNote$createBookingNote$visit;

  factory CopyWith$Mutation$createBookingNote$createBookingNote$visit.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$visit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingNote$createBookingNote$visit<TRes>
    implements
        CopyWith$Mutation$createBookingNote$createBookingNote$visit<TRes> {
  _CopyWithImpl$Mutation$createBookingNote$createBookingNote$visit(
    this._instance,
    this._then,
  );

  final Mutation$createBookingNote$createBookingNote$visit _instance;

  final TRes Function(Mutation$createBookingNote$createBookingNote$visit) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingNote$createBookingNote$visit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$visit<TRes>
    implements
        CopyWith$Mutation$createBookingNote$createBookingNote$visit<TRes> {
  _CopyWithStubImpl$Mutation$createBookingNote$createBookingNote$visit(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createBookingReservation {
  factory Variables$Mutation$createBookingReservation({
    required String userId,
    required Input$BookingReservationInput input,
  }) =>
      Variables$Mutation$createBookingReservation._({
        r'userId': userId,
        r'input': input,
      });

  Variables$Mutation$createBookingReservation._(this._$data);

  factory Variables$Mutation$createBookingReservation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$input = data['input'];
    result$data['input'] = Input$BookingReservationInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$createBookingReservation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  Input$BookingReservationInput get input =>
      (_$data['input'] as Input$BookingReservationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createBookingReservation<
          Variables$Mutation$createBookingReservation>
      get copyWith => CopyWith$Variables$Mutation$createBookingReservation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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
    final l$userId = userId;
    final l$input = input;
    return Object.hashAll([
      l$userId,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$createBookingReservation<TRes> {
  factory CopyWith$Variables$Mutation$createBookingReservation(
    Variables$Mutation$createBookingReservation instance,
    TRes Function(Variables$Mutation$createBookingReservation) then,
  ) = _CopyWithImpl$Variables$Mutation$createBookingReservation;

  factory CopyWith$Variables$Mutation$createBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createBookingReservation;

  TRes call({
    String? userId,
    Input$BookingReservationInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$createBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$createBookingReservation<TRes> {
  _CopyWithImpl$Variables$Mutation$createBookingReservation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createBookingReservation _instance;

  final TRes Function(Variables$Mutation$createBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$createBookingReservation._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (input != _undefined && input != null)
          'input': (input as Input$BookingReservationInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$createBookingReservation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    String? userId,
    Input$BookingReservationInput? input,
  }) =>
      _res;
}

class Mutation$createBookingReservation {
  Mutation$createBookingReservation({
    required this.createBookingReservation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createBookingReservation.fromJson(
      Map<String, dynamic> json) {
    final l$createBookingReservation = json['createBookingReservation'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingReservation(
      createBookingReservation:
          Mutation$createBookingReservation$createBookingReservation.fromJson(
              (l$createBookingReservation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createBookingReservation$createBookingReservation
      createBookingReservation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$createBookingReservation = createBookingReservation;
    resultData['createBookingReservation'] =
        l$createBookingReservation.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$createBookingReservation = createBookingReservation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createBookingReservation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createBookingReservation = createBookingReservation;
    final lOther$createBookingReservation = other.createBookingReservation;
    if (l$createBookingReservation != lOther$createBookingReservation) {
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

extension UtilityExtension$Mutation$createBookingReservation
    on Mutation$createBookingReservation {
  CopyWith$Mutation$createBookingReservation<Mutation$createBookingReservation>
      get copyWith => CopyWith$Mutation$createBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingReservation<TRes> {
  factory CopyWith$Mutation$createBookingReservation(
    Mutation$createBookingReservation instance,
    TRes Function(Mutation$createBookingReservation) then,
  ) = _CopyWithImpl$Mutation$createBookingReservation;

  factory CopyWith$Mutation$createBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createBookingReservation;

  TRes call({
    Mutation$createBookingReservation$createBookingReservation?
        createBookingReservation,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingReservation$createBookingReservation<TRes>
      get createBookingReservation;
}

class _CopyWithImpl$Mutation$createBookingReservation<TRes>
    implements CopyWith$Mutation$createBookingReservation<TRes> {
  _CopyWithImpl$Mutation$createBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$createBookingReservation _instance;

  final TRes Function(Mutation$createBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? createBookingReservation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingReservation(
        createBookingReservation: createBookingReservation == _undefined ||
                createBookingReservation == null
            ? _instance.createBookingReservation
            : (createBookingReservation
                as Mutation$createBookingReservation$createBookingReservation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation<TRes>
      get createBookingReservation {
    final local$createBookingReservation = _instance.createBookingReservation;
    return CopyWith$Mutation$createBookingReservation$createBookingReservation(
        local$createBookingReservation,
        (e) => call(createBookingReservation: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingReservation<TRes>
    implements CopyWith$Mutation$createBookingReservation<TRes> {
  _CopyWithStubImpl$Mutation$createBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    Mutation$createBookingReservation$createBookingReservation?
        createBookingReservation,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation<TRes>
      get createBookingReservation =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation
              .stub(_res);
}

const documentNodeMutationcreateBookingReservation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createBookingReservation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingReservationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createBookingReservation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$createBookingReservation _parserFn$Mutation$createBookingReservation(
        Map<String, dynamic> data) =>
    Mutation$createBookingReservation.fromJson(data);
typedef OnMutationCompleted$Mutation$createBookingReservation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$createBookingReservation?,
);

class Options$Mutation$createBookingReservation
    extends graphql.MutationOptions<Mutation$createBookingReservation> {
  Options$Mutation$createBookingReservation({
    String? operationName,
    required Variables$Mutation$createBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingReservation,
          parserFn: _parserFn$Mutation$createBookingReservation,
        );

  final OnMutationCompleted$Mutation$createBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createBookingReservation
    extends graphql.WatchQueryOptions<Mutation$createBookingReservation> {
  WatchOptions$Mutation$createBookingReservation({
    String? operationName,
    required Variables$Mutation$createBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcreateBookingReservation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createBookingReservation,
        );
}

extension ClientExtension$Mutation$createBookingReservation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createBookingReservation>>
      mutate$createBookingReservation(
              Options$Mutation$createBookingReservation options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$createBookingReservation>
      watchMutation$createBookingReservation(
              WatchOptions$Mutation$createBookingReservation options) =>
          watchMutation(options);
}

class Mutation$createBookingReservation$HookResult {
  Mutation$createBookingReservation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createBookingReservation runMutation;

  final graphql.QueryResult<Mutation$createBookingReservation> result;
}

Mutation$createBookingReservation$HookResult
    useMutation$createBookingReservation(
        [WidgetOptions$Mutation$createBookingReservation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$createBookingReservation());
  return Mutation$createBookingReservation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createBookingReservation>
    useWatchMutation$createBookingReservation(
            WatchOptions$Mutation$createBookingReservation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createBookingReservation
    extends graphql.MutationOptions<Mutation$createBookingReservation> {
  WidgetOptions$Mutation$createBookingReservation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingReservation,
          parserFn: _parserFn$Mutation$createBookingReservation,
        );

  final OnMutationCompleted$Mutation$createBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createBookingReservation
    = graphql.MultiSourceResult<Mutation$createBookingReservation> Function(
  Variables$Mutation$createBookingReservation, {
  Object? optimisticResult,
  Mutation$createBookingReservation? typedOptimisticResult,
});
typedef Builder$Mutation$createBookingReservation = widgets.Widget Function(
  RunMutation$Mutation$createBookingReservation,
  graphql.QueryResult<Mutation$createBookingReservation>?,
);

class Mutation$createBookingReservation$Widget
    extends graphql_flutter.Mutation<Mutation$createBookingReservation> {
  Mutation$createBookingReservation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createBookingReservation? options,
    required Builder$Mutation$createBookingReservation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createBookingReservation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$createBookingReservation$createBookingReservation {
  Mutation$createBookingReservation$createBookingReservation({
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

  factory Mutation$createBookingReservation$createBookingReservation.fromJson(
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
    return Mutation$createBookingReservation$createBookingReservation(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Mutation$createBookingReservation$createBookingReservation$user
          .fromJson((l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String),
      branch: Mutation$createBookingReservation$createBookingReservation$branch
          .fromJson((l$branch as Map<String, dynamic>)),
      serviceId: (l$serviceId as String),
      service:
          Mutation$createBookingReservation$createBookingReservation$service
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

  final Mutation$createBookingReservation$createBookingReservation$user user;

  final String branchId;

  final Mutation$createBookingReservation$createBookingReservation$branch
      branch;

  final String serviceId;

  final Mutation$createBookingReservation$createBookingReservation$service
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
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch.toJson();
    final l$serviceId = serviceId;
    resultData['serviceId'] = l$serviceId;
    final l$service = service;
    resultData['service'] = l$service.toJson();
    final l$channel = channel;
    resultData['channel'] = l$channel;
    final l$date = date;
    resultData['date'] = l$date;
    final l$time = time;
    resultData['time'] = l$time;
    final l$queueNumber = queueNumber;
    resultData['queueNumber'] = l$queueNumber;
    final l$status = status;
    resultData['status'] = toJson$Enum$BookingReservationStatus(l$status);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingReservation$createBookingReservation ||
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

extension UtilityExtension$Mutation$createBookingReservation$createBookingReservation
    on Mutation$createBookingReservation$createBookingReservation {
  CopyWith$Mutation$createBookingReservation$createBookingReservation<
          Mutation$createBookingReservation$createBookingReservation>
      get copyWith =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingReservation$createBookingReservation<
    TRes> {
  factory CopyWith$Mutation$createBookingReservation$createBookingReservation(
    Mutation$createBookingReservation$createBookingReservation instance,
    TRes Function(Mutation$createBookingReservation$createBookingReservation)
        then,
  ) = _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation;

  factory CopyWith$Mutation$createBookingReservation$createBookingReservation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation;

  TRes call({
    String? id,
    String? userId,
    Mutation$createBookingReservation$createBookingReservation$user? user,
    String? branchId,
    Mutation$createBookingReservation$createBookingReservation$branch? branch,
    String? serviceId,
    Mutation$createBookingReservation$createBookingReservation$service? service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingReservation$createBookingReservation$user<TRes>
      get user;
  CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
      TRes> get branch;
  CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
      TRes> get service;
}

class _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation<
            TRes> {
  _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$createBookingReservation$createBookingReservation _instance;

  final TRes Function(
      Mutation$createBookingReservation$createBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$createBookingReservation$createBookingReservation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user
                as Mutation$createBookingReservation$createBookingReservation$user),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch
                as Mutation$createBookingReservation$createBookingReservation$branch),
        serviceId: serviceId == _undefined || serviceId == null
            ? _instance.serviceId
            : (serviceId as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Mutation$createBookingReservation$createBookingReservation$service),
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
  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$createBookingReservation$createBookingReservation$user(
        local$user, (e) => call(user: e));
  }

  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
      TRes> get branch {
    final local$branch = _instance.branch;
    return CopyWith$Mutation$createBookingReservation$createBookingReservation$branch(
        local$branch, (e) => call(branch: e));
  }

  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Mutation$createBookingReservation$createBookingReservation$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation<
            TRes> {
  _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? userId,
    Mutation$createBookingReservation$createBookingReservation$user? user,
    String? branchId,
    Mutation$createBookingReservation$createBookingReservation$branch? branch,
    String? serviceId,
    Mutation$createBookingReservation$createBookingReservation$service? service,
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
  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation$user<TRes>
      get user =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation$user
              .stub(_res);
  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
          TRes>
      get branch =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation$branch
              .stub(_res);
  @override
  CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
          TRes>
      get service =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation$service
              .stub(_res);
}

class Mutation$createBookingReservation$createBookingReservation$user {
  Mutation$createBookingReservation$createBookingReservation$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$createBookingReservation$createBookingReservation$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingReservation$createBookingReservation$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$createBookingReservation$createBookingReservation$user ||
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

extension UtilityExtension$Mutation$createBookingReservation$createBookingReservation$user
    on Mutation$createBookingReservation$createBookingReservation$user {
  CopyWith$Mutation$createBookingReservation$createBookingReservation$user<
          Mutation$createBookingReservation$createBookingReservation$user>
      get copyWith =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingReservation$createBookingReservation$user<
    TRes> {
  factory CopyWith$Mutation$createBookingReservation$createBookingReservation$user(
    Mutation$createBookingReservation$createBookingReservation$user instance,
    TRes Function(
            Mutation$createBookingReservation$createBookingReservation$user)
        then,
  ) = _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$user;

  factory CopyWith$Mutation$createBookingReservation$createBookingReservation$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$user<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation$user<
            TRes> {
  _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$user(
    this._instance,
    this._then,
  );

  final Mutation$createBookingReservation$createBookingReservation$user
      _instance;

  final TRes Function(
      Mutation$createBookingReservation$createBookingReservation$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingReservation$createBookingReservation$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$user<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation$user<
            TRes> {
  _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$user(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createBookingReservation$createBookingReservation$branch {
  Mutation$createBookingReservation$createBookingReservation$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$createBookingReservation$createBookingReservation$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingReservation$createBookingReservation$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$createBookingReservation$createBookingReservation$branch ||
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

extension UtilityExtension$Mutation$createBookingReservation$createBookingReservation$branch
    on Mutation$createBookingReservation$createBookingReservation$branch {
  CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
          Mutation$createBookingReservation$createBookingReservation$branch>
      get copyWith =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
    TRes> {
  factory CopyWith$Mutation$createBookingReservation$createBookingReservation$branch(
    Mutation$createBookingReservation$createBookingReservation$branch instance,
    TRes Function(
            Mutation$createBookingReservation$createBookingReservation$branch)
        then,
  ) = _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$branch;

  factory CopyWith$Mutation$createBookingReservation$createBookingReservation$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$branch<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
            TRes> {
  _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$branch(
    this._instance,
    this._then,
  );

  final Mutation$createBookingReservation$createBookingReservation$branch
      _instance;

  final TRes Function(
      Mutation$createBookingReservation$createBookingReservation$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingReservation$createBookingReservation$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$branch<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation$branch<
            TRes> {
  _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createBookingReservation$createBookingReservation$service {
  Mutation$createBookingReservation$createBookingReservation$service({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Mutation$createBookingReservation$createBookingReservation$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingReservation$createBookingReservation$service(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$createBookingReservation$createBookingReservation$service ||
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

extension UtilityExtension$Mutation$createBookingReservation$createBookingReservation$service
    on Mutation$createBookingReservation$createBookingReservation$service {
  CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
          Mutation$createBookingReservation$createBookingReservation$service>
      get copyWith =>
          CopyWith$Mutation$createBookingReservation$createBookingReservation$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
    TRes> {
  factory CopyWith$Mutation$createBookingReservation$createBookingReservation$service(
    Mutation$createBookingReservation$createBookingReservation$service instance,
    TRes Function(
            Mutation$createBookingReservation$createBookingReservation$service)
        then,
  ) = _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$service;

  factory CopyWith$Mutation$createBookingReservation$createBookingReservation$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$service;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$service<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
            TRes> {
  _CopyWithImpl$Mutation$createBookingReservation$createBookingReservation$service(
    this._instance,
    this._then,
  );

  final Mutation$createBookingReservation$createBookingReservation$service
      _instance;

  final TRes Function(
      Mutation$createBookingReservation$createBookingReservation$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingReservation$createBookingReservation$service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$service<
        TRes>
    implements
        CopyWith$Mutation$createBookingReservation$createBookingReservation$service<
            TRes> {
  _CopyWithStubImpl$Mutation$createBookingReservation$createBookingReservation$service(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createBookingService {
  factory Variables$Mutation$createBookingService(
          {required Input$BookingServiceInput input}) =>
      Variables$Mutation$createBookingService._({
        r'input': input,
      });

  Variables$Mutation$createBookingService._(this._$data);

  factory Variables$Mutation$createBookingService.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BookingServiceInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createBookingService._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BookingServiceInput get input =>
      (_$data['input'] as Input$BookingServiceInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createBookingService<
          Variables$Mutation$createBookingService>
      get copyWith => CopyWith$Variables$Mutation$createBookingService(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createBookingService ||
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

abstract class CopyWith$Variables$Mutation$createBookingService<TRes> {
  factory CopyWith$Variables$Mutation$createBookingService(
    Variables$Mutation$createBookingService instance,
    TRes Function(Variables$Mutation$createBookingService) then,
  ) = _CopyWithImpl$Variables$Mutation$createBookingService;

  factory CopyWith$Variables$Mutation$createBookingService.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createBookingService;

  TRes call({Input$BookingServiceInput? input});
}

class _CopyWithImpl$Variables$Mutation$createBookingService<TRes>
    implements CopyWith$Variables$Mutation$createBookingService<TRes> {
  _CopyWithImpl$Variables$Mutation$createBookingService(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createBookingService _instance;

  final TRes Function(Variables$Mutation$createBookingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createBookingService._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BookingServiceInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createBookingService<TRes>
    implements CopyWith$Variables$Mutation$createBookingService<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createBookingService(this._res);

  final TRes _res;

  @override
  call({Input$BookingServiceInput? input}) => _res;
}

class Mutation$createBookingService {
  Mutation$createBookingService({
    required this.createBookingService,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createBookingService.fromJson(Map<String, dynamic> json) {
    final l$createBookingService = json['createBookingService'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingService(
      createBookingService:
          Mutation$createBookingService$createBookingService.fromJson(
              (l$createBookingService as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createBookingService$createBookingService createBookingService;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$createBookingService = createBookingService;
    resultData['createBookingService'] = l$createBookingService.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$createBookingService = createBookingService;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createBookingService,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createBookingService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createBookingService = createBookingService;
    final lOther$createBookingService = other.createBookingService;
    if (l$createBookingService != lOther$createBookingService) {
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

extension UtilityExtension$Mutation$createBookingService
    on Mutation$createBookingService {
  CopyWith$Mutation$createBookingService<Mutation$createBookingService>
      get copyWith => CopyWith$Mutation$createBookingService(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingService<TRes> {
  factory CopyWith$Mutation$createBookingService(
    Mutation$createBookingService instance,
    TRes Function(Mutation$createBookingService) then,
  ) = _CopyWithImpl$Mutation$createBookingService;

  factory CopyWith$Mutation$createBookingService.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createBookingService;

  TRes call({
    Mutation$createBookingService$createBookingService? createBookingService,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingService$createBookingService<TRes>
      get createBookingService;
}

class _CopyWithImpl$Mutation$createBookingService<TRes>
    implements CopyWith$Mutation$createBookingService<TRes> {
  _CopyWithImpl$Mutation$createBookingService(
    this._instance,
    this._then,
  );

  final Mutation$createBookingService _instance;

  final TRes Function(Mutation$createBookingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? createBookingService = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingService(
        createBookingService:
            createBookingService == _undefined || createBookingService == null
                ? _instance.createBookingService
                : (createBookingService
                    as Mutation$createBookingService$createBookingService),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createBookingService$createBookingService<TRes>
      get createBookingService {
    final local$createBookingService = _instance.createBookingService;
    return CopyWith$Mutation$createBookingService$createBookingService(
        local$createBookingService, (e) => call(createBookingService: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingService<TRes>
    implements CopyWith$Mutation$createBookingService<TRes> {
  _CopyWithStubImpl$Mutation$createBookingService(this._res);

  final TRes _res;

  @override
  call({
    Mutation$createBookingService$createBookingService? createBookingService,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createBookingService$createBookingService<TRes>
      get createBookingService =>
          CopyWith$Mutation$createBookingService$createBookingService.stub(
              _res);
}

const documentNodeMutationcreateBookingService = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createBookingService'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingServiceInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createBookingService'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
            name: NameNode(value: 'isActive'),
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
            name: NameNode(value: 'duration'),
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
Mutation$createBookingService _parserFn$Mutation$createBookingService(
        Map<String, dynamic> data) =>
    Mutation$createBookingService.fromJson(data);
typedef OnMutationCompleted$Mutation$createBookingService = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$createBookingService?,
);

class Options$Mutation$createBookingService
    extends graphql.MutationOptions<Mutation$createBookingService> {
  Options$Mutation$createBookingService({
    String? operationName,
    required Variables$Mutation$createBookingService variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingService? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingService? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingService>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingService(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingService,
          parserFn: _parserFn$Mutation$createBookingService,
        );

  final OnMutationCompleted$Mutation$createBookingService?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createBookingService
    extends graphql.WatchQueryOptions<Mutation$createBookingService> {
  WatchOptions$Mutation$createBookingService({
    String? operationName,
    required Variables$Mutation$createBookingService variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingService? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcreateBookingService,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createBookingService,
        );
}

extension ClientExtension$Mutation$createBookingService
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createBookingService>>
      mutate$createBookingService(
              Options$Mutation$createBookingService options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$createBookingService>
      watchMutation$createBookingService(
              WatchOptions$Mutation$createBookingService options) =>
          watchMutation(options);
}

class Mutation$createBookingService$HookResult {
  Mutation$createBookingService$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createBookingService runMutation;

  final graphql.QueryResult<Mutation$createBookingService> result;
}

Mutation$createBookingService$HookResult useMutation$createBookingService(
    [WidgetOptions$Mutation$createBookingService? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createBookingService());
  return Mutation$createBookingService$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createBookingService>
    useWatchMutation$createBookingService(
            WatchOptions$Mutation$createBookingService options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createBookingService
    extends graphql.MutationOptions<Mutation$createBookingService> {
  WidgetOptions$Mutation$createBookingService({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createBookingService? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createBookingService? onCompleted,
    graphql.OnMutationUpdate<Mutation$createBookingService>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createBookingService(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateBookingService,
          parserFn: _parserFn$Mutation$createBookingService,
        );

  final OnMutationCompleted$Mutation$createBookingService?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createBookingService
    = graphql.MultiSourceResult<Mutation$createBookingService> Function(
  Variables$Mutation$createBookingService, {
  Object? optimisticResult,
  Mutation$createBookingService? typedOptimisticResult,
});
typedef Builder$Mutation$createBookingService = widgets.Widget Function(
  RunMutation$Mutation$createBookingService,
  graphql.QueryResult<Mutation$createBookingService>?,
);

class Mutation$createBookingService$Widget
    extends graphql_flutter.Mutation<Mutation$createBookingService> {
  Mutation$createBookingService$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createBookingService? options,
    required Builder$Mutation$createBookingService builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createBookingService(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$createBookingService$createBookingService {
  Mutation$createBookingService$createBookingService({
    required this.id,
    required this.branchId,
    required this.branch,
    this.isActive,
    required this.name,
    required this.duration,
    this.$__typename = 'BookingService',
  });

  factory Mutation$createBookingService$createBookingService.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$branchId = json['branchId'];
    final l$branch = json['branch'];
    final l$isActive = json['isActive'];
    final l$name = json['name'];
    final l$duration = json['duration'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingService$createBookingService(
      id: (l$id as String),
      branchId: (l$branchId as String),
      branch:
          Mutation$createBookingService$createBookingService$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      isActive: (l$isActive as bool?),
      name: (l$name as String),
      duration: (l$duration as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String branchId;

  final Mutation$createBookingService$createBookingService$branch branch;

  final bool? isActive;

  final String name;

  final int duration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch.toJson();
    final l$isActive = isActive;
    resultData['isActive'] = l$isActive;
    final l$name = name;
    resultData['name'] = l$name;
    final l$duration = duration;
    resultData['duration'] = l$duration;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$branchId = branchId;
    final l$branch = branch;
    final l$isActive = isActive;
    final l$name = name;
    final l$duration = duration;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$branchId,
      l$branch,
      l$isActive,
      l$name,
      l$duration,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createBookingService$createBookingService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createBookingService$createBookingService
    on Mutation$createBookingService$createBookingService {
  CopyWith$Mutation$createBookingService$createBookingService<
          Mutation$createBookingService$createBookingService>
      get copyWith =>
          CopyWith$Mutation$createBookingService$createBookingService(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingService$createBookingService<
    TRes> {
  factory CopyWith$Mutation$createBookingService$createBookingService(
    Mutation$createBookingService$createBookingService instance,
    TRes Function(Mutation$createBookingService$createBookingService) then,
  ) = _CopyWithImpl$Mutation$createBookingService$createBookingService;

  factory CopyWith$Mutation$createBookingService$createBookingService.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingService$createBookingService;

  TRes call({
    String? id,
    String? branchId,
    Mutation$createBookingService$createBookingService$branch? branch,
    bool? isActive,
    String? name,
    int? duration,
    String? $__typename,
  });
  CopyWith$Mutation$createBookingService$createBookingService$branch<TRes>
      get branch;
}

class _CopyWithImpl$Mutation$createBookingService$createBookingService<TRes>
    implements
        CopyWith$Mutation$createBookingService$createBookingService<TRes> {
  _CopyWithImpl$Mutation$createBookingService$createBookingService(
    this._instance,
    this._then,
  );

  final Mutation$createBookingService$createBookingService _instance;

  final TRes Function(Mutation$createBookingService$createBookingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? branchId = _undefined,
    Object? branch = _undefined,
    Object? isActive = _undefined,
    Object? name = _undefined,
    Object? duration = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingService$createBookingService(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch
                as Mutation$createBookingService$createBookingService$branch),
        isActive:
            isActive == _undefined ? _instance.isActive : (isActive as bool?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createBookingService$createBookingService$branch<TRes>
      get branch {
    final local$branch = _instance.branch;
    return CopyWith$Mutation$createBookingService$createBookingService$branch(
        local$branch, (e) => call(branch: e));
  }
}

class _CopyWithStubImpl$Mutation$createBookingService$createBookingService<TRes>
    implements
        CopyWith$Mutation$createBookingService$createBookingService<TRes> {
  _CopyWithStubImpl$Mutation$createBookingService$createBookingService(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? branchId,
    Mutation$createBookingService$createBookingService$branch? branch,
    bool? isActive,
    String? name,
    int? duration,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createBookingService$createBookingService$branch<TRes>
      get branch =>
          CopyWith$Mutation$createBookingService$createBookingService$branch
              .stub(_res);
}

class Mutation$createBookingService$createBookingService$branch {
  Mutation$createBookingService$createBookingService$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$createBookingService$createBookingService$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createBookingService$createBookingService$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createBookingService$createBookingService$branch ||
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

extension UtilityExtension$Mutation$createBookingService$createBookingService$branch
    on Mutation$createBookingService$createBookingService$branch {
  CopyWith$Mutation$createBookingService$createBookingService$branch<
          Mutation$createBookingService$createBookingService$branch>
      get copyWith =>
          CopyWith$Mutation$createBookingService$createBookingService$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createBookingService$createBookingService$branch<
    TRes> {
  factory CopyWith$Mutation$createBookingService$createBookingService$branch(
    Mutation$createBookingService$createBookingService$branch instance,
    TRes Function(Mutation$createBookingService$createBookingService$branch)
        then,
  ) = _CopyWithImpl$Mutation$createBookingService$createBookingService$branch;

  factory CopyWith$Mutation$createBookingService$createBookingService$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createBookingService$createBookingService$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createBookingService$createBookingService$branch<
        TRes>
    implements
        CopyWith$Mutation$createBookingService$createBookingService$branch<
            TRes> {
  _CopyWithImpl$Mutation$createBookingService$createBookingService$branch(
    this._instance,
    this._then,
  );

  final Mutation$createBookingService$createBookingService$branch _instance;

  final TRes Function(Mutation$createBookingService$createBookingService$branch)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createBookingService$createBookingService$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createBookingService$createBookingService$branch<
        TRes>
    implements
        CopyWith$Mutation$createBookingService$createBookingService$branch<
            TRes> {
  _CopyWithStubImpl$Mutation$createBookingService$createBookingService$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createRegularUser {
  factory Variables$Mutation$createRegularUser(
          {required Input$RegularUserInput input}) =>
      Variables$Mutation$createRegularUser._({
        r'input': input,
      });

  Variables$Mutation$createRegularUser._(this._$data);

  factory Variables$Mutation$createRegularUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$RegularUserInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createRegularUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RegularUserInput get input =>
      (_$data['input'] as Input$RegularUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createRegularUser<
          Variables$Mutation$createRegularUser>
      get copyWith => CopyWith$Variables$Mutation$createRegularUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createRegularUser ||
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

abstract class CopyWith$Variables$Mutation$createRegularUser<TRes> {
  factory CopyWith$Variables$Mutation$createRegularUser(
    Variables$Mutation$createRegularUser instance,
    TRes Function(Variables$Mutation$createRegularUser) then,
  ) = _CopyWithImpl$Variables$Mutation$createRegularUser;

  factory CopyWith$Variables$Mutation$createRegularUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createRegularUser;

  TRes call({Input$RegularUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$createRegularUser<TRes>
    implements CopyWith$Variables$Mutation$createRegularUser<TRes> {
  _CopyWithImpl$Variables$Mutation$createRegularUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createRegularUser _instance;

  final TRes Function(Variables$Mutation$createRegularUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createRegularUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$RegularUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createRegularUser<TRes>
    implements CopyWith$Variables$Mutation$createRegularUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createRegularUser(this._res);

  final TRes _res;

  @override
  call({Input$RegularUserInput? input}) => _res;
}

class Mutation$createRegularUser {
  Mutation$createRegularUser({
    required this.createRegularUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createRegularUser.fromJson(Map<String, dynamic> json) {
    final l$createRegularUser = json['createRegularUser'];
    final l$$__typename = json['__typename'];
    return Mutation$createRegularUser(
      createRegularUser: Mutation$createRegularUser$createRegularUser.fromJson(
          (l$createRegularUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createRegularUser$createRegularUser createRegularUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$createRegularUser = createRegularUser;
    resultData['createRegularUser'] = l$createRegularUser.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$createRegularUser = createRegularUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createRegularUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createRegularUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createRegularUser = createRegularUser;
    final lOther$createRegularUser = other.createRegularUser;
    if (l$createRegularUser != lOther$createRegularUser) {
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

extension UtilityExtension$Mutation$createRegularUser
    on Mutation$createRegularUser {
  CopyWith$Mutation$createRegularUser<Mutation$createRegularUser>
      get copyWith => CopyWith$Mutation$createRegularUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createRegularUser<TRes> {
  factory CopyWith$Mutation$createRegularUser(
    Mutation$createRegularUser instance,
    TRes Function(Mutation$createRegularUser) then,
  ) = _CopyWithImpl$Mutation$createRegularUser;

  factory CopyWith$Mutation$createRegularUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createRegularUser;

  TRes call({
    Mutation$createRegularUser$createRegularUser? createRegularUser,
    String? $__typename,
  });
  CopyWith$Mutation$createRegularUser$createRegularUser<TRes>
      get createRegularUser;
}

class _CopyWithImpl$Mutation$createRegularUser<TRes>
    implements CopyWith$Mutation$createRegularUser<TRes> {
  _CopyWithImpl$Mutation$createRegularUser(
    this._instance,
    this._then,
  );

  final Mutation$createRegularUser _instance;

  final TRes Function(Mutation$createRegularUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? createRegularUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createRegularUser(
        createRegularUser:
            createRegularUser == _undefined || createRegularUser == null
                ? _instance.createRegularUser
                : (createRegularUser
                    as Mutation$createRegularUser$createRegularUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$createRegularUser$createRegularUser<TRes>
      get createRegularUser {
    final local$createRegularUser = _instance.createRegularUser;
    return CopyWith$Mutation$createRegularUser$createRegularUser(
        local$createRegularUser, (e) => call(createRegularUser: e));
  }
}

class _CopyWithStubImpl$Mutation$createRegularUser<TRes>
    implements CopyWith$Mutation$createRegularUser<TRes> {
  _CopyWithStubImpl$Mutation$createRegularUser(this._res);

  final TRes _res;

  @override
  call({
    Mutation$createRegularUser$createRegularUser? createRegularUser,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$createRegularUser$createRegularUser<TRes>
      get createRegularUser =>
          CopyWith$Mutation$createRegularUser$createRegularUser.stub(_res);
}

const documentNodeMutationcreateRegularUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createRegularUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'RegularUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createRegularUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$createRegularUser _parserFn$Mutation$createRegularUser(
        Map<String, dynamic> data) =>
    Mutation$createRegularUser.fromJson(data);
typedef OnMutationCompleted$Mutation$createRegularUser = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$createRegularUser?,
);

class Options$Mutation$createRegularUser
    extends graphql.MutationOptions<Mutation$createRegularUser> {
  Options$Mutation$createRegularUser({
    String? operationName,
    required Variables$Mutation$createRegularUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createRegularUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createRegularUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$createRegularUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createRegularUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateRegularUser,
          parserFn: _parserFn$Mutation$createRegularUser,
        );

  final OnMutationCompleted$Mutation$createRegularUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createRegularUser
    extends graphql.WatchQueryOptions<Mutation$createRegularUser> {
  WatchOptions$Mutation$createRegularUser({
    String? operationName,
    required Variables$Mutation$createRegularUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createRegularUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcreateRegularUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createRegularUser,
        );
}

extension ClientExtension$Mutation$createRegularUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createRegularUser>>
      mutate$createRegularUser(
              Options$Mutation$createRegularUser options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$createRegularUser>
      watchMutation$createRegularUser(
              WatchOptions$Mutation$createRegularUser options) =>
          watchMutation(options);
}

class Mutation$createRegularUser$HookResult {
  Mutation$createRegularUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createRegularUser runMutation;

  final graphql.QueryResult<Mutation$createRegularUser> result;
}

Mutation$createRegularUser$HookResult useMutation$createRegularUser(
    [WidgetOptions$Mutation$createRegularUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createRegularUser());
  return Mutation$createRegularUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createRegularUser>
    useWatchMutation$createRegularUser(
            WatchOptions$Mutation$createRegularUser options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createRegularUser
    extends graphql.MutationOptions<Mutation$createRegularUser> {
  WidgetOptions$Mutation$createRegularUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createRegularUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createRegularUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$createRegularUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createRegularUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateRegularUser,
          parserFn: _parserFn$Mutation$createRegularUser,
        );

  final OnMutationCompleted$Mutation$createRegularUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createRegularUser
    = graphql.MultiSourceResult<Mutation$createRegularUser> Function(
  Variables$Mutation$createRegularUser, {
  Object? optimisticResult,
  Mutation$createRegularUser? typedOptimisticResult,
});
typedef Builder$Mutation$createRegularUser = widgets.Widget Function(
  RunMutation$Mutation$createRegularUser,
  graphql.QueryResult<Mutation$createRegularUser>?,
);

class Mutation$createRegularUser$Widget
    extends graphql_flutter.Mutation<Mutation$createRegularUser> {
  Mutation$createRegularUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createRegularUser? options,
    required Builder$Mutation$createRegularUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createRegularUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$createRegularUser$createRegularUser {
  Mutation$createRegularUser$createRegularUser({
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

  factory Mutation$createRegularUser$createRegularUser.fromJson(
      Map<String, dynamic> json) {
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
    return Mutation$createRegularUser$createRegularUser(
      id: (l$id as String),
      roles: (l$roles as List<dynamic>)
          .map((e) =>
              Mutation$createRegularUser$createRegularUser$roles.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Mutation$createRegularUser$createRegularUser$permissions.fromJson(
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

  final List<Mutation$createRegularUser$createRegularUser$roles> roles;

  final List<Mutation$createRegularUser$createRegularUser$permissions>
      permissions;

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
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$roles = roles;
    resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$permissions = permissions;
    resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$firstName = firstName;
    resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    resultData['lastName'] = l$lastName;
    final l$email = email;
    resultData['email'] = l$email;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$password = password;
    resultData['password'] = l$password;
    final l$visitCount = visitCount;
    resultData['visitCount'] = l$visitCount;
    final l$level = level;
    resultData['level'] = l$level;
    final l$birthDate = birthDate;
    resultData['birthDate'] = l$birthDate;
    final l$gender = gender;
    resultData['gender'] = l$gender;
    final l$photo = photo;
    resultData['photo'] = l$photo;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createRegularUser$createRegularUser ||
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

extension UtilityExtension$Mutation$createRegularUser$createRegularUser
    on Mutation$createRegularUser$createRegularUser {
  CopyWith$Mutation$createRegularUser$createRegularUser<
          Mutation$createRegularUser$createRegularUser>
      get copyWith => CopyWith$Mutation$createRegularUser$createRegularUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createRegularUser$createRegularUser<TRes> {
  factory CopyWith$Mutation$createRegularUser$createRegularUser(
    Mutation$createRegularUser$createRegularUser instance,
    TRes Function(Mutation$createRegularUser$createRegularUser) then,
  ) = _CopyWithImpl$Mutation$createRegularUser$createRegularUser;

  factory CopyWith$Mutation$createRegularUser$createRegularUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser;

  TRes call({
    String? id,
    List<Mutation$createRegularUser$createRegularUser$roles>? roles,
    List<Mutation$createRegularUser$createRegularUser$permissions>? permissions,
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
      Iterable<Mutation$createRegularUser$createRegularUser$roles> Function(
              Iterable<
                  CopyWith$Mutation$createRegularUser$createRegularUser$roles<
                      Mutation$createRegularUser$createRegularUser$roles>>)
          fn);
  TRes permissions(
      Iterable<Mutation$createRegularUser$createRegularUser$permissions> Function(
              Iterable<
                  CopyWith$Mutation$createRegularUser$createRegularUser$permissions<
                      Mutation$createRegularUser$createRegularUser$permissions>>)
          fn);
}

class _CopyWithImpl$Mutation$createRegularUser$createRegularUser<TRes>
    implements CopyWith$Mutation$createRegularUser$createRegularUser<TRes> {
  _CopyWithImpl$Mutation$createRegularUser$createRegularUser(
    this._instance,
    this._then,
  );

  final Mutation$createRegularUser$createRegularUser _instance;

  final TRes Function(Mutation$createRegularUser$createRegularUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$createRegularUser$createRegularUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles
                as List<Mutation$createRegularUser$createRegularUser$roles>),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<
                Mutation$createRegularUser$createRegularUser$permissions>),
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
  @override
  TRes roles(
          Iterable<Mutation$createRegularUser$createRegularUser$roles> Function(
                  Iterable<
                      CopyWith$Mutation$createRegularUser$createRegularUser$roles<
                          Mutation$createRegularUser$createRegularUser$roles>>)
              fn) =>
      call(
          roles: fn(_instance.roles.map((e) =>
              CopyWith$Mutation$createRegularUser$createRegularUser$roles(
                e,
                (i) => i,
              ))).toList());
  @override
  TRes permissions(
          Iterable<Mutation$createRegularUser$createRegularUser$permissions> Function(
                  Iterable<
                      CopyWith$Mutation$createRegularUser$createRegularUser$permissions<
                          Mutation$createRegularUser$createRegularUser$permissions>>)
              fn) =>
      call(
          permissions: fn(_instance.permissions.map((e) =>
              CopyWith$Mutation$createRegularUser$createRegularUser$permissions(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser<TRes>
    implements CopyWith$Mutation$createRegularUser$createRegularUser<TRes> {
  _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    List<Mutation$createRegularUser$createRegularUser$roles>? roles,
    List<Mutation$createRegularUser$createRegularUser$permissions>? permissions,
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
  @override
  roles(fn) => _res;
  @override
  permissions(fn) => _res;
}

class Mutation$createRegularUser$createRegularUser$roles {
  Mutation$createRegularUser$createRegularUser$roles({
    this.id,
    this.name,
    this.$__typename = 'Role',
  });

  factory Mutation$createRegularUser$createRegularUser$roles.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createRegularUser$createRegularUser$roles(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createRegularUser$createRegularUser$roles ||
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

extension UtilityExtension$Mutation$createRegularUser$createRegularUser$roles
    on Mutation$createRegularUser$createRegularUser$roles {
  CopyWith$Mutation$createRegularUser$createRegularUser$roles<
          Mutation$createRegularUser$createRegularUser$roles>
      get copyWith =>
          CopyWith$Mutation$createRegularUser$createRegularUser$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createRegularUser$createRegularUser$roles<
    TRes> {
  factory CopyWith$Mutation$createRegularUser$createRegularUser$roles(
    Mutation$createRegularUser$createRegularUser$roles instance,
    TRes Function(Mutation$createRegularUser$createRegularUser$roles) then,
  ) = _CopyWithImpl$Mutation$createRegularUser$createRegularUser$roles;

  factory CopyWith$Mutation$createRegularUser$createRegularUser$roles.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser$roles;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createRegularUser$createRegularUser$roles<TRes>
    implements
        CopyWith$Mutation$createRegularUser$createRegularUser$roles<TRes> {
  _CopyWithImpl$Mutation$createRegularUser$createRegularUser$roles(
    this._instance,
    this._then,
  );

  final Mutation$createRegularUser$createRegularUser$roles _instance;

  final TRes Function(Mutation$createRegularUser$createRegularUser$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createRegularUser$createRegularUser$roles(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser$roles<TRes>
    implements
        CopyWith$Mutation$createRegularUser$createRegularUser$roles<TRes> {
  _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser$roles(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createRegularUser$createRegularUser$permissions {
  Mutation$createRegularUser$createRegularUser$permissions({
    this.id,
    this.name,
    this.$__typename = 'Permission',
  });

  factory Mutation$createRegularUser$createRegularUser$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createRegularUser$createRegularUser$permissions(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$createRegularUser$createRegularUser$permissions ||
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

extension UtilityExtension$Mutation$createRegularUser$createRegularUser$permissions
    on Mutation$createRegularUser$createRegularUser$permissions {
  CopyWith$Mutation$createRegularUser$createRegularUser$permissions<
          Mutation$createRegularUser$createRegularUser$permissions>
      get copyWith =>
          CopyWith$Mutation$createRegularUser$createRegularUser$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createRegularUser$createRegularUser$permissions<
    TRes> {
  factory CopyWith$Mutation$createRegularUser$createRegularUser$permissions(
    Mutation$createRegularUser$createRegularUser$permissions instance,
    TRes Function(Mutation$createRegularUser$createRegularUser$permissions)
        then,
  ) = _CopyWithImpl$Mutation$createRegularUser$createRegularUser$permissions;

  factory CopyWith$Mutation$createRegularUser$createRegularUser$permissions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser$permissions;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createRegularUser$createRegularUser$permissions<
        TRes>
    implements
        CopyWith$Mutation$createRegularUser$createRegularUser$permissions<
            TRes> {
  _CopyWithImpl$Mutation$createRegularUser$createRegularUser$permissions(
    this._instance,
    this._then,
  );

  final Mutation$createRegularUser$createRegularUser$permissions _instance;

  final TRes Function(Mutation$createRegularUser$createRegularUser$permissions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createRegularUser$createRegularUser$permissions(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser$permissions<
        TRes>
    implements
        CopyWith$Mutation$createRegularUser$createRegularUser$permissions<
            TRes> {
  _CopyWithStubImpl$Mutation$createRegularUser$createRegularUser$permissions(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$customerBooking {
  factory Variables$Mutation$customerBooking(
          {required Input$BookingReservationInput input}) =>
      Variables$Mutation$customerBooking._({
        r'input': input,
      });

  Variables$Mutation$customerBooking._(this._$data);

  factory Variables$Mutation$customerBooking.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$BookingReservationInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$customerBooking._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BookingReservationInput get input =>
      (_$data['input'] as Input$BookingReservationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$customerBooking<
          Variables$Mutation$customerBooking>
      get copyWith => CopyWith$Variables$Mutation$customerBooking(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$customerBooking ||
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

abstract class CopyWith$Variables$Mutation$customerBooking<TRes> {
  factory CopyWith$Variables$Mutation$customerBooking(
    Variables$Mutation$customerBooking instance,
    TRes Function(Variables$Mutation$customerBooking) then,
  ) = _CopyWithImpl$Variables$Mutation$customerBooking;

  factory CopyWith$Variables$Mutation$customerBooking.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$customerBooking;

  TRes call({Input$BookingReservationInput? input});
}

class _CopyWithImpl$Variables$Mutation$customerBooking<TRes>
    implements CopyWith$Variables$Mutation$customerBooking<TRes> {
  _CopyWithImpl$Variables$Mutation$customerBooking(
    this._instance,
    this._then,
  );

  final Variables$Mutation$customerBooking _instance;

  final TRes Function(Variables$Mutation$customerBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$customerBooking._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BookingReservationInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$customerBooking<TRes>
    implements CopyWith$Variables$Mutation$customerBooking<TRes> {
  _CopyWithStubImpl$Variables$Mutation$customerBooking(this._res);

  final TRes _res;

  @override
  call({Input$BookingReservationInput? input}) => _res;
}

class Mutation$customerBooking {
  Mutation$customerBooking({
    required this.customerBooking,
    this.$__typename = 'Mutation',
  });

  factory Mutation$customerBooking.fromJson(Map<String, dynamic> json) {
    final l$customerBooking = json['customerBooking'];
    final l$$__typename = json['__typename'];
    return Mutation$customerBooking(
      customerBooking: Mutation$customerBooking$customerBooking.fromJson(
          (l$customerBooking as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$customerBooking$customerBooking customerBooking;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$customerBooking = customerBooking;
    resultData['customerBooking'] = l$customerBooking.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$customerBooking = customerBooking;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerBooking,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$customerBooking ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerBooking = customerBooking;
    final lOther$customerBooking = other.customerBooking;
    if (l$customerBooking != lOther$customerBooking) {
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

extension UtilityExtension$Mutation$customerBooking
    on Mutation$customerBooking {
  CopyWith$Mutation$customerBooking<Mutation$customerBooking> get copyWith =>
      CopyWith$Mutation$customerBooking(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$customerBooking<TRes> {
  factory CopyWith$Mutation$customerBooking(
    Mutation$customerBooking instance,
    TRes Function(Mutation$customerBooking) then,
  ) = _CopyWithImpl$Mutation$customerBooking;

  factory CopyWith$Mutation$customerBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$customerBooking;

  TRes call({
    Mutation$customerBooking$customerBooking? customerBooking,
    String? $__typename,
  });
  CopyWith$Mutation$customerBooking$customerBooking<TRes> get customerBooking;
}

class _CopyWithImpl$Mutation$customerBooking<TRes>
    implements CopyWith$Mutation$customerBooking<TRes> {
  _CopyWithImpl$Mutation$customerBooking(
    this._instance,
    this._then,
  );

  final Mutation$customerBooking _instance;

  final TRes Function(Mutation$customerBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? customerBooking = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerBooking(
        customerBooking:
            customerBooking == _undefined || customerBooking == null
                ? _instance.customerBooking
                : (customerBooking as Mutation$customerBooking$customerBooking),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$customerBooking$customerBooking<TRes> get customerBooking {
    final local$customerBooking = _instance.customerBooking;
    return CopyWith$Mutation$customerBooking$customerBooking(
        local$customerBooking, (e) => call(customerBooking: e));
  }
}

class _CopyWithStubImpl$Mutation$customerBooking<TRes>
    implements CopyWith$Mutation$customerBooking<TRes> {
  _CopyWithStubImpl$Mutation$customerBooking(this._res);

  final TRes _res;

  @override
  call({
    Mutation$customerBooking$customerBooking? customerBooking,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$customerBooking$customerBooking<TRes> get customerBooking =>
      CopyWith$Mutation$customerBooking$customerBooking.stub(_res);
}

const documentNodeMutationcustomerBooking = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'customerBooking'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingReservationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'customerBooking'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$customerBooking _parserFn$Mutation$customerBooking(
        Map<String, dynamic> data) =>
    Mutation$customerBooking.fromJson(data);
typedef OnMutationCompleted$Mutation$customerBooking = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$customerBooking?,
);

class Options$Mutation$customerBooking
    extends graphql.MutationOptions<Mutation$customerBooking> {
  Options$Mutation$customerBooking({
    String? operationName,
    required Variables$Mutation$customerBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$customerBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$customerBooking>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$customerBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcustomerBooking,
          parserFn: _parserFn$Mutation$customerBooking,
        );

  final OnMutationCompleted$Mutation$customerBooking? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$customerBooking
    extends graphql.WatchQueryOptions<Mutation$customerBooking> {
  WatchOptions$Mutation$customerBooking({
    String? operationName,
    required Variables$Mutation$customerBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerBooking? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcustomerBooking,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$customerBooking,
        );
}

extension ClientExtension$Mutation$customerBooking on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$customerBooking>> mutate$customerBooking(
          Options$Mutation$customerBooking options) async =>
      await mutate(options);
  graphql.ObservableQuery<Mutation$customerBooking>
      watchMutation$customerBooking(
              WatchOptions$Mutation$customerBooking options) =>
          watchMutation(options);
}

class Mutation$customerBooking$HookResult {
  Mutation$customerBooking$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$customerBooking runMutation;

  final graphql.QueryResult<Mutation$customerBooking> result;
}

Mutation$customerBooking$HookResult useMutation$customerBooking(
    [WidgetOptions$Mutation$customerBooking? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$customerBooking());
  return Mutation$customerBooking$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$customerBooking>
    useWatchMutation$customerBooking(
            WatchOptions$Mutation$customerBooking options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$customerBooking
    extends graphql.MutationOptions<Mutation$customerBooking> {
  WidgetOptions$Mutation$customerBooking({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$customerBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$customerBooking>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$customerBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcustomerBooking,
          parserFn: _parserFn$Mutation$customerBooking,
        );

  final OnMutationCompleted$Mutation$customerBooking? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$customerBooking
    = graphql.MultiSourceResult<Mutation$customerBooking> Function(
  Variables$Mutation$customerBooking, {
  Object? optimisticResult,
  Mutation$customerBooking? typedOptimisticResult,
});
typedef Builder$Mutation$customerBooking = widgets.Widget Function(
  RunMutation$Mutation$customerBooking,
  graphql.QueryResult<Mutation$customerBooking>?,
);

class Mutation$customerBooking$Widget
    extends graphql_flutter.Mutation<Mutation$customerBooking> {
  Mutation$customerBooking$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$customerBooking? options,
    required Builder$Mutation$customerBooking builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$customerBooking(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$customerBooking$customerBooking {
  Mutation$customerBooking$customerBooking({
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

  factory Mutation$customerBooking$customerBooking.fromJson(
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
    return Mutation$customerBooking$customerBooking(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Mutation$customerBooking$customerBooking$user.fromJson(
          (l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String),
      branch: Mutation$customerBooking$customerBooking$branch.fromJson(
          (l$branch as Map<String, dynamic>)),
      serviceId: (l$serviceId as String),
      service: Mutation$customerBooking$customerBooking$service.fromJson(
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

  final Mutation$customerBooking$customerBooking$user user;

  final String branchId;

  final Mutation$customerBooking$customerBooking$branch branch;

  final String serviceId;

  final Mutation$customerBooking$customerBooking$service service;

  final String channel;

  final int date;

  final int time;

  final int? queueNumber;

  final Enum$BookingReservationStatus status;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch.toJson();
    final l$serviceId = serviceId;
    resultData['serviceId'] = l$serviceId;
    final l$service = service;
    resultData['service'] = l$service.toJson();
    final l$channel = channel;
    resultData['channel'] = l$channel;
    final l$date = date;
    resultData['date'] = l$date;
    final l$time = time;
    resultData['time'] = l$time;
    final l$queueNumber = queueNumber;
    resultData['queueNumber'] = l$queueNumber;
    final l$status = status;
    resultData['status'] = toJson$Enum$BookingReservationStatus(l$status);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerBooking$customerBooking ||
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

extension UtilityExtension$Mutation$customerBooking$customerBooking
    on Mutation$customerBooking$customerBooking {
  CopyWith$Mutation$customerBooking$customerBooking<
          Mutation$customerBooking$customerBooking>
      get copyWith => CopyWith$Mutation$customerBooking$customerBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerBooking$customerBooking<TRes> {
  factory CopyWith$Mutation$customerBooking$customerBooking(
    Mutation$customerBooking$customerBooking instance,
    TRes Function(Mutation$customerBooking$customerBooking) then,
  ) = _CopyWithImpl$Mutation$customerBooking$customerBooking;

  factory CopyWith$Mutation$customerBooking$customerBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$customerBooking$customerBooking;

  TRes call({
    String? id,
    String? userId,
    Mutation$customerBooking$customerBooking$user? user,
    String? branchId,
    Mutation$customerBooking$customerBooking$branch? branch,
    String? serviceId,
    Mutation$customerBooking$customerBooking$service? service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$customerBooking$customerBooking$user<TRes> get user;
  CopyWith$Mutation$customerBooking$customerBooking$branch<TRes> get branch;
  CopyWith$Mutation$customerBooking$customerBooking$service<TRes> get service;
}

class _CopyWithImpl$Mutation$customerBooking$customerBooking<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking<TRes> {
  _CopyWithImpl$Mutation$customerBooking$customerBooking(
    this._instance,
    this._then,
  );

  final Mutation$customerBooking$customerBooking _instance;

  final TRes Function(Mutation$customerBooking$customerBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$customerBooking$customerBooking(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$customerBooking$customerBooking$user),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch as Mutation$customerBooking$customerBooking$branch),
        serviceId: serviceId == _undefined || serviceId == null
            ? _instance.serviceId
            : (serviceId as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Mutation$customerBooking$customerBooking$service),
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
  @override
  CopyWith$Mutation$customerBooking$customerBooking$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$customerBooking$customerBooking$user(
        local$user, (e) => call(user: e));
  }

  @override
  CopyWith$Mutation$customerBooking$customerBooking$branch<TRes> get branch {
    final local$branch = _instance.branch;
    return CopyWith$Mutation$customerBooking$customerBooking$branch(
        local$branch, (e) => call(branch: e));
  }

  @override
  CopyWith$Mutation$customerBooking$customerBooking$service<TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Mutation$customerBooking$customerBooking$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Mutation$customerBooking$customerBooking<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking<TRes> {
  _CopyWithStubImpl$Mutation$customerBooking$customerBooking(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? userId,
    Mutation$customerBooking$customerBooking$user? user,
    String? branchId,
    Mutation$customerBooking$customerBooking$branch? branch,
    String? serviceId,
    Mutation$customerBooking$customerBooking$service? service,
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
  @override
  CopyWith$Mutation$customerBooking$customerBooking$user<TRes> get user =>
      CopyWith$Mutation$customerBooking$customerBooking$user.stub(_res);
  @override
  CopyWith$Mutation$customerBooking$customerBooking$branch<TRes> get branch =>
      CopyWith$Mutation$customerBooking$customerBooking$branch.stub(_res);
  @override
  CopyWith$Mutation$customerBooking$customerBooking$service<TRes> get service =>
      CopyWith$Mutation$customerBooking$customerBooking$service.stub(_res);
}

class Mutation$customerBooking$customerBooking$user {
  Mutation$customerBooking$customerBooking$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$customerBooking$customerBooking$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$customerBooking$customerBooking$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerBooking$customerBooking$user ||
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

extension UtilityExtension$Mutation$customerBooking$customerBooking$user
    on Mutation$customerBooking$customerBooking$user {
  CopyWith$Mutation$customerBooking$customerBooking$user<
          Mutation$customerBooking$customerBooking$user>
      get copyWith => CopyWith$Mutation$customerBooking$customerBooking$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerBooking$customerBooking$user<TRes> {
  factory CopyWith$Mutation$customerBooking$customerBooking$user(
    Mutation$customerBooking$customerBooking$user instance,
    TRes Function(Mutation$customerBooking$customerBooking$user) then,
  ) = _CopyWithImpl$Mutation$customerBooking$customerBooking$user;

  factory CopyWith$Mutation$customerBooking$customerBooking$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerBooking$customerBooking$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerBooking$customerBooking$user<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking$user<TRes> {
  _CopyWithImpl$Mutation$customerBooking$customerBooking$user(
    this._instance,
    this._then,
  );

  final Mutation$customerBooking$customerBooking$user _instance;

  final TRes Function(Mutation$customerBooking$customerBooking$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerBooking$customerBooking$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerBooking$customerBooking$user<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking$user<TRes> {
  _CopyWithStubImpl$Mutation$customerBooking$customerBooking$user(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$customerBooking$customerBooking$branch {
  Mutation$customerBooking$customerBooking$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$customerBooking$customerBooking$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$customerBooking$customerBooking$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerBooking$customerBooking$branch ||
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

extension UtilityExtension$Mutation$customerBooking$customerBooking$branch
    on Mutation$customerBooking$customerBooking$branch {
  CopyWith$Mutation$customerBooking$customerBooking$branch<
          Mutation$customerBooking$customerBooking$branch>
      get copyWith => CopyWith$Mutation$customerBooking$customerBooking$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerBooking$customerBooking$branch<TRes> {
  factory CopyWith$Mutation$customerBooking$customerBooking$branch(
    Mutation$customerBooking$customerBooking$branch instance,
    TRes Function(Mutation$customerBooking$customerBooking$branch) then,
  ) = _CopyWithImpl$Mutation$customerBooking$customerBooking$branch;

  factory CopyWith$Mutation$customerBooking$customerBooking$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerBooking$customerBooking$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerBooking$customerBooking$branch<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking$branch<TRes> {
  _CopyWithImpl$Mutation$customerBooking$customerBooking$branch(
    this._instance,
    this._then,
  );

  final Mutation$customerBooking$customerBooking$branch _instance;

  final TRes Function(Mutation$customerBooking$customerBooking$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerBooking$customerBooking$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerBooking$customerBooking$branch<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking$branch<TRes> {
  _CopyWithStubImpl$Mutation$customerBooking$customerBooking$branch(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$customerBooking$customerBooking$service {
  Mutation$customerBooking$customerBooking$service({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Mutation$customerBooking$customerBooking$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$customerBooking$customerBooking$service(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerBooking$customerBooking$service ||
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

extension UtilityExtension$Mutation$customerBooking$customerBooking$service
    on Mutation$customerBooking$customerBooking$service {
  CopyWith$Mutation$customerBooking$customerBooking$service<
          Mutation$customerBooking$customerBooking$service>
      get copyWith => CopyWith$Mutation$customerBooking$customerBooking$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerBooking$customerBooking$service<TRes> {
  factory CopyWith$Mutation$customerBooking$customerBooking$service(
    Mutation$customerBooking$customerBooking$service instance,
    TRes Function(Mutation$customerBooking$customerBooking$service) then,
  ) = _CopyWithImpl$Mutation$customerBooking$customerBooking$service;

  factory CopyWith$Mutation$customerBooking$customerBooking$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerBooking$customerBooking$service;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerBooking$customerBooking$service<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking$service<TRes> {
  _CopyWithImpl$Mutation$customerBooking$customerBooking$service(
    this._instance,
    this._then,
  );

  final Mutation$customerBooking$customerBooking$service _instance;

  final TRes Function(Mutation$customerBooking$customerBooking$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerBooking$customerBooking$service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerBooking$customerBooking$service<TRes>
    implements CopyWith$Mutation$customerBooking$customerBooking$service<TRes> {
  _CopyWithStubImpl$Mutation$customerBooking$customerBooking$service(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$customerCancelBooking {
  factory Variables$Mutation$customerCancelBooking(
          {required String reservationId}) =>
      Variables$Mutation$customerCancelBooking._({
        r'reservationId': reservationId,
      });

  Variables$Mutation$customerCancelBooking._(this._$data);

  factory Variables$Mutation$customerCancelBooking.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reservationId = data['reservationId'];
    result$data['reservationId'] = (l$reservationId as String);
    return Variables$Mutation$customerCancelBooking._(result$data);
  }

  Map<String, dynamic> _$data;

  String get reservationId => (_$data['reservationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reservationId = reservationId;
    result$data['reservationId'] = l$reservationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$customerCancelBooking<
          Variables$Mutation$customerCancelBooking>
      get copyWith => CopyWith$Variables$Mutation$customerCancelBooking(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$customerCancelBooking ||
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

abstract class CopyWith$Variables$Mutation$customerCancelBooking<TRes> {
  factory CopyWith$Variables$Mutation$customerCancelBooking(
    Variables$Mutation$customerCancelBooking instance,
    TRes Function(Variables$Mutation$customerCancelBooking) then,
  ) = _CopyWithImpl$Variables$Mutation$customerCancelBooking;

  factory CopyWith$Variables$Mutation$customerCancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$customerCancelBooking;

  TRes call({String? reservationId});
}

class _CopyWithImpl$Variables$Mutation$customerCancelBooking<TRes>
    implements CopyWith$Variables$Mutation$customerCancelBooking<TRes> {
  _CopyWithImpl$Variables$Mutation$customerCancelBooking(
    this._instance,
    this._then,
  );

  final Variables$Mutation$customerCancelBooking _instance;

  final TRes Function(Variables$Mutation$customerCancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? reservationId = _undefined}) =>
      _then(Variables$Mutation$customerCancelBooking._({
        ..._instance._$data,
        if (reservationId != _undefined && reservationId != null)
          'reservationId': (reservationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$customerCancelBooking<TRes>
    implements CopyWith$Variables$Mutation$customerCancelBooking<TRes> {
  _CopyWithStubImpl$Variables$Mutation$customerCancelBooking(this._res);

  final TRes _res;

  @override
  call({String? reservationId}) => _res;
}

class Mutation$customerCancelBooking {
  Mutation$customerCancelBooking({
    required this.customerCancelBooking,
    this.$__typename = 'Mutation',
  });

  factory Mutation$customerCancelBooking.fromJson(Map<String, dynamic> json) {
    final l$customerCancelBooking = json['customerCancelBooking'];
    final l$$__typename = json['__typename'];
    return Mutation$customerCancelBooking(
      customerCancelBooking: (l$customerCancelBooking as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool customerCancelBooking;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$customerCancelBooking = customerCancelBooking;
    resultData['customerCancelBooking'] = l$customerCancelBooking;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$customerCancelBooking = customerCancelBooking;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerCancelBooking,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$customerCancelBooking ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerCancelBooking = customerCancelBooking;
    final lOther$customerCancelBooking = other.customerCancelBooking;
    if (l$customerCancelBooking != lOther$customerCancelBooking) {
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

extension UtilityExtension$Mutation$customerCancelBooking
    on Mutation$customerCancelBooking {
  CopyWith$Mutation$customerCancelBooking<Mutation$customerCancelBooking>
      get copyWith => CopyWith$Mutation$customerCancelBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerCancelBooking<TRes> {
  factory CopyWith$Mutation$customerCancelBooking(
    Mutation$customerCancelBooking instance,
    TRes Function(Mutation$customerCancelBooking) then,
  ) = _CopyWithImpl$Mutation$customerCancelBooking;

  factory CopyWith$Mutation$customerCancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$customerCancelBooking;

  TRes call({
    bool? customerCancelBooking,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerCancelBooking<TRes>
    implements CopyWith$Mutation$customerCancelBooking<TRes> {
  _CopyWithImpl$Mutation$customerCancelBooking(
    this._instance,
    this._then,
  );

  final Mutation$customerCancelBooking _instance;

  final TRes Function(Mutation$customerCancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? customerCancelBooking = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerCancelBooking(
        customerCancelBooking:
            customerCancelBooking == _undefined || customerCancelBooking == null
                ? _instance.customerCancelBooking
                : (customerCancelBooking as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerCancelBooking<TRes>
    implements CopyWith$Mutation$customerCancelBooking<TRes> {
  _CopyWithStubImpl$Mutation$customerCancelBooking(this._res);

  final TRes _res;

  @override
  call({
    bool? customerCancelBooking,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationcustomerCancelBooking = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'customerCancelBooking'),
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
        name: NameNode(value: 'customerCancelBooking'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reservationId'),
            value: VariableNode(name: NameNode(value: 'reservationId')),
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
Mutation$customerCancelBooking _parserFn$Mutation$customerCancelBooking(
        Map<String, dynamic> data) =>
    Mutation$customerCancelBooking.fromJson(data);
typedef OnMutationCompleted$Mutation$customerCancelBooking = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$customerCancelBooking?,
);

class Options$Mutation$customerCancelBooking
    extends graphql.MutationOptions<Mutation$customerCancelBooking> {
  Options$Mutation$customerCancelBooking({
    String? operationName,
    required Variables$Mutation$customerCancelBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerCancelBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$customerCancelBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$customerCancelBooking>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$customerCancelBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcustomerCancelBooking,
          parserFn: _parserFn$Mutation$customerCancelBooking,
        );

  final OnMutationCompleted$Mutation$customerCancelBooking?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$customerCancelBooking
    extends graphql.WatchQueryOptions<Mutation$customerCancelBooking> {
  WatchOptions$Mutation$customerCancelBooking({
    String? operationName,
    required Variables$Mutation$customerCancelBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerCancelBooking? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcustomerCancelBooking,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$customerCancelBooking,
        );
}

extension ClientExtension$Mutation$customerCancelBooking
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$customerCancelBooking>>
      mutate$customerCancelBooking(
              Options$Mutation$customerCancelBooking options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$customerCancelBooking>
      watchMutation$customerCancelBooking(
              WatchOptions$Mutation$customerCancelBooking options) =>
          watchMutation(options);
}

class Mutation$customerCancelBooking$HookResult {
  Mutation$customerCancelBooking$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$customerCancelBooking runMutation;

  final graphql.QueryResult<Mutation$customerCancelBooking> result;
}

Mutation$customerCancelBooking$HookResult useMutation$customerCancelBooking(
    [WidgetOptions$Mutation$customerCancelBooking? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$customerCancelBooking());
  return Mutation$customerCancelBooking$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$customerCancelBooking>
    useWatchMutation$customerCancelBooking(
            WatchOptions$Mutation$customerCancelBooking options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$customerCancelBooking
    extends graphql.MutationOptions<Mutation$customerCancelBooking> {
  WidgetOptions$Mutation$customerCancelBooking({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerCancelBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$customerCancelBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$customerCancelBooking>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$customerCancelBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcustomerCancelBooking,
          parserFn: _parserFn$Mutation$customerCancelBooking,
        );

  final OnMutationCompleted$Mutation$customerCancelBooking?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$customerCancelBooking
    = graphql.MultiSourceResult<Mutation$customerCancelBooking> Function(
  Variables$Mutation$customerCancelBooking, {
  Object? optimisticResult,
  Mutation$customerCancelBooking? typedOptimisticResult,
});
typedef Builder$Mutation$customerCancelBooking = widgets.Widget Function(
  RunMutation$Mutation$customerCancelBooking,
  graphql.QueryResult<Mutation$customerCancelBooking>?,
);

class Mutation$customerCancelBooking$Widget
    extends graphql_flutter.Mutation<Mutation$customerCancelBooking> {
  Mutation$customerCancelBooking$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$customerCancelBooking? options,
    required Builder$Mutation$customerCancelBooking builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$customerCancelBooking(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$customerUpdateBooking {
  factory Variables$Mutation$customerUpdateBooking({
    required String reservationId,
    required Input$BookingReservationModifiableInput data,
  }) =>
      Variables$Mutation$customerUpdateBooking._({
        r'reservationId': reservationId,
        r'data': data,
      });

  Variables$Mutation$customerUpdateBooking._(this._$data);

  factory Variables$Mutation$customerUpdateBooking.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reservationId = data['reservationId'];
    result$data['reservationId'] = (l$reservationId as String);
    final l$data = data['data'];
    result$data['data'] = Input$BookingReservationModifiableInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$customerUpdateBooking._(result$data);
  }

  Map<String, dynamic> _$data;

  String get reservationId => (_$data['reservationId'] as String);
  Input$BookingReservationModifiableInput get data =>
      (_$data['data'] as Input$BookingReservationModifiableInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reservationId = reservationId;
    result$data['reservationId'] = l$reservationId;
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$customerUpdateBooking<
          Variables$Mutation$customerUpdateBooking>
      get copyWith => CopyWith$Variables$Mutation$customerUpdateBooking(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$customerUpdateBooking ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reservationId = reservationId;
    final lOther$reservationId = other.reservationId;
    if (l$reservationId != lOther$reservationId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reservationId = reservationId;
    final l$data = data;
    return Object.hashAll([
      l$reservationId,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$customerUpdateBooking<TRes> {
  factory CopyWith$Variables$Mutation$customerUpdateBooking(
    Variables$Mutation$customerUpdateBooking instance,
    TRes Function(Variables$Mutation$customerUpdateBooking) then,
  ) = _CopyWithImpl$Variables$Mutation$customerUpdateBooking;

  factory CopyWith$Variables$Mutation$customerUpdateBooking.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$customerUpdateBooking;

  TRes call({
    String? reservationId,
    Input$BookingReservationModifiableInput? data,
  });
}

class _CopyWithImpl$Variables$Mutation$customerUpdateBooking<TRes>
    implements CopyWith$Variables$Mutation$customerUpdateBooking<TRes> {
  _CopyWithImpl$Variables$Mutation$customerUpdateBooking(
    this._instance,
    this._then,
  );

  final Variables$Mutation$customerUpdateBooking _instance;

  final TRes Function(Variables$Mutation$customerUpdateBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? reservationId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$customerUpdateBooking._({
        ..._instance._$data,
        if (reservationId != _undefined && reservationId != null)
          'reservationId': (reservationId as String),
        if (data != _undefined && data != null)
          'data': (data as Input$BookingReservationModifiableInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$customerUpdateBooking<TRes>
    implements CopyWith$Variables$Mutation$customerUpdateBooking<TRes> {
  _CopyWithStubImpl$Variables$Mutation$customerUpdateBooking(this._res);

  final TRes _res;

  @override
  call({
    String? reservationId,
    Input$BookingReservationModifiableInput? data,
  }) =>
      _res;
}

class Mutation$customerUpdateBooking {
  Mutation$customerUpdateBooking({
    required this.customerUpdateBooking,
    this.$__typename = 'Mutation',
  });

  factory Mutation$customerUpdateBooking.fromJson(Map<String, dynamic> json) {
    final l$customerUpdateBooking = json['customerUpdateBooking'];
    final l$$__typename = json['__typename'];
    return Mutation$customerUpdateBooking(
      customerUpdateBooking:
          Mutation$customerUpdateBooking$customerUpdateBooking.fromJson(
              (l$customerUpdateBooking as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$customerUpdateBooking$customerUpdateBooking
      customerUpdateBooking;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$customerUpdateBooking = customerUpdateBooking;
    resultData['customerUpdateBooking'] = l$customerUpdateBooking.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$customerUpdateBooking = customerUpdateBooking;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerUpdateBooking,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$customerUpdateBooking ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerUpdateBooking = customerUpdateBooking;
    final lOther$customerUpdateBooking = other.customerUpdateBooking;
    if (l$customerUpdateBooking != lOther$customerUpdateBooking) {
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

extension UtilityExtension$Mutation$customerUpdateBooking
    on Mutation$customerUpdateBooking {
  CopyWith$Mutation$customerUpdateBooking<Mutation$customerUpdateBooking>
      get copyWith => CopyWith$Mutation$customerUpdateBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerUpdateBooking<TRes> {
  factory CopyWith$Mutation$customerUpdateBooking(
    Mutation$customerUpdateBooking instance,
    TRes Function(Mutation$customerUpdateBooking) then,
  ) = _CopyWithImpl$Mutation$customerUpdateBooking;

  factory CopyWith$Mutation$customerUpdateBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$customerUpdateBooking;

  TRes call({
    Mutation$customerUpdateBooking$customerUpdateBooking? customerUpdateBooking,
    String? $__typename,
  });
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<TRes>
      get customerUpdateBooking;
}

class _CopyWithImpl$Mutation$customerUpdateBooking<TRes>
    implements CopyWith$Mutation$customerUpdateBooking<TRes> {
  _CopyWithImpl$Mutation$customerUpdateBooking(
    this._instance,
    this._then,
  );

  final Mutation$customerUpdateBooking _instance;

  final TRes Function(Mutation$customerUpdateBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? customerUpdateBooking = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerUpdateBooking(
        customerUpdateBooking:
            customerUpdateBooking == _undefined || customerUpdateBooking == null
                ? _instance.customerUpdateBooking
                : (customerUpdateBooking
                    as Mutation$customerUpdateBooking$customerUpdateBooking),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<TRes>
      get customerUpdateBooking {
    final local$customerUpdateBooking = _instance.customerUpdateBooking;
    return CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking(
        local$customerUpdateBooking, (e) => call(customerUpdateBooking: e));
  }
}

class _CopyWithStubImpl$Mutation$customerUpdateBooking<TRes>
    implements CopyWith$Mutation$customerUpdateBooking<TRes> {
  _CopyWithStubImpl$Mutation$customerUpdateBooking(this._res);

  final TRes _res;

  @override
  call({
    Mutation$customerUpdateBooking$customerUpdateBooking? customerUpdateBooking,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<TRes>
      get customerUpdateBooking =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking.stub(
              _res);
}

const documentNodeMutationcustomerUpdateBooking = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'customerUpdateBooking'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reservationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingReservationModifiableInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'customerUpdateBooking'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reservationId'),
            value: VariableNode(name: NameNode(value: 'reservationId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
Mutation$customerUpdateBooking _parserFn$Mutation$customerUpdateBooking(
        Map<String, dynamic> data) =>
    Mutation$customerUpdateBooking.fromJson(data);
typedef OnMutationCompleted$Mutation$customerUpdateBooking = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$customerUpdateBooking?,
);

class Options$Mutation$customerUpdateBooking
    extends graphql.MutationOptions<Mutation$customerUpdateBooking> {
  Options$Mutation$customerUpdateBooking({
    String? operationName,
    required Variables$Mutation$customerUpdateBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerUpdateBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$customerUpdateBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$customerUpdateBooking>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$customerUpdateBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcustomerUpdateBooking,
          parserFn: _parserFn$Mutation$customerUpdateBooking,
        );

  final OnMutationCompleted$Mutation$customerUpdateBooking?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$customerUpdateBooking
    extends graphql.WatchQueryOptions<Mutation$customerUpdateBooking> {
  WatchOptions$Mutation$customerUpdateBooking({
    String? operationName,
    required Variables$Mutation$customerUpdateBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerUpdateBooking? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcustomerUpdateBooking,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$customerUpdateBooking,
        );
}

extension ClientExtension$Mutation$customerUpdateBooking
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$customerUpdateBooking>>
      mutate$customerUpdateBooking(
              Options$Mutation$customerUpdateBooking options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$customerUpdateBooking>
      watchMutation$customerUpdateBooking(
              WatchOptions$Mutation$customerUpdateBooking options) =>
          watchMutation(options);
}

class Mutation$customerUpdateBooking$HookResult {
  Mutation$customerUpdateBooking$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$customerUpdateBooking runMutation;

  final graphql.QueryResult<Mutation$customerUpdateBooking> result;
}

Mutation$customerUpdateBooking$HookResult useMutation$customerUpdateBooking(
    [WidgetOptions$Mutation$customerUpdateBooking? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$customerUpdateBooking());
  return Mutation$customerUpdateBooking$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$customerUpdateBooking>
    useWatchMutation$customerUpdateBooking(
            WatchOptions$Mutation$customerUpdateBooking options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$customerUpdateBooking
    extends graphql.MutationOptions<Mutation$customerUpdateBooking> {
  WidgetOptions$Mutation$customerUpdateBooking({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$customerUpdateBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$customerUpdateBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$customerUpdateBooking>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$customerUpdateBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcustomerUpdateBooking,
          parserFn: _parserFn$Mutation$customerUpdateBooking,
        );

  final OnMutationCompleted$Mutation$customerUpdateBooking?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$customerUpdateBooking
    = graphql.MultiSourceResult<Mutation$customerUpdateBooking> Function(
  Variables$Mutation$customerUpdateBooking, {
  Object? optimisticResult,
  Mutation$customerUpdateBooking? typedOptimisticResult,
});
typedef Builder$Mutation$customerUpdateBooking = widgets.Widget Function(
  RunMutation$Mutation$customerUpdateBooking,
  graphql.QueryResult<Mutation$customerUpdateBooking>?,
);

class Mutation$customerUpdateBooking$Widget
    extends graphql_flutter.Mutation<Mutation$customerUpdateBooking> {
  Mutation$customerUpdateBooking$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$customerUpdateBooking? options,
    required Builder$Mutation$customerUpdateBooking builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$customerUpdateBooking(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$customerUpdateBooking$customerUpdateBooking {
  Mutation$customerUpdateBooking$customerUpdateBooking({
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

  factory Mutation$customerUpdateBooking$customerUpdateBooking.fromJson(
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
    return Mutation$customerUpdateBooking$customerUpdateBooking(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Mutation$customerUpdateBooking$customerUpdateBooking$user.fromJson(
          (l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String),
      branch:
          Mutation$customerUpdateBooking$customerUpdateBooking$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      serviceId: (l$serviceId as String),
      service:
          Mutation$customerUpdateBooking$customerUpdateBooking$service.fromJson(
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

  final Mutation$customerUpdateBooking$customerUpdateBooking$user user;

  final String branchId;

  final Mutation$customerUpdateBooking$customerUpdateBooking$branch branch;

  final String serviceId;

  final Mutation$customerUpdateBooking$customerUpdateBooking$service service;

  final String channel;

  final int date;

  final int time;

  final int? queueNumber;

  final Enum$BookingReservationStatus status;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch.toJson();
    final l$serviceId = serviceId;
    resultData['serviceId'] = l$serviceId;
    final l$service = service;
    resultData['service'] = l$service.toJson();
    final l$channel = channel;
    resultData['channel'] = l$channel;
    final l$date = date;
    resultData['date'] = l$date;
    final l$time = time;
    resultData['time'] = l$time;
    final l$queueNumber = queueNumber;
    resultData['queueNumber'] = l$queueNumber;
    final l$status = status;
    resultData['status'] = toJson$Enum$BookingReservationStatus(l$status);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerUpdateBooking$customerUpdateBooking ||
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

extension UtilityExtension$Mutation$customerUpdateBooking$customerUpdateBooking
    on Mutation$customerUpdateBooking$customerUpdateBooking {
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<
          Mutation$customerUpdateBooking$customerUpdateBooking>
      get copyWith =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<
    TRes> {
  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking(
    Mutation$customerUpdateBooking$customerUpdateBooking instance,
    TRes Function(Mutation$customerUpdateBooking$customerUpdateBooking) then,
  ) = _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking;

  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking;

  TRes call({
    String? id,
    String? userId,
    Mutation$customerUpdateBooking$customerUpdateBooking$user? user,
    String? branchId,
    Mutation$customerUpdateBooking$customerUpdateBooking$branch? branch,
    String? serviceId,
    Mutation$customerUpdateBooking$customerUpdateBooking$service? service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<TRes>
      get user;
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<TRes>
      get branch;
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<TRes>
      get service;
}

class _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking<TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<TRes> {
  _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking(
    this._instance,
    this._then,
  );

  final Mutation$customerUpdateBooking$customerUpdateBooking _instance;

  final TRes Function(Mutation$customerUpdateBooking$customerUpdateBooking)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$customerUpdateBooking$customerUpdateBooking(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user
                as Mutation$customerUpdateBooking$customerUpdateBooking$user),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch
                as Mutation$customerUpdateBooking$customerUpdateBooking$branch),
        serviceId: serviceId == _undefined || serviceId == null
            ? _instance.serviceId
            : (serviceId as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Mutation$customerUpdateBooking$customerUpdateBooking$service),
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
  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user(
        local$user, (e) => call(user: e));
  }

  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<TRes>
      get branch {
    final local$branch = _instance.branch;
    return CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch(
        local$branch, (e) => call(branch: e));
  }

  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking<TRes> {
  _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? userId,
    Mutation$customerUpdateBooking$customerUpdateBooking$user? user,
    String? branchId,
    Mutation$customerUpdateBooking$customerUpdateBooking$branch? branch,
    String? serviceId,
    Mutation$customerUpdateBooking$customerUpdateBooking$service? service,
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
  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<TRes>
      get user =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user
              .stub(_res);
  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<TRes>
      get branch =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch
              .stub(_res);
  @override
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<TRes>
      get service =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service
              .stub(_res);
}

class Mutation$customerUpdateBooking$customerUpdateBooking$user {
  Mutation$customerUpdateBooking$customerUpdateBooking$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$customerUpdateBooking$customerUpdateBooking$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$customerUpdateBooking$customerUpdateBooking$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerUpdateBooking$customerUpdateBooking$user ||
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

extension UtilityExtension$Mutation$customerUpdateBooking$customerUpdateBooking$user
    on Mutation$customerUpdateBooking$customerUpdateBooking$user {
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<
          Mutation$customerUpdateBooking$customerUpdateBooking$user>
      get copyWith =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<
    TRes> {
  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user(
    Mutation$customerUpdateBooking$customerUpdateBooking$user instance,
    TRes Function(Mutation$customerUpdateBooking$customerUpdateBooking$user)
        then,
  ) = _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$user;

  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$user<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<
            TRes> {
  _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$user(
    this._instance,
    this._then,
  );

  final Mutation$customerUpdateBooking$customerUpdateBooking$user _instance;

  final TRes Function(Mutation$customerUpdateBooking$customerUpdateBooking$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerUpdateBooking$customerUpdateBooking$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$user<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$user<
            TRes> {
  _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$user(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$customerUpdateBooking$customerUpdateBooking$branch {
  Mutation$customerUpdateBooking$customerUpdateBooking$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$customerUpdateBooking$customerUpdateBooking$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$customerUpdateBooking$customerUpdateBooking$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$customerUpdateBooking$customerUpdateBooking$branch ||
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

extension UtilityExtension$Mutation$customerUpdateBooking$customerUpdateBooking$branch
    on Mutation$customerUpdateBooking$customerUpdateBooking$branch {
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<
          Mutation$customerUpdateBooking$customerUpdateBooking$branch>
      get copyWith =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<
    TRes> {
  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch(
    Mutation$customerUpdateBooking$customerUpdateBooking$branch instance,
    TRes Function(Mutation$customerUpdateBooking$customerUpdateBooking$branch)
        then,
  ) = _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$branch;

  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$branch<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<
            TRes> {
  _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$branch(
    this._instance,
    this._then,
  );

  final Mutation$customerUpdateBooking$customerUpdateBooking$branch _instance;

  final TRes Function(
      Mutation$customerUpdateBooking$customerUpdateBooking$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerUpdateBooking$customerUpdateBooking$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$branch<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$branch<
            TRes> {
  _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$customerUpdateBooking$customerUpdateBooking$service {
  Mutation$customerUpdateBooking$customerUpdateBooking$service({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Mutation$customerUpdateBooking$customerUpdateBooking$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$customerUpdateBooking$customerUpdateBooking$service(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$customerUpdateBooking$customerUpdateBooking$service ||
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

extension UtilityExtension$Mutation$customerUpdateBooking$customerUpdateBooking$service
    on Mutation$customerUpdateBooking$customerUpdateBooking$service {
  CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<
          Mutation$customerUpdateBooking$customerUpdateBooking$service>
      get copyWith =>
          CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<
    TRes> {
  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service(
    Mutation$customerUpdateBooking$customerUpdateBooking$service instance,
    TRes Function(Mutation$customerUpdateBooking$customerUpdateBooking$service)
        then,
  ) = _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$service;

  factory CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$service;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$service<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<
            TRes> {
  _CopyWithImpl$Mutation$customerUpdateBooking$customerUpdateBooking$service(
    this._instance,
    this._then,
  );

  final Mutation$customerUpdateBooking$customerUpdateBooking$service _instance;

  final TRes Function(
      Mutation$customerUpdateBooking$customerUpdateBooking$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$customerUpdateBooking$customerUpdateBooking$service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$service<
        TRes>
    implements
        CopyWith$Mutation$customerUpdateBooking$customerUpdateBooking$service<
            TRes> {
  _CopyWithStubImpl$Mutation$customerUpdateBooking$customerUpdateBooking$service(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$endBookingReservation {
  factory Variables$Mutation$endBookingReservation(
          {required List<String> reservationIds}) =>
      Variables$Mutation$endBookingReservation._({
        r'reservationIds': reservationIds,
      });

  Variables$Mutation$endBookingReservation._(this._$data);

  factory Variables$Mutation$endBookingReservation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reservationIds = data['reservationIds'];
    result$data['reservationIds'] =
        (l$reservationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Variables$Mutation$endBookingReservation._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get reservationIds => (_$data['reservationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reservationIds = reservationIds;
    result$data['reservationIds'] = l$reservationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$endBookingReservation<
          Variables$Mutation$endBookingReservation>
      get copyWith => CopyWith$Variables$Mutation$endBookingReservation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$endBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reservationIds = reservationIds;
    final lOther$reservationIds = other.reservationIds;
    if (l$reservationIds.length != lOther$reservationIds.length) {
      return false;
    }
    for (int i = 0; i < l$reservationIds.length; i++) {
      final l$reservationIds$entry = l$reservationIds[i];
      final lOther$reservationIds$entry = lOther$reservationIds[i];
      if (l$reservationIds$entry != lOther$reservationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reservationIds = reservationIds;
    return Object.hashAll([Object.hashAll(l$reservationIds.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$endBookingReservation<TRes> {
  factory CopyWith$Variables$Mutation$endBookingReservation(
    Variables$Mutation$endBookingReservation instance,
    TRes Function(Variables$Mutation$endBookingReservation) then,
  ) = _CopyWithImpl$Variables$Mutation$endBookingReservation;

  factory CopyWith$Variables$Mutation$endBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$endBookingReservation;

  TRes call({List<String>? reservationIds});
}

class _CopyWithImpl$Variables$Mutation$endBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$endBookingReservation<TRes> {
  _CopyWithImpl$Variables$Mutation$endBookingReservation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$endBookingReservation _instance;

  final TRes Function(Variables$Mutation$endBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? reservationIds = _undefined}) =>
      _then(Variables$Mutation$endBookingReservation._({
        ..._instance._$data,
        if (reservationIds != _undefined && reservationIds != null)
          'reservationIds': (reservationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$endBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$endBookingReservation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$endBookingReservation(this._res);

  final TRes _res;

  @override
  call({List<String>? reservationIds}) => _res;
}

class Mutation$endBookingReservation {
  Mutation$endBookingReservation({
    required this.endBookingReservation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$endBookingReservation.fromJson(Map<String, dynamic> json) {
    final l$endBookingReservation = json['endBookingReservation'];
    final l$$__typename = json['__typename'];
    return Mutation$endBookingReservation(
      endBookingReservation: (l$endBookingReservation as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> endBookingReservation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$endBookingReservation = endBookingReservation;
    resultData['endBookingReservation'] =
        l$endBookingReservation.map((e) => e).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$endBookingReservation = endBookingReservation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$endBookingReservation.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$endBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endBookingReservation = endBookingReservation;
    final lOther$endBookingReservation = other.endBookingReservation;
    if (l$endBookingReservation.length != lOther$endBookingReservation.length) {
      return false;
    }
    for (int i = 0; i < l$endBookingReservation.length; i++) {
      final l$endBookingReservation$entry = l$endBookingReservation[i];
      final lOther$endBookingReservation$entry =
          lOther$endBookingReservation[i];
      if (l$endBookingReservation$entry != lOther$endBookingReservation$entry) {
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

extension UtilityExtension$Mutation$endBookingReservation
    on Mutation$endBookingReservation {
  CopyWith$Mutation$endBookingReservation<Mutation$endBookingReservation>
      get copyWith => CopyWith$Mutation$endBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$endBookingReservation<TRes> {
  factory CopyWith$Mutation$endBookingReservation(
    Mutation$endBookingReservation instance,
    TRes Function(Mutation$endBookingReservation) then,
  ) = _CopyWithImpl$Mutation$endBookingReservation;

  factory CopyWith$Mutation$endBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$endBookingReservation;

  TRes call({
    List<String>? endBookingReservation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$endBookingReservation<TRes>
    implements CopyWith$Mutation$endBookingReservation<TRes> {
  _CopyWithImpl$Mutation$endBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$endBookingReservation _instance;

  final TRes Function(Mutation$endBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? endBookingReservation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$endBookingReservation(
        endBookingReservation:
            endBookingReservation == _undefined || endBookingReservation == null
                ? _instance.endBookingReservation
                : (endBookingReservation as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$endBookingReservation<TRes>
    implements CopyWith$Mutation$endBookingReservation<TRes> {
  _CopyWithStubImpl$Mutation$endBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    List<String>? endBookingReservation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationendBookingReservation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'endBookingReservation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reservationIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'endBookingReservation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reservationIds'),
            value: VariableNode(name: NameNode(value: 'reservationIds')),
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
Mutation$endBookingReservation _parserFn$Mutation$endBookingReservation(
        Map<String, dynamic> data) =>
    Mutation$endBookingReservation.fromJson(data);
typedef OnMutationCompleted$Mutation$endBookingReservation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$endBookingReservation?,
);

class Options$Mutation$endBookingReservation
    extends graphql.MutationOptions<Mutation$endBookingReservation> {
  Options$Mutation$endBookingReservation({
    String? operationName,
    required Variables$Mutation$endBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$endBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$endBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$endBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$endBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationendBookingReservation,
          parserFn: _parserFn$Mutation$endBookingReservation,
        );

  final OnMutationCompleted$Mutation$endBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$endBookingReservation
    extends graphql.WatchQueryOptions<Mutation$endBookingReservation> {
  WatchOptions$Mutation$endBookingReservation({
    String? operationName,
    required Variables$Mutation$endBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$endBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationendBookingReservation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$endBookingReservation,
        );
}

extension ClientExtension$Mutation$endBookingReservation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$endBookingReservation>>
      mutate$endBookingReservation(
              Options$Mutation$endBookingReservation options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$endBookingReservation>
      watchMutation$endBookingReservation(
              WatchOptions$Mutation$endBookingReservation options) =>
          watchMutation(options);
}

class Mutation$endBookingReservation$HookResult {
  Mutation$endBookingReservation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$endBookingReservation runMutation;

  final graphql.QueryResult<Mutation$endBookingReservation> result;
}

Mutation$endBookingReservation$HookResult useMutation$endBookingReservation(
    [WidgetOptions$Mutation$endBookingReservation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$endBookingReservation());
  return Mutation$endBookingReservation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$endBookingReservation>
    useWatchMutation$endBookingReservation(
            WatchOptions$Mutation$endBookingReservation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$endBookingReservation
    extends graphql.MutationOptions<Mutation$endBookingReservation> {
  WidgetOptions$Mutation$endBookingReservation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$endBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$endBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$endBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$endBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationendBookingReservation,
          parserFn: _parserFn$Mutation$endBookingReservation,
        );

  final OnMutationCompleted$Mutation$endBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$endBookingReservation
    = graphql.MultiSourceResult<Mutation$endBookingReservation> Function(
  Variables$Mutation$endBookingReservation, {
  Object? optimisticResult,
  Mutation$endBookingReservation? typedOptimisticResult,
});
typedef Builder$Mutation$endBookingReservation = widgets.Widget Function(
  RunMutation$Mutation$endBookingReservation,
  graphql.QueryResult<Mutation$endBookingReservation>?,
);

class Mutation$endBookingReservation$Widget
    extends graphql_flutter.Mutation<Mutation$endBookingReservation> {
  Mutation$endBookingReservation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$endBookingReservation? options,
    required Builder$Mutation$endBookingReservation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$endBookingReservation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

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
    if (other is! Variables$Mutation$loginUser ||
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

  @override
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

  final TRes _res;

  @override
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
    final resultData = <String, dynamic>{};
    final l$loginUser = loginUser;
    resultData['loginUser'] = l$loginUser;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$loginUser || runtimeType != other.runtimeType) {
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

  @override
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

  final TRes _res;

  @override
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
Mutation$loginUser _parserFn$Mutation$loginUser(Map<String, dynamic> data) =>
    Mutation$loginUser.fromJson(data);
typedef OnMutationCompleted$Mutation$loginUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$loginUser?,
);

class Options$Mutation$loginUser
    extends graphql.MutationOptions<Mutation$loginUser> {
  Options$Mutation$loginUser({
    String? operationName,
    required Variables$Mutation$loginUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$loginUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$loginUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$loginUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$loginUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationloginUser,
          parserFn: _parserFn$Mutation$loginUser,
        );

  final OnMutationCompleted$Mutation$loginUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$loginUser
    extends graphql.WatchQueryOptions<Mutation$loginUser> {
  WatchOptions$Mutation$loginUser({
    String? operationName,
    required Variables$Mutation$loginUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$loginUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationloginUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$loginUser,
        );
}

extension ClientExtension$Mutation$loginUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$loginUser>> mutate$loginUser(
          Options$Mutation$loginUser options) async =>
      await mutate(options);
  graphql.ObservableQuery<Mutation$loginUser> watchMutation$loginUser(
          WatchOptions$Mutation$loginUser options) =>
      watchMutation(options);
}

class Mutation$loginUser$HookResult {
  Mutation$loginUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$loginUser runMutation;

  final graphql.QueryResult<Mutation$loginUser> result;
}

Mutation$loginUser$HookResult useMutation$loginUser(
    [WidgetOptions$Mutation$loginUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$loginUser());
  return Mutation$loginUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$loginUser> useWatchMutation$loginUser(
        WatchOptions$Mutation$loginUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$loginUser
    extends graphql.MutationOptions<Mutation$loginUser> {
  WidgetOptions$Mutation$loginUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$loginUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$loginUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$loginUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$loginUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationloginUser,
          parserFn: _parserFn$Mutation$loginUser,
        );

  final OnMutationCompleted$Mutation$loginUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$loginUser
    = graphql.MultiSourceResult<Mutation$loginUser> Function(
  Variables$Mutation$loginUser, {
  Object? optimisticResult,
  Mutation$loginUser? typedOptimisticResult,
});
typedef Builder$Mutation$loginUser = widgets.Widget Function(
  RunMutation$Mutation$loginUser,
  graphql.QueryResult<Mutation$loginUser>?,
);

class Mutation$loginUser$Widget
    extends graphql_flutter.Mutation<Mutation$loginUser> {
  Mutation$loginUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$loginUser? options,
    required Builder$Mutation$loginUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$loginUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$registerRegularPasswordUser {
  factory Variables$Mutation$registerRegularPasswordUser(
          {required Input$RegularPasswordUserInput input}) =>
      Variables$Mutation$registerRegularPasswordUser._({
        r'input': input,
      });

  Variables$Mutation$registerRegularPasswordUser._(this._$data);

  factory Variables$Mutation$registerRegularPasswordUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$RegularPasswordUserInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$registerRegularPasswordUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RegularPasswordUserInput get input =>
      (_$data['input'] as Input$RegularPasswordUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$registerRegularPasswordUser<
          Variables$Mutation$registerRegularPasswordUser>
      get copyWith => CopyWith$Variables$Mutation$registerRegularPasswordUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$registerRegularPasswordUser ||
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

abstract class CopyWith$Variables$Mutation$registerRegularPasswordUser<TRes> {
  factory CopyWith$Variables$Mutation$registerRegularPasswordUser(
    Variables$Mutation$registerRegularPasswordUser instance,
    TRes Function(Variables$Mutation$registerRegularPasswordUser) then,
  ) = _CopyWithImpl$Variables$Mutation$registerRegularPasswordUser;

  factory CopyWith$Variables$Mutation$registerRegularPasswordUser.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$registerRegularPasswordUser;

  TRes call({Input$RegularPasswordUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$registerRegularPasswordUser<TRes>
    implements CopyWith$Variables$Mutation$registerRegularPasswordUser<TRes> {
  _CopyWithImpl$Variables$Mutation$registerRegularPasswordUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$registerRegularPasswordUser _instance;

  final TRes Function(Variables$Mutation$registerRegularPasswordUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$registerRegularPasswordUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$RegularPasswordUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$registerRegularPasswordUser<TRes>
    implements CopyWith$Variables$Mutation$registerRegularPasswordUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$registerRegularPasswordUser(this._res);

  final TRes _res;

  @override
  call({Input$RegularPasswordUserInput? input}) => _res;
}

class Mutation$registerRegularPasswordUser {
  Mutation$registerRegularPasswordUser({
    required this.registerRegularPasswordUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$registerRegularPasswordUser.fromJson(
      Map<String, dynamic> json) {
    final l$registerRegularPasswordUser = json['registerRegularPasswordUser'];
    final l$$__typename = json['__typename'];
    return Mutation$registerRegularPasswordUser(
      registerRegularPasswordUser:
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser
              .fromJson(
                  (l$registerRegularPasswordUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$registerRegularPasswordUser$registerRegularPasswordUser
      registerRegularPasswordUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$registerRegularPasswordUser = registerRegularPasswordUser;
    resultData['registerRegularPasswordUser'] =
        l$registerRegularPasswordUser.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$registerRegularPasswordUser = registerRegularPasswordUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$registerRegularPasswordUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$registerRegularPasswordUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$registerRegularPasswordUser = registerRegularPasswordUser;
    final lOther$registerRegularPasswordUser =
        other.registerRegularPasswordUser;
    if (l$registerRegularPasswordUser != lOther$registerRegularPasswordUser) {
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

extension UtilityExtension$Mutation$registerRegularPasswordUser
    on Mutation$registerRegularPasswordUser {
  CopyWith$Mutation$registerRegularPasswordUser<
          Mutation$registerRegularPasswordUser>
      get copyWith => CopyWith$Mutation$registerRegularPasswordUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$registerRegularPasswordUser<TRes> {
  factory CopyWith$Mutation$registerRegularPasswordUser(
    Mutation$registerRegularPasswordUser instance,
    TRes Function(Mutation$registerRegularPasswordUser) then,
  ) = _CopyWithImpl$Mutation$registerRegularPasswordUser;

  factory CopyWith$Mutation$registerRegularPasswordUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$registerRegularPasswordUser;

  TRes call({
    Mutation$registerRegularPasswordUser$registerRegularPasswordUser?
        registerRegularPasswordUser,
    String? $__typename,
  });
  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
      TRes> get registerRegularPasswordUser;
}

class _CopyWithImpl$Mutation$registerRegularPasswordUser<TRes>
    implements CopyWith$Mutation$registerRegularPasswordUser<TRes> {
  _CopyWithImpl$Mutation$registerRegularPasswordUser(
    this._instance,
    this._then,
  );

  final Mutation$registerRegularPasswordUser _instance;

  final TRes Function(Mutation$registerRegularPasswordUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? registerRegularPasswordUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$registerRegularPasswordUser(
        registerRegularPasswordUser: registerRegularPasswordUser ==
                    _undefined ||
                registerRegularPasswordUser == null
            ? _instance.registerRegularPasswordUser
            : (registerRegularPasswordUser
                as Mutation$registerRegularPasswordUser$registerRegularPasswordUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
      TRes> get registerRegularPasswordUser {
    final local$registerRegularPasswordUser =
        _instance.registerRegularPasswordUser;
    return CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
        local$registerRegularPasswordUser,
        (e) => call(registerRegularPasswordUser: e));
  }
}

class _CopyWithStubImpl$Mutation$registerRegularPasswordUser<TRes>
    implements CopyWith$Mutation$registerRegularPasswordUser<TRes> {
  _CopyWithStubImpl$Mutation$registerRegularPasswordUser(this._res);

  final TRes _res;

  @override
  call({
    Mutation$registerRegularPasswordUser$registerRegularPasswordUser?
        registerRegularPasswordUser,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
          TRes>
      get registerRegularPasswordUser =>
          CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser
              .stub(_res);
}

const documentNodeMutationregisterRegularPasswordUser =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'registerRegularPasswordUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'RegularPasswordUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'registerRegularPasswordUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$registerRegularPasswordUser
    _parserFn$Mutation$registerRegularPasswordUser(Map<String, dynamic> data) =>
        Mutation$registerRegularPasswordUser.fromJson(data);
typedef OnMutationCompleted$Mutation$registerRegularPasswordUser
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$registerRegularPasswordUser?,
);

class Options$Mutation$registerRegularPasswordUser
    extends graphql.MutationOptions<Mutation$registerRegularPasswordUser> {
  Options$Mutation$registerRegularPasswordUser({
    String? operationName,
    required Variables$Mutation$registerRegularPasswordUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$registerRegularPasswordUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$registerRegularPasswordUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$registerRegularPasswordUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$registerRegularPasswordUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationregisterRegularPasswordUser,
          parserFn: _parserFn$Mutation$registerRegularPasswordUser,
        );

  final OnMutationCompleted$Mutation$registerRegularPasswordUser?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$registerRegularPasswordUser
    extends graphql.WatchQueryOptions<Mutation$registerRegularPasswordUser> {
  WatchOptions$Mutation$registerRegularPasswordUser({
    String? operationName,
    required Variables$Mutation$registerRegularPasswordUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$registerRegularPasswordUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationregisterRegularPasswordUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$registerRegularPasswordUser,
        );
}

extension ClientExtension$Mutation$registerRegularPasswordUser
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$registerRegularPasswordUser>>
      mutate$registerRegularPasswordUser(
              Options$Mutation$registerRegularPasswordUser options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$registerRegularPasswordUser>
      watchMutation$registerRegularPasswordUser(
              WatchOptions$Mutation$registerRegularPasswordUser options) =>
          watchMutation(options);
}

class Mutation$registerRegularPasswordUser$HookResult {
  Mutation$registerRegularPasswordUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$registerRegularPasswordUser runMutation;

  final graphql.QueryResult<Mutation$registerRegularPasswordUser> result;
}

Mutation$registerRegularPasswordUser$HookResult
    useMutation$registerRegularPasswordUser(
        [WidgetOptions$Mutation$registerRegularPasswordUser? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$registerRegularPasswordUser());
  return Mutation$registerRegularPasswordUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$registerRegularPasswordUser>
    useWatchMutation$registerRegularPasswordUser(
            WatchOptions$Mutation$registerRegularPasswordUser options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$registerRegularPasswordUser
    extends graphql.MutationOptions<Mutation$registerRegularPasswordUser> {
  WidgetOptions$Mutation$registerRegularPasswordUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$registerRegularPasswordUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$registerRegularPasswordUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$registerRegularPasswordUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$registerRegularPasswordUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationregisterRegularPasswordUser,
          parserFn: _parserFn$Mutation$registerRegularPasswordUser,
        );

  final OnMutationCompleted$Mutation$registerRegularPasswordUser?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$registerRegularPasswordUser
    = graphql.MultiSourceResult<Mutation$registerRegularPasswordUser> Function(
  Variables$Mutation$registerRegularPasswordUser, {
  Object? optimisticResult,
  Mutation$registerRegularPasswordUser? typedOptimisticResult,
});
typedef Builder$Mutation$registerRegularPasswordUser = widgets.Widget Function(
  RunMutation$Mutation$registerRegularPasswordUser,
  graphql.QueryResult<Mutation$registerRegularPasswordUser>?,
);

class Mutation$registerRegularPasswordUser$Widget
    extends graphql_flutter.Mutation<Mutation$registerRegularPasswordUser> {
  Mutation$registerRegularPasswordUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$registerRegularPasswordUser? options,
    required Builder$Mutation$registerRegularPasswordUser builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$registerRegularPasswordUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$registerRegularPasswordUser$registerRegularPasswordUser {
  Mutation$registerRegularPasswordUser$registerRegularPasswordUser({
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

  factory Mutation$registerRegularPasswordUser$registerRegularPasswordUser.fromJson(
      Map<String, dynamic> json) {
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
    return Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
      id: (l$id as String),
      roles: (l$roles as List<dynamic>)
          .map((e) =>
              Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions
                  .fromJson((e as Map<String, dynamic>)))
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

  final List<
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>
      roles;

  final List<
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>
      permissions;

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
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$roles = roles;
    resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$permissions = permissions;
    resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$firstName = firstName;
    resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    resultData['lastName'] = l$lastName;
    final l$email = email;
    resultData['email'] = l$email;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$password = password;
    resultData['password'] = l$password;
    final l$visitCount = visitCount;
    resultData['visitCount'] = l$visitCount;
    final l$level = level;
    resultData['level'] = l$level;
    final l$birthDate = birthDate;
    resultData['birthDate'] = l$birthDate;
    final l$gender = gender;
    resultData['gender'] = l$gender;
    final l$photo = photo;
    resultData['photo'] = l$photo;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$registerRegularPasswordUser$registerRegularPasswordUser ||
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

extension UtilityExtension$Mutation$registerRegularPasswordUser$registerRegularPasswordUser
    on Mutation$registerRegularPasswordUser$registerRegularPasswordUser {
  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser>
      get copyWith =>
          CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
    TRes> {
  factory CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
    Mutation$registerRegularPasswordUser$registerRegularPasswordUser instance,
    TRes Function(
            Mutation$registerRegularPasswordUser$registerRegularPasswordUser)
        then,
  ) = _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser;

  factory CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser;

  TRes call({
    String? id,
    List<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>?
        roles,
    List<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>?
        permissions,
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
      Iterable<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles> Function(
              Iterable<
                  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
                      Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>>)
          fn);
  TRes permissions(
      Iterable<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions> Function(
              Iterable<
                  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
                      Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>>)
          fn);
}

class _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
        TRes>
    implements
        CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
            TRes> {
  _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
    this._instance,
    this._then,
  );

  final Mutation$registerRegularPasswordUser$registerRegularPasswordUser
      _instance;

  final TRes Function(
      Mutation$registerRegularPasswordUser$registerRegularPasswordUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles as List<
                Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<
                Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>),
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
  @override
  TRes roles(
          Iterable<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles> Function(
                  Iterable<
                      CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
                          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>>)
              fn) =>
      call(
          roles: fn(_instance.roles.map((e) =>
              CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
                e,
                (i) => i,
              ))).toList());
  @override
  TRes permissions(
          Iterable<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions> Function(
                  Iterable<
                      CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
                          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>>)
              fn) =>
      call(
          permissions: fn(_instance.permissions.map((e) =>
              CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
        TRes>
    implements
        CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser<
            TRes> {
  _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    List<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>?
        roles,
    List<Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>?
        permissions,
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
  @override
  roles(fn) => _res;
  @override
  permissions(fn) => _res;
}

class Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles {
  Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles({
    this.id,
    this.name,
    this.$__typename = 'Role',
  });

  factory Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles ||
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

extension UtilityExtension$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles
    on Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles {
  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles>
      get copyWith =>
          CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
    TRes> {
  factory CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
    Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles
        instance,
    TRes Function(
            Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles)
        then,
  ) = _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles;

  factory CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
        TRes>
    implements
        CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
            TRes> {
  _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
    this._instance,
    this._then,
  );

  final Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles
      _instance;

  final TRes Function(
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
        TRes>
    implements
        CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles<
            TRes> {
  _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$roles(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions {
  Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions({
    this.id,
    this.name,
    this.$__typename = 'Permission',
  });

  factory Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions ||
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

extension UtilityExtension$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions
    on Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions {
  CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions>
      get copyWith =>
          CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
    TRes> {
  factory CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
    Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions
        instance,
    TRes Function(
            Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions)
        then,
  ) = _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions;

  factory CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
        TRes>
    implements
        CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
            TRes> {
  _CopyWithImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
    this._instance,
    this._then,
  );

  final Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions
      _instance;

  final TRes Function(
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
        TRes>
    implements
        CopyWith$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions<
            TRes> {
  _CopyWithStubImpl$Mutation$registerRegularPasswordUser$registerRegularPasswordUser$permissions(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$requestResetPassword {
  factory Variables$Mutation$requestResetPassword(
          {required Input$UserIdentifierInput identifier}) =>
      Variables$Mutation$requestResetPassword._({
        r'identifier': identifier,
      });

  Variables$Mutation$requestResetPassword._(this._$data);

  factory Variables$Mutation$requestResetPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$identifier = data['identifier'];
    result$data['identifier'] = Input$UserIdentifierInput.fromJson(
        (l$identifier as Map<String, dynamic>));
    return Variables$Mutation$requestResetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserIdentifierInput get identifier =>
      (_$data['identifier'] as Input$UserIdentifierInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$identifier = identifier;
    result$data['identifier'] = l$identifier.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$requestResetPassword<
          Variables$Mutation$requestResetPassword>
      get copyWith => CopyWith$Variables$Mutation$requestResetPassword(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$requestResetPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$identifier = identifier;
    final lOther$identifier = other.identifier;
    if (l$identifier != lOther$identifier) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$identifier = identifier;
    return Object.hashAll([l$identifier]);
  }
}

abstract class CopyWith$Variables$Mutation$requestResetPassword<TRes> {
  factory CopyWith$Variables$Mutation$requestResetPassword(
    Variables$Mutation$requestResetPassword instance,
    TRes Function(Variables$Mutation$requestResetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$requestResetPassword;

  factory CopyWith$Variables$Mutation$requestResetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$requestResetPassword;

  TRes call({Input$UserIdentifierInput? identifier});
}

class _CopyWithImpl$Variables$Mutation$requestResetPassword<TRes>
    implements CopyWith$Variables$Mutation$requestResetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$requestResetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$requestResetPassword _instance;

  final TRes Function(Variables$Mutation$requestResetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? identifier = _undefined}) =>
      _then(Variables$Mutation$requestResetPassword._({
        ..._instance._$data,
        if (identifier != _undefined && identifier != null)
          'identifier': (identifier as Input$UserIdentifierInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$requestResetPassword<TRes>
    implements CopyWith$Variables$Mutation$requestResetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$requestResetPassword(this._res);

  final TRes _res;

  @override
  call({Input$UserIdentifierInput? identifier}) => _res;
}

class Mutation$requestResetPassword {
  Mutation$requestResetPassword({
    required this.requestResetPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$requestResetPassword.fromJson(Map<String, dynamic> json) {
    final l$requestResetPassword = json['requestResetPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$requestResetPassword(
      requestResetPassword: (l$requestResetPassword as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool requestResetPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$requestResetPassword = requestResetPassword;
    resultData['requestResetPassword'] = l$requestResetPassword;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$requestResetPassword = requestResetPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$requestResetPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$requestResetPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestResetPassword = requestResetPassword;
    final lOther$requestResetPassword = other.requestResetPassword;
    if (l$requestResetPassword != lOther$requestResetPassword) {
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

extension UtilityExtension$Mutation$requestResetPassword
    on Mutation$requestResetPassword {
  CopyWith$Mutation$requestResetPassword<Mutation$requestResetPassword>
      get copyWith => CopyWith$Mutation$requestResetPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$requestResetPassword<TRes> {
  factory CopyWith$Mutation$requestResetPassword(
    Mutation$requestResetPassword instance,
    TRes Function(Mutation$requestResetPassword) then,
  ) = _CopyWithImpl$Mutation$requestResetPassword;

  factory CopyWith$Mutation$requestResetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$requestResetPassword;

  TRes call({
    bool? requestResetPassword,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$requestResetPassword<TRes>
    implements CopyWith$Mutation$requestResetPassword<TRes> {
  _CopyWithImpl$Mutation$requestResetPassword(
    this._instance,
    this._then,
  );

  final Mutation$requestResetPassword _instance;

  final TRes Function(Mutation$requestResetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? requestResetPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$requestResetPassword(
        requestResetPassword:
            requestResetPassword == _undefined || requestResetPassword == null
                ? _instance.requestResetPassword
                : (requestResetPassword as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$requestResetPassword<TRes>
    implements CopyWith$Mutation$requestResetPassword<TRes> {
  _CopyWithStubImpl$Mutation$requestResetPassword(this._res);

  final TRes _res;

  @override
  call({
    bool? requestResetPassword,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationrequestResetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'requestResetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'identifier')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserIdentifierInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'requestResetPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'identifier'),
            value: VariableNode(name: NameNode(value: 'identifier')),
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
Mutation$requestResetPassword _parserFn$Mutation$requestResetPassword(
        Map<String, dynamic> data) =>
    Mutation$requestResetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$requestResetPassword = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$requestResetPassword?,
);

class Options$Mutation$requestResetPassword
    extends graphql.MutationOptions<Mutation$requestResetPassword> {
  Options$Mutation$requestResetPassword({
    String? operationName,
    required Variables$Mutation$requestResetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$requestResetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$requestResetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$requestResetPassword>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$requestResetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationrequestResetPassword,
          parserFn: _parserFn$Mutation$requestResetPassword,
        );

  final OnMutationCompleted$Mutation$requestResetPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$requestResetPassword
    extends graphql.WatchQueryOptions<Mutation$requestResetPassword> {
  WatchOptions$Mutation$requestResetPassword({
    String? operationName,
    required Variables$Mutation$requestResetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$requestResetPassword? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationrequestResetPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$requestResetPassword,
        );
}

extension ClientExtension$Mutation$requestResetPassword
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$requestResetPassword>>
      mutate$requestResetPassword(
              Options$Mutation$requestResetPassword options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$requestResetPassword>
      watchMutation$requestResetPassword(
              WatchOptions$Mutation$requestResetPassword options) =>
          watchMutation(options);
}

class Mutation$requestResetPassword$HookResult {
  Mutation$requestResetPassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$requestResetPassword runMutation;

  final graphql.QueryResult<Mutation$requestResetPassword> result;
}

Mutation$requestResetPassword$HookResult useMutation$requestResetPassword(
    [WidgetOptions$Mutation$requestResetPassword? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$requestResetPassword());
  return Mutation$requestResetPassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$requestResetPassword>
    useWatchMutation$requestResetPassword(
            WatchOptions$Mutation$requestResetPassword options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$requestResetPassword
    extends graphql.MutationOptions<Mutation$requestResetPassword> {
  WidgetOptions$Mutation$requestResetPassword({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$requestResetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$requestResetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$requestResetPassword>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$requestResetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationrequestResetPassword,
          parserFn: _parserFn$Mutation$requestResetPassword,
        );

  final OnMutationCompleted$Mutation$requestResetPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$requestResetPassword
    = graphql.MultiSourceResult<Mutation$requestResetPassword> Function(
  Variables$Mutation$requestResetPassword, {
  Object? optimisticResult,
  Mutation$requestResetPassword? typedOptimisticResult,
});
typedef Builder$Mutation$requestResetPassword = widgets.Widget Function(
  RunMutation$Mutation$requestResetPassword,
  graphql.QueryResult<Mutation$requestResetPassword>?,
);

class Mutation$requestResetPassword$Widget
    extends graphql_flutter.Mutation<Mutation$requestResetPassword> {
  Mutation$requestResetPassword$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$requestResetPassword? options,
    required Builder$Mutation$requestResetPassword builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$requestResetPassword(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$resetPassword {
  factory Variables$Mutation$resetPassword(
          {required Input$UserResetPasswordInput input}) =>
      Variables$Mutation$resetPassword._({
        r'input': input,
      });

  Variables$Mutation$resetPassword._(this._$data);

  factory Variables$Mutation$resetPassword.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UserResetPasswordInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$resetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserResetPasswordInput get input =>
      (_$data['input'] as Input$UserResetPasswordInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$resetPassword<Variables$Mutation$resetPassword>
      get copyWith => CopyWith$Variables$Mutation$resetPassword(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$resetPassword ||
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

abstract class CopyWith$Variables$Mutation$resetPassword<TRes> {
  factory CopyWith$Variables$Mutation$resetPassword(
    Variables$Mutation$resetPassword instance,
    TRes Function(Variables$Mutation$resetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$resetPassword;

  factory CopyWith$Variables$Mutation$resetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$resetPassword;

  TRes call({Input$UserResetPasswordInput? input});
}

class _CopyWithImpl$Variables$Mutation$resetPassword<TRes>
    implements CopyWith$Variables$Mutation$resetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$resetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$resetPassword _instance;

  final TRes Function(Variables$Mutation$resetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$resetPassword._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserResetPasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$resetPassword<TRes>
    implements CopyWith$Variables$Mutation$resetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$resetPassword(this._res);

  final TRes _res;

  @override
  call({Input$UserResetPasswordInput? input}) => _res;
}

class Mutation$resetPassword {
  Mutation$resetPassword({
    required this.resetPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$resetPassword.fromJson(Map<String, dynamic> json) {
    final l$resetPassword = json['resetPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$resetPassword(
      resetPassword: (l$resetPassword as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool resetPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$resetPassword = resetPassword;
    resultData['resetPassword'] = l$resetPassword;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$resetPassword = resetPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$resetPassword || runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetPassword = resetPassword;
    final lOther$resetPassword = other.resetPassword;
    if (l$resetPassword != lOther$resetPassword) {
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

extension UtilityExtension$Mutation$resetPassword on Mutation$resetPassword {
  CopyWith$Mutation$resetPassword<Mutation$resetPassword> get copyWith =>
      CopyWith$Mutation$resetPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$resetPassword<TRes> {
  factory CopyWith$Mutation$resetPassword(
    Mutation$resetPassword instance,
    TRes Function(Mutation$resetPassword) then,
  ) = _CopyWithImpl$Mutation$resetPassword;

  factory CopyWith$Mutation$resetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$resetPassword;

  TRes call({
    bool? resetPassword,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$resetPassword<TRes>
    implements CopyWith$Mutation$resetPassword<TRes> {
  _CopyWithImpl$Mutation$resetPassword(
    this._instance,
    this._then,
  );

  final Mutation$resetPassword _instance;

  final TRes Function(Mutation$resetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? resetPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$resetPassword(
        resetPassword: resetPassword == _undefined || resetPassword == null
            ? _instance.resetPassword
            : (resetPassword as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$resetPassword<TRes>
    implements CopyWith$Mutation$resetPassword<TRes> {
  _CopyWithStubImpl$Mutation$resetPassword(this._res);

  final TRes _res;

  @override
  call({
    bool? resetPassword,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationresetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'resetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserResetPasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resetPassword'),
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
Mutation$resetPassword _parserFn$Mutation$resetPassword(
        Map<String, dynamic> data) =>
    Mutation$resetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$resetPassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$resetPassword?,
);

class Options$Mutation$resetPassword
    extends graphql.MutationOptions<Mutation$resetPassword> {
  Options$Mutation$resetPassword({
    String? operationName,
    required Variables$Mutation$resetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$resetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$resetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$resetPassword>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$resetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationresetPassword,
          parserFn: _parserFn$Mutation$resetPassword,
        );

  final OnMutationCompleted$Mutation$resetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$resetPassword
    extends graphql.WatchQueryOptions<Mutation$resetPassword> {
  WatchOptions$Mutation$resetPassword({
    String? operationName,
    required Variables$Mutation$resetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$resetPassword? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationresetPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$resetPassword,
        );
}

extension ClientExtension$Mutation$resetPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$resetPassword>> mutate$resetPassword(
          Options$Mutation$resetPassword options) async =>
      await mutate(options);
  graphql.ObservableQuery<Mutation$resetPassword> watchMutation$resetPassword(
          WatchOptions$Mutation$resetPassword options) =>
      watchMutation(options);
}

class Mutation$resetPassword$HookResult {
  Mutation$resetPassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$resetPassword runMutation;

  final graphql.QueryResult<Mutation$resetPassword> result;
}

Mutation$resetPassword$HookResult useMutation$resetPassword(
    [WidgetOptions$Mutation$resetPassword? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$resetPassword());
  return Mutation$resetPassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$resetPassword> useWatchMutation$resetPassword(
        WatchOptions$Mutation$resetPassword options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$resetPassword
    extends graphql.MutationOptions<Mutation$resetPassword> {
  WidgetOptions$Mutation$resetPassword({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$resetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$resetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$resetPassword>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$resetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationresetPassword,
          parserFn: _parserFn$Mutation$resetPassword,
        );

  final OnMutationCompleted$Mutation$resetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$resetPassword
    = graphql.MultiSourceResult<Mutation$resetPassword> Function(
  Variables$Mutation$resetPassword, {
  Object? optimisticResult,
  Mutation$resetPassword? typedOptimisticResult,
});
typedef Builder$Mutation$resetPassword = widgets.Widget Function(
  RunMutation$Mutation$resetPassword,
  graphql.QueryResult<Mutation$resetPassword>?,
);

class Mutation$resetPassword$Widget
    extends graphql_flutter.Mutation<Mutation$resetPassword> {
  Mutation$resetPassword$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$resetPassword? options,
    required Builder$Mutation$resetPassword builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$resetPassword(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$setSetting {
  factory Variables$Mutation$setSetting({
    required String key,
    required String value,
  }) =>
      Variables$Mutation$setSetting._({
        r'key': key,
        r'value': value,
      });

  Variables$Mutation$setSetting._(this._$data);

  factory Variables$Mutation$setSetting.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$key = data['key'];
    result$data['key'] = (l$key as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as String);
    return Variables$Mutation$setSetting._(result$data);
  }

  Map<String, dynamic> _$data;

  String get key => (_$data['key'] as String);
  String get value => (_$data['value'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$key = key;
    result$data['key'] = l$key;
    final l$value = value;
    result$data['value'] = l$value;
    return result$data;
  }

  CopyWith$Variables$Mutation$setSetting<Variables$Mutation$setSetting>
      get copyWith => CopyWith$Variables$Mutation$setSetting(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$setSetting ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    return Object.hashAll([
      l$key,
      l$value,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$setSetting<TRes> {
  factory CopyWith$Variables$Mutation$setSetting(
    Variables$Mutation$setSetting instance,
    TRes Function(Variables$Mutation$setSetting) then,
  ) = _CopyWithImpl$Variables$Mutation$setSetting;

  factory CopyWith$Variables$Mutation$setSetting.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$setSetting;

  TRes call({
    String? key,
    String? value,
  });
}

class _CopyWithImpl$Variables$Mutation$setSetting<TRes>
    implements CopyWith$Variables$Mutation$setSetting<TRes> {
  _CopyWithImpl$Variables$Mutation$setSetting(
    this._instance,
    this._then,
  );

  final Variables$Mutation$setSetting _instance;

  final TRes Function(Variables$Mutation$setSetting) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Variables$Mutation$setSetting._({
        ..._instance._$data,
        if (key != _undefined && key != null) 'key': (key as String),
        if (value != _undefined && value != null) 'value': (value as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$setSetting<TRes>
    implements CopyWith$Variables$Mutation$setSetting<TRes> {
  _CopyWithStubImpl$Variables$Mutation$setSetting(this._res);

  final TRes _res;

  @override
  call({
    String? key,
    String? value,
  }) =>
      _res;
}

class Mutation$setSetting {
  Mutation$setSetting({
    required this.setSetting,
    this.$__typename = 'Mutation',
  });

  factory Mutation$setSetting.fromJson(Map<String, dynamic> json) {
    final l$setSetting = json['setSetting'];
    final l$$__typename = json['__typename'];
    return Mutation$setSetting(
      setSetting: (l$setSetting as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String setSetting;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$setSetting = setSetting;
    resultData['setSetting'] = l$setSetting;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$setSetting = setSetting;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setSetting,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$setSetting || runtimeType != other.runtimeType) {
      return false;
    }
    final l$setSetting = setSetting;
    final lOther$setSetting = other.setSetting;
    if (l$setSetting != lOther$setSetting) {
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

extension UtilityExtension$Mutation$setSetting on Mutation$setSetting {
  CopyWith$Mutation$setSetting<Mutation$setSetting> get copyWith =>
      CopyWith$Mutation$setSetting(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$setSetting<TRes> {
  factory CopyWith$Mutation$setSetting(
    Mutation$setSetting instance,
    TRes Function(Mutation$setSetting) then,
  ) = _CopyWithImpl$Mutation$setSetting;

  factory CopyWith$Mutation$setSetting.stub(TRes res) =
      _CopyWithStubImpl$Mutation$setSetting;

  TRes call({
    String? setSetting,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$setSetting<TRes>
    implements CopyWith$Mutation$setSetting<TRes> {
  _CopyWithImpl$Mutation$setSetting(
    this._instance,
    this._then,
  );

  final Mutation$setSetting _instance;

  final TRes Function(Mutation$setSetting) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? setSetting = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$setSetting(
        setSetting: setSetting == _undefined || setSetting == null
            ? _instance.setSetting
            : (setSetting as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$setSetting<TRes>
    implements CopyWith$Mutation$setSetting<TRes> {
  _CopyWithStubImpl$Mutation$setSetting(this._res);

  final TRes _res;

  @override
  call({
    String? setSetting,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationsetSetting = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'setSetting'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'key')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setSetting'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'key'),
            value: VariableNode(name: NameNode(value: 'key')),
          ),
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: VariableNode(name: NameNode(value: 'value')),
          ),
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
Mutation$setSetting _parserFn$Mutation$setSetting(Map<String, dynamic> data) =>
    Mutation$setSetting.fromJson(data);
typedef OnMutationCompleted$Mutation$setSetting = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$setSetting?,
);

class Options$Mutation$setSetting
    extends graphql.MutationOptions<Mutation$setSetting> {
  Options$Mutation$setSetting({
    String? operationName,
    required Variables$Mutation$setSetting variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$setSetting? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$setSetting? onCompleted,
    graphql.OnMutationUpdate<Mutation$setSetting>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$setSetting(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationsetSetting,
          parserFn: _parserFn$Mutation$setSetting,
        );

  final OnMutationCompleted$Mutation$setSetting? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$setSetting
    extends graphql.WatchQueryOptions<Mutation$setSetting> {
  WatchOptions$Mutation$setSetting({
    String? operationName,
    required Variables$Mutation$setSetting variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$setSetting? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationsetSetting,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$setSetting,
        );
}

extension ClientExtension$Mutation$setSetting on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$setSetting>> mutate$setSetting(
          Options$Mutation$setSetting options) async =>
      await mutate(options);
  graphql.ObservableQuery<Mutation$setSetting> watchMutation$setSetting(
          WatchOptions$Mutation$setSetting options) =>
      watchMutation(options);
}

class Mutation$setSetting$HookResult {
  Mutation$setSetting$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$setSetting runMutation;

  final graphql.QueryResult<Mutation$setSetting> result;
}

Mutation$setSetting$HookResult useMutation$setSetting(
    [WidgetOptions$Mutation$setSetting? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$setSetting());
  return Mutation$setSetting$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$setSetting> useWatchMutation$setSetting(
        WatchOptions$Mutation$setSetting options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$setSetting
    extends graphql.MutationOptions<Mutation$setSetting> {
  WidgetOptions$Mutation$setSetting({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$setSetting? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$setSetting? onCompleted,
    graphql.OnMutationUpdate<Mutation$setSetting>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$setSetting(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationsetSetting,
          parserFn: _parserFn$Mutation$setSetting,
        );

  final OnMutationCompleted$Mutation$setSetting? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$setSetting
    = graphql.MultiSourceResult<Mutation$setSetting> Function(
  Variables$Mutation$setSetting, {
  Object? optimisticResult,
  Mutation$setSetting? typedOptimisticResult,
});
typedef Builder$Mutation$setSetting = widgets.Widget Function(
  RunMutation$Mutation$setSetting,
  graphql.QueryResult<Mutation$setSetting>?,
);

class Mutation$setSetting$Widget
    extends graphql_flutter.Mutation<Mutation$setSetting> {
  Mutation$setSetting$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$setSetting? options,
    required Builder$Mutation$setSetting builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$setSetting(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$switchBookingReservation {
  factory Variables$Mutation$switchBookingReservation({
    required String firstReservationId,
    required String secondReservationId,
  }) =>
      Variables$Mutation$switchBookingReservation._({
        r'firstReservationId': firstReservationId,
        r'secondReservationId': secondReservationId,
      });

  Variables$Mutation$switchBookingReservation._(this._$data);

  factory Variables$Mutation$switchBookingReservation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstReservationId = data['firstReservationId'];
    result$data['firstReservationId'] = (l$firstReservationId as String);
    final l$secondReservationId = data['secondReservationId'];
    result$data['secondReservationId'] = (l$secondReservationId as String);
    return Variables$Mutation$switchBookingReservation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstReservationId => (_$data['firstReservationId'] as String);
  String get secondReservationId => (_$data['secondReservationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstReservationId = firstReservationId;
    result$data['firstReservationId'] = l$firstReservationId;
    final l$secondReservationId = secondReservationId;
    result$data['secondReservationId'] = l$secondReservationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$switchBookingReservation<
          Variables$Mutation$switchBookingReservation>
      get copyWith => CopyWith$Variables$Mutation$switchBookingReservation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$switchBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstReservationId = firstReservationId;
    final lOther$firstReservationId = other.firstReservationId;
    if (l$firstReservationId != lOther$firstReservationId) {
      return false;
    }
    final l$secondReservationId = secondReservationId;
    final lOther$secondReservationId = other.secondReservationId;
    if (l$secondReservationId != lOther$secondReservationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstReservationId = firstReservationId;
    final l$secondReservationId = secondReservationId;
    return Object.hashAll([
      l$firstReservationId,
      l$secondReservationId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$switchBookingReservation<TRes> {
  factory CopyWith$Variables$Mutation$switchBookingReservation(
    Variables$Mutation$switchBookingReservation instance,
    TRes Function(Variables$Mutation$switchBookingReservation) then,
  ) = _CopyWithImpl$Variables$Mutation$switchBookingReservation;

  factory CopyWith$Variables$Mutation$switchBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$switchBookingReservation;

  TRes call({
    String? firstReservationId,
    String? secondReservationId,
  });
}

class _CopyWithImpl$Variables$Mutation$switchBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$switchBookingReservation<TRes> {
  _CopyWithImpl$Variables$Mutation$switchBookingReservation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$switchBookingReservation _instance;

  final TRes Function(Variables$Mutation$switchBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? firstReservationId = _undefined,
    Object? secondReservationId = _undefined,
  }) =>
      _then(Variables$Mutation$switchBookingReservation._({
        ..._instance._$data,
        if (firstReservationId != _undefined && firstReservationId != null)
          'firstReservationId': (firstReservationId as String),
        if (secondReservationId != _undefined && secondReservationId != null)
          'secondReservationId': (secondReservationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$switchBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$switchBookingReservation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$switchBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    String? firstReservationId,
    String? secondReservationId,
  }) =>
      _res;
}

class Mutation$switchBookingReservation {
  Mutation$switchBookingReservation({
    required this.switchBookingReservation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$switchBookingReservation.fromJson(
      Map<String, dynamic> json) {
    final l$switchBookingReservation = json['switchBookingReservation'];
    final l$$__typename = json['__typename'];
    return Mutation$switchBookingReservation(
      switchBookingReservation: (l$switchBookingReservation as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool switchBookingReservation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$switchBookingReservation = switchBookingReservation;
    resultData['switchBookingReservation'] = l$switchBookingReservation;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$switchBookingReservation = switchBookingReservation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$switchBookingReservation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$switchBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$switchBookingReservation = switchBookingReservation;
    final lOther$switchBookingReservation = other.switchBookingReservation;
    if (l$switchBookingReservation != lOther$switchBookingReservation) {
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

extension UtilityExtension$Mutation$switchBookingReservation
    on Mutation$switchBookingReservation {
  CopyWith$Mutation$switchBookingReservation<Mutation$switchBookingReservation>
      get copyWith => CopyWith$Mutation$switchBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$switchBookingReservation<TRes> {
  factory CopyWith$Mutation$switchBookingReservation(
    Mutation$switchBookingReservation instance,
    TRes Function(Mutation$switchBookingReservation) then,
  ) = _CopyWithImpl$Mutation$switchBookingReservation;

  factory CopyWith$Mutation$switchBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$switchBookingReservation;

  TRes call({
    bool? switchBookingReservation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$switchBookingReservation<TRes>
    implements CopyWith$Mutation$switchBookingReservation<TRes> {
  _CopyWithImpl$Mutation$switchBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$switchBookingReservation _instance;

  final TRes Function(Mutation$switchBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? switchBookingReservation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$switchBookingReservation(
        switchBookingReservation: switchBookingReservation == _undefined ||
                switchBookingReservation == null
            ? _instance.switchBookingReservation
            : (switchBookingReservation as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$switchBookingReservation<TRes>
    implements CopyWith$Mutation$switchBookingReservation<TRes> {
  _CopyWithStubImpl$Mutation$switchBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    bool? switchBookingReservation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationswitchBookingReservation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'switchBookingReservation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstReservationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'secondReservationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'switchBookingReservation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'firstReservationId'),
            value: VariableNode(name: NameNode(value: 'firstReservationId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'secondReservationId'),
            value: VariableNode(name: NameNode(value: 'secondReservationId')),
          ),
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
Mutation$switchBookingReservation _parserFn$Mutation$switchBookingReservation(
        Map<String, dynamic> data) =>
    Mutation$switchBookingReservation.fromJson(data);
typedef OnMutationCompleted$Mutation$switchBookingReservation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$switchBookingReservation?,
);

class Options$Mutation$switchBookingReservation
    extends graphql.MutationOptions<Mutation$switchBookingReservation> {
  Options$Mutation$switchBookingReservation({
    String? operationName,
    required Variables$Mutation$switchBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$switchBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$switchBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$switchBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$switchBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationswitchBookingReservation,
          parserFn: _parserFn$Mutation$switchBookingReservation,
        );

  final OnMutationCompleted$Mutation$switchBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$switchBookingReservation
    extends graphql.WatchQueryOptions<Mutation$switchBookingReservation> {
  WatchOptions$Mutation$switchBookingReservation({
    String? operationName,
    required Variables$Mutation$switchBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$switchBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationswitchBookingReservation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$switchBookingReservation,
        );
}

extension ClientExtension$Mutation$switchBookingReservation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$switchBookingReservation>>
      mutate$switchBookingReservation(
              Options$Mutation$switchBookingReservation options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$switchBookingReservation>
      watchMutation$switchBookingReservation(
              WatchOptions$Mutation$switchBookingReservation options) =>
          watchMutation(options);
}

class Mutation$switchBookingReservation$HookResult {
  Mutation$switchBookingReservation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$switchBookingReservation runMutation;

  final graphql.QueryResult<Mutation$switchBookingReservation> result;
}

Mutation$switchBookingReservation$HookResult
    useMutation$switchBookingReservation(
        [WidgetOptions$Mutation$switchBookingReservation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$switchBookingReservation());
  return Mutation$switchBookingReservation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$switchBookingReservation>
    useWatchMutation$switchBookingReservation(
            WatchOptions$Mutation$switchBookingReservation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$switchBookingReservation
    extends graphql.MutationOptions<Mutation$switchBookingReservation> {
  WidgetOptions$Mutation$switchBookingReservation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$switchBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$switchBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$switchBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$switchBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationswitchBookingReservation,
          parserFn: _parserFn$Mutation$switchBookingReservation,
        );

  final OnMutationCompleted$Mutation$switchBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$switchBookingReservation
    = graphql.MultiSourceResult<Mutation$switchBookingReservation> Function(
  Variables$Mutation$switchBookingReservation, {
  Object? optimisticResult,
  Mutation$switchBookingReservation? typedOptimisticResult,
});
typedef Builder$Mutation$switchBookingReservation = widgets.Widget Function(
  RunMutation$Mutation$switchBookingReservation,
  graphql.QueryResult<Mutation$switchBookingReservation>?,
);

class Mutation$switchBookingReservation$Widget
    extends graphql_flutter.Mutation<Mutation$switchBookingReservation> {
  Mutation$switchBookingReservation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$switchBookingReservation? options,
    required Builder$Mutation$switchBookingReservation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$switchBookingReservation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$updateBookingBranch {
  factory Variables$Mutation$updateBookingBranch({
    required String branchId,
    required Input$BookingBranchModifiableInput data,
  }) =>
      Variables$Mutation$updateBookingBranch._({
        r'branchId': branchId,
        r'data': data,
      });

  Variables$Mutation$updateBookingBranch._(this._$data);

  factory Variables$Mutation$updateBookingBranch.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$branchId = data['branchId'];
    result$data['branchId'] = (l$branchId as String);
    final l$data = data['data'];
    result$data['data'] = Input$BookingBranchModifiableInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$updateBookingBranch._(result$data);
  }

  Map<String, dynamic> _$data;

  String get branchId => (_$data['branchId'] as String);
  Input$BookingBranchModifiableInput get data =>
      (_$data['data'] as Input$BookingBranchModifiableInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$branchId = branchId;
    result$data['branchId'] = l$branchId;
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateBookingBranch<
          Variables$Mutation$updateBookingBranch>
      get copyWith => CopyWith$Variables$Mutation$updateBookingBranch(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateBookingBranch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$branchId = branchId;
    final lOther$branchId = other.branchId;
    if (l$branchId != lOther$branchId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$branchId = branchId;
    final l$data = data;
    return Object.hashAll([
      l$branchId,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateBookingBranch<TRes> {
  factory CopyWith$Variables$Mutation$updateBookingBranch(
    Variables$Mutation$updateBookingBranch instance,
    TRes Function(Variables$Mutation$updateBookingBranch) then,
  ) = _CopyWithImpl$Variables$Mutation$updateBookingBranch;

  factory CopyWith$Variables$Mutation$updateBookingBranch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateBookingBranch;

  TRes call({
    String? branchId,
    Input$BookingBranchModifiableInput? data,
  });
}

class _CopyWithImpl$Variables$Mutation$updateBookingBranch<TRes>
    implements CopyWith$Variables$Mutation$updateBookingBranch<TRes> {
  _CopyWithImpl$Variables$Mutation$updateBookingBranch(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateBookingBranch _instance;

  final TRes Function(Variables$Mutation$updateBookingBranch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? branchId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$updateBookingBranch._({
        ..._instance._$data,
        if (branchId != _undefined && branchId != null)
          'branchId': (branchId as String),
        if (data != _undefined && data != null)
          'data': (data as Input$BookingBranchModifiableInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateBookingBranch<TRes>
    implements CopyWith$Variables$Mutation$updateBookingBranch<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateBookingBranch(this._res);

  final TRes _res;

  @override
  call({
    String? branchId,
    Input$BookingBranchModifiableInput? data,
  }) =>
      _res;
}

class Mutation$updateBookingBranch {
  Mutation$updateBookingBranch({
    required this.updateBookingBranch,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateBookingBranch.fromJson(Map<String, dynamic> json) {
    final l$updateBookingBranch = json['updateBookingBranch'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingBranch(
      updateBookingBranch:
          Mutation$updateBookingBranch$updateBookingBranch.fromJson(
              (l$updateBookingBranch as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateBookingBranch$updateBookingBranch updateBookingBranch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateBookingBranch = updateBookingBranch;
    resultData['updateBookingBranch'] = l$updateBookingBranch.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateBookingBranch = updateBookingBranch;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateBookingBranch,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateBookingBranch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBookingBranch = updateBookingBranch;
    final lOther$updateBookingBranch = other.updateBookingBranch;
    if (l$updateBookingBranch != lOther$updateBookingBranch) {
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

extension UtilityExtension$Mutation$updateBookingBranch
    on Mutation$updateBookingBranch {
  CopyWith$Mutation$updateBookingBranch<Mutation$updateBookingBranch>
      get copyWith => CopyWith$Mutation$updateBookingBranch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingBranch<TRes> {
  factory CopyWith$Mutation$updateBookingBranch(
    Mutation$updateBookingBranch instance,
    TRes Function(Mutation$updateBookingBranch) then,
  ) = _CopyWithImpl$Mutation$updateBookingBranch;

  factory CopyWith$Mutation$updateBookingBranch.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingBranch;

  TRes call({
    Mutation$updateBookingBranch$updateBookingBranch? updateBookingBranch,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingBranch$updateBookingBranch<TRes>
      get updateBookingBranch;
}

class _CopyWithImpl$Mutation$updateBookingBranch<TRes>
    implements CopyWith$Mutation$updateBookingBranch<TRes> {
  _CopyWithImpl$Mutation$updateBookingBranch(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingBranch _instance;

  final TRes Function(Mutation$updateBookingBranch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateBookingBranch = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingBranch(
        updateBookingBranch:
            updateBookingBranch == _undefined || updateBookingBranch == null
                ? _instance.updateBookingBranch
                : (updateBookingBranch
                    as Mutation$updateBookingBranch$updateBookingBranch),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateBookingBranch$updateBookingBranch<TRes>
      get updateBookingBranch {
    final local$updateBookingBranch = _instance.updateBookingBranch;
    return CopyWith$Mutation$updateBookingBranch$updateBookingBranch(
        local$updateBookingBranch, (e) => call(updateBookingBranch: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingBranch<TRes>
    implements CopyWith$Mutation$updateBookingBranch<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingBranch(this._res);

  final TRes _res;

  @override
  call({
    Mutation$updateBookingBranch$updateBookingBranch? updateBookingBranch,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateBookingBranch$updateBookingBranch<TRes>
      get updateBookingBranch =>
          CopyWith$Mutation$updateBookingBranch$updateBookingBranch.stub(_res);
}

const documentNodeMutationupdateBookingBranch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateBookingBranch'),
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
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingBranchModifiableInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateBookingBranch'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'branchId'),
            value: VariableNode(name: NameNode(value: 'branchId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
Mutation$updateBookingBranch _parserFn$Mutation$updateBookingBranch(
        Map<String, dynamic> data) =>
    Mutation$updateBookingBranch.fromJson(data);
typedef OnMutationCompleted$Mutation$updateBookingBranch = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$updateBookingBranch?,
);

class Options$Mutation$updateBookingBranch
    extends graphql.MutationOptions<Mutation$updateBookingBranch> {
  Options$Mutation$updateBookingBranch({
    String? operationName,
    required Variables$Mutation$updateBookingBranch variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingBranch? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingBranch? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingBranch>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingBranch(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingBranch,
          parserFn: _parserFn$Mutation$updateBookingBranch,
        );

  final OnMutationCompleted$Mutation$updateBookingBranch? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateBookingBranch
    extends graphql.WatchQueryOptions<Mutation$updateBookingBranch> {
  WatchOptions$Mutation$updateBookingBranch({
    String? operationName,
    required Variables$Mutation$updateBookingBranch variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingBranch? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateBookingBranch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateBookingBranch,
        );
}

extension ClientExtension$Mutation$updateBookingBranch
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateBookingBranch>>
      mutate$updateBookingBranch(
              Options$Mutation$updateBookingBranch options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$updateBookingBranch>
      watchMutation$updateBookingBranch(
              WatchOptions$Mutation$updateBookingBranch options) =>
          watchMutation(options);
}

class Mutation$updateBookingBranch$HookResult {
  Mutation$updateBookingBranch$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateBookingBranch runMutation;

  final graphql.QueryResult<Mutation$updateBookingBranch> result;
}

Mutation$updateBookingBranch$HookResult useMutation$updateBookingBranch(
    [WidgetOptions$Mutation$updateBookingBranch? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateBookingBranch());
  return Mutation$updateBookingBranch$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateBookingBranch>
    useWatchMutation$updateBookingBranch(
            WatchOptions$Mutation$updateBookingBranch options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateBookingBranch
    extends graphql.MutationOptions<Mutation$updateBookingBranch> {
  WidgetOptions$Mutation$updateBookingBranch({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingBranch? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingBranch? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingBranch>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingBranch(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingBranch,
          parserFn: _parserFn$Mutation$updateBookingBranch,
        );

  final OnMutationCompleted$Mutation$updateBookingBranch? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateBookingBranch
    = graphql.MultiSourceResult<Mutation$updateBookingBranch> Function(
  Variables$Mutation$updateBookingBranch, {
  Object? optimisticResult,
  Mutation$updateBookingBranch? typedOptimisticResult,
});
typedef Builder$Mutation$updateBookingBranch = widgets.Widget Function(
  RunMutation$Mutation$updateBookingBranch,
  graphql.QueryResult<Mutation$updateBookingBranch>?,
);

class Mutation$updateBookingBranch$Widget
    extends graphql_flutter.Mutation<Mutation$updateBookingBranch> {
  Mutation$updateBookingBranch$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateBookingBranch? options,
    required Builder$Mutation$updateBookingBranch builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateBookingBranch(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$updateBookingBranch$updateBookingBranch {
  Mutation$updateBookingBranch$updateBookingBranch({
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

  factory Mutation$updateBookingBranch$updateBookingBranch.fromJson(
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
    return Mutation$updateBookingBranch$updateBookingBranch(
      id: (l$id as String),
      name: (l$name as String),
      address: (l$address as String),
      phone: (l$phone as String?),
      mapURL: (l$mapURL as String?),
      isActive: (l$isActive as bool?),
      services: (l$services as List<dynamic>?)
          ?.map((e) => Mutation$updateBookingBranch$updateBookingBranch$services
              .fromJson((e as Map<String, dynamic>)))
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

  final List<Mutation$updateBookingBranch$updateBookingBranch$services>?
      services;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$address = address;
    resultData['address'] = l$address;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$mapURL = mapURL;
    resultData['mapURL'] = l$mapURL;
    final l$isActive = isActive;
    resultData['isActive'] = l$isActive;
    final l$services = services;
    resultData['services'] = l$services?.map((e) => e.toJson()).toList();
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingBranch$updateBookingBranch ||
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

extension UtilityExtension$Mutation$updateBookingBranch$updateBookingBranch
    on Mutation$updateBookingBranch$updateBookingBranch {
  CopyWith$Mutation$updateBookingBranch$updateBookingBranch<
          Mutation$updateBookingBranch$updateBookingBranch>
      get copyWith => CopyWith$Mutation$updateBookingBranch$updateBookingBranch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingBranch$updateBookingBranch<TRes> {
  factory CopyWith$Mutation$updateBookingBranch$updateBookingBranch(
    Mutation$updateBookingBranch$updateBookingBranch instance,
    TRes Function(Mutation$updateBookingBranch$updateBookingBranch) then,
  ) = _CopyWithImpl$Mutation$updateBookingBranch$updateBookingBranch;

  factory CopyWith$Mutation$updateBookingBranch$updateBookingBranch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingBranch$updateBookingBranch;

  TRes call({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
    List<Mutation$updateBookingBranch$updateBookingBranch$services>? services,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  TRes services(
      Iterable<Mutation$updateBookingBranch$updateBookingBranch$services>? Function(
              Iterable<
                  CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services<
                      Mutation$updateBookingBranch$updateBookingBranch$services>>?)
          fn);
}

class _CopyWithImpl$Mutation$updateBookingBranch$updateBookingBranch<TRes>
    implements CopyWith$Mutation$updateBookingBranch$updateBookingBranch<TRes> {
  _CopyWithImpl$Mutation$updateBookingBranch$updateBookingBranch(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingBranch$updateBookingBranch _instance;

  final TRes Function(Mutation$updateBookingBranch$updateBookingBranch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$updateBookingBranch$updateBookingBranch(
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
            : (services as List<
                Mutation$updateBookingBranch$updateBookingBranch$services>?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  TRes services(
          Iterable<Mutation$updateBookingBranch$updateBookingBranch$services>? Function(
                  Iterable<
                      CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services<
                          Mutation$updateBookingBranch$updateBookingBranch$services>>?)
              fn) =>
      call(
          services: fn(_instance.services?.map((e) =>
              CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Mutation$updateBookingBranch$updateBookingBranch<TRes>
    implements CopyWith$Mutation$updateBookingBranch$updateBookingBranch<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingBranch$updateBookingBranch(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? mapURL,
    bool? isActive,
    List<Mutation$updateBookingBranch$updateBookingBranch$services>? services,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  @override
  services(fn) => _res;
}

class Mutation$updateBookingBranch$updateBookingBranch$services {
  Mutation$updateBookingBranch$updateBookingBranch$services({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Mutation$updateBookingBranch$updateBookingBranch$services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingBranch$updateBookingBranch$services(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingBranch$updateBookingBranch$services ||
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

extension UtilityExtension$Mutation$updateBookingBranch$updateBookingBranch$services
    on Mutation$updateBookingBranch$updateBookingBranch$services {
  CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services<
          Mutation$updateBookingBranch$updateBookingBranch$services>
      get copyWith =>
          CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services<
    TRes> {
  factory CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services(
    Mutation$updateBookingBranch$updateBookingBranch$services instance,
    TRes Function(Mutation$updateBookingBranch$updateBookingBranch$services)
        then,
  ) = _CopyWithImpl$Mutation$updateBookingBranch$updateBookingBranch$services;

  factory CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingBranch$updateBookingBranch$services;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingBranch$updateBookingBranch$services<
        TRes>
    implements
        CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services<
            TRes> {
  _CopyWithImpl$Mutation$updateBookingBranch$updateBookingBranch$services(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingBranch$updateBookingBranch$services _instance;

  final TRes Function(Mutation$updateBookingBranch$updateBookingBranch$services)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingBranch$updateBookingBranch$services(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingBranch$updateBookingBranch$services<
        TRes>
    implements
        CopyWith$Mutation$updateBookingBranch$updateBookingBranch$services<
            TRes> {
  _CopyWithStubImpl$Mutation$updateBookingBranch$updateBookingBranch$services(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateBookingNote {
  factory Variables$Mutation$updateBookingNote({
    required String noteId,
    required Input$BookingNoteModifiableInput data,
  }) =>
      Variables$Mutation$updateBookingNote._({
        r'noteId': noteId,
        r'data': data,
      });

  Variables$Mutation$updateBookingNote._(this._$data);

  factory Variables$Mutation$updateBookingNote.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$noteId = data['noteId'];
    result$data['noteId'] = (l$noteId as String);
    final l$data = data['data'];
    result$data['data'] = Input$BookingNoteModifiableInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$updateBookingNote._(result$data);
  }

  Map<String, dynamic> _$data;

  String get noteId => (_$data['noteId'] as String);
  Input$BookingNoteModifiableInput get data =>
      (_$data['data'] as Input$BookingNoteModifiableInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$noteId = noteId;
    result$data['noteId'] = l$noteId;
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateBookingNote<
          Variables$Mutation$updateBookingNote>
      get copyWith => CopyWith$Variables$Mutation$updateBookingNote(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateBookingNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$noteId = noteId;
    final lOther$noteId = other.noteId;
    if (l$noteId != lOther$noteId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$noteId = noteId;
    final l$data = data;
    return Object.hashAll([
      l$noteId,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateBookingNote<TRes> {
  factory CopyWith$Variables$Mutation$updateBookingNote(
    Variables$Mutation$updateBookingNote instance,
    TRes Function(Variables$Mutation$updateBookingNote) then,
  ) = _CopyWithImpl$Variables$Mutation$updateBookingNote;

  factory CopyWith$Variables$Mutation$updateBookingNote.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateBookingNote;

  TRes call({
    String? noteId,
    Input$BookingNoteModifiableInput? data,
  });
}

class _CopyWithImpl$Variables$Mutation$updateBookingNote<TRes>
    implements CopyWith$Variables$Mutation$updateBookingNote<TRes> {
  _CopyWithImpl$Variables$Mutation$updateBookingNote(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateBookingNote _instance;

  final TRes Function(Variables$Mutation$updateBookingNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? noteId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$updateBookingNote._({
        ..._instance._$data,
        if (noteId != _undefined && noteId != null)
          'noteId': (noteId as String),
        if (data != _undefined && data != null)
          'data': (data as Input$BookingNoteModifiableInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateBookingNote<TRes>
    implements CopyWith$Variables$Mutation$updateBookingNote<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateBookingNote(this._res);

  final TRes _res;

  @override
  call({
    String? noteId,
    Input$BookingNoteModifiableInput? data,
  }) =>
      _res;
}

class Mutation$updateBookingNote {
  Mutation$updateBookingNote({
    required this.updateBookingNote,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateBookingNote.fromJson(Map<String, dynamic> json) {
    final l$updateBookingNote = json['updateBookingNote'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingNote(
      updateBookingNote: Mutation$updateBookingNote$updateBookingNote.fromJson(
          (l$updateBookingNote as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateBookingNote$updateBookingNote updateBookingNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateBookingNote = updateBookingNote;
    resultData['updateBookingNote'] = l$updateBookingNote.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateBookingNote = updateBookingNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateBookingNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateBookingNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBookingNote = updateBookingNote;
    final lOther$updateBookingNote = other.updateBookingNote;
    if (l$updateBookingNote != lOther$updateBookingNote) {
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

extension UtilityExtension$Mutation$updateBookingNote
    on Mutation$updateBookingNote {
  CopyWith$Mutation$updateBookingNote<Mutation$updateBookingNote>
      get copyWith => CopyWith$Mutation$updateBookingNote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingNote<TRes> {
  factory CopyWith$Mutation$updateBookingNote(
    Mutation$updateBookingNote instance,
    TRes Function(Mutation$updateBookingNote) then,
  ) = _CopyWithImpl$Mutation$updateBookingNote;

  factory CopyWith$Mutation$updateBookingNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingNote;

  TRes call({
    Mutation$updateBookingNote$updateBookingNote? updateBookingNote,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingNote$updateBookingNote<TRes>
      get updateBookingNote;
}

class _CopyWithImpl$Mutation$updateBookingNote<TRes>
    implements CopyWith$Mutation$updateBookingNote<TRes> {
  _CopyWithImpl$Mutation$updateBookingNote(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingNote _instance;

  final TRes Function(Mutation$updateBookingNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateBookingNote = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingNote(
        updateBookingNote:
            updateBookingNote == _undefined || updateBookingNote == null
                ? _instance.updateBookingNote
                : (updateBookingNote
                    as Mutation$updateBookingNote$updateBookingNote),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote<TRes>
      get updateBookingNote {
    final local$updateBookingNote = _instance.updateBookingNote;
    return CopyWith$Mutation$updateBookingNote$updateBookingNote(
        local$updateBookingNote, (e) => call(updateBookingNote: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingNote<TRes>
    implements CopyWith$Mutation$updateBookingNote<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingNote(this._res);

  final TRes _res;

  @override
  call({
    Mutation$updateBookingNote$updateBookingNote? updateBookingNote,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote<TRes>
      get updateBookingNote =>
          CopyWith$Mutation$updateBookingNote$updateBookingNote.stub(_res);
}

const documentNodeMutationupdateBookingNote = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateBookingNote'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'noteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingNoteModifiableInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateBookingNote'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'noteId'),
            value: VariableNode(name: NameNode(value: 'noteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
Mutation$updateBookingNote _parserFn$Mutation$updateBookingNote(
        Map<String, dynamic> data) =>
    Mutation$updateBookingNote.fromJson(data);
typedef OnMutationCompleted$Mutation$updateBookingNote = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$updateBookingNote?,
);

class Options$Mutation$updateBookingNote
    extends graphql.MutationOptions<Mutation$updateBookingNote> {
  Options$Mutation$updateBookingNote({
    String? operationName,
    required Variables$Mutation$updateBookingNote variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingNote? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingNote? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingNote>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingNote(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingNote,
          parserFn: _parserFn$Mutation$updateBookingNote,
        );

  final OnMutationCompleted$Mutation$updateBookingNote? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateBookingNote
    extends graphql.WatchQueryOptions<Mutation$updateBookingNote> {
  WatchOptions$Mutation$updateBookingNote({
    String? operationName,
    required Variables$Mutation$updateBookingNote variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingNote? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateBookingNote,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateBookingNote,
        );
}

extension ClientExtension$Mutation$updateBookingNote on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateBookingNote>>
      mutate$updateBookingNote(
              Options$Mutation$updateBookingNote options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$updateBookingNote>
      watchMutation$updateBookingNote(
              WatchOptions$Mutation$updateBookingNote options) =>
          watchMutation(options);
}

class Mutation$updateBookingNote$HookResult {
  Mutation$updateBookingNote$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateBookingNote runMutation;

  final graphql.QueryResult<Mutation$updateBookingNote> result;
}

Mutation$updateBookingNote$HookResult useMutation$updateBookingNote(
    [WidgetOptions$Mutation$updateBookingNote? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateBookingNote());
  return Mutation$updateBookingNote$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateBookingNote>
    useWatchMutation$updateBookingNote(
            WatchOptions$Mutation$updateBookingNote options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateBookingNote
    extends graphql.MutationOptions<Mutation$updateBookingNote> {
  WidgetOptions$Mutation$updateBookingNote({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingNote? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingNote? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingNote>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingNote(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingNote,
          parserFn: _parserFn$Mutation$updateBookingNote,
        );

  final OnMutationCompleted$Mutation$updateBookingNote? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateBookingNote
    = graphql.MultiSourceResult<Mutation$updateBookingNote> Function(
  Variables$Mutation$updateBookingNote, {
  Object? optimisticResult,
  Mutation$updateBookingNote? typedOptimisticResult,
});
typedef Builder$Mutation$updateBookingNote = widgets.Widget Function(
  RunMutation$Mutation$updateBookingNote,
  graphql.QueryResult<Mutation$updateBookingNote>?,
);

class Mutation$updateBookingNote$Widget
    extends graphql_flutter.Mutation<Mutation$updateBookingNote> {
  Mutation$updateBookingNote$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateBookingNote? options,
    required Builder$Mutation$updateBookingNote builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateBookingNote(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$updateBookingNote$updateBookingNote {
  Mutation$updateBookingNote$updateBookingNote({
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

  factory Mutation$updateBookingNote$updateBookingNote.fromJson(
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
    return Mutation$updateBookingNote$updateBookingNote(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Mutation$updateBookingNote$updateBookingNote$user.fromJson(
          (l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String?),
      branch: l$branch == null
          ? null
          : Mutation$updateBookingNote$updateBookingNote$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      visitId: (l$visitId as String?),
      visit: l$visit == null
          ? null
          : Mutation$updateBookingNote$updateBookingNote$visit.fromJson(
              (l$visit as Map<String, dynamic>)),
      text: (l$text as String?),
      createdAt: (l$createdAt as int?),
      updatedAt: (l$updatedAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Mutation$updateBookingNote$updateBookingNote$user user;

  final String? branchId;

  final Mutation$updateBookingNote$updateBookingNote$branch? branch;

  final String? visitId;

  final Mutation$updateBookingNote$updateBookingNote$visit? visit;

  final String? text;

  final int? createdAt;

  final int? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch?.toJson();
    final l$visitId = visitId;
    resultData['visitId'] = l$visitId;
    final l$visit = visit;
    resultData['visit'] = l$visit?.toJson();
    final l$text = text;
    resultData['text'] = l$text;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingNote$updateBookingNote ||
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

extension UtilityExtension$Mutation$updateBookingNote$updateBookingNote
    on Mutation$updateBookingNote$updateBookingNote {
  CopyWith$Mutation$updateBookingNote$updateBookingNote<
          Mutation$updateBookingNote$updateBookingNote>
      get copyWith => CopyWith$Mutation$updateBookingNote$updateBookingNote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingNote$updateBookingNote<TRes> {
  factory CopyWith$Mutation$updateBookingNote$updateBookingNote(
    Mutation$updateBookingNote$updateBookingNote instance,
    TRes Function(Mutation$updateBookingNote$updateBookingNote) then,
  ) = _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote;

  factory CopyWith$Mutation$updateBookingNote$updateBookingNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote;

  TRes call({
    String? id,
    String? userId,
    Mutation$updateBookingNote$updateBookingNote$user? user,
    String? branchId,
    Mutation$updateBookingNote$updateBookingNote$branch? branch,
    String? visitId,
    Mutation$updateBookingNote$updateBookingNote$visit? visit,
    String? text,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingNote$updateBookingNote$user<TRes> get user;
  CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<TRes> get branch;
  CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<TRes> get visit;
}

class _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote<TRes>
    implements CopyWith$Mutation$updateBookingNote$updateBookingNote<TRes> {
  _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingNote$updateBookingNote _instance;

  final TRes Function(Mutation$updateBookingNote$updateBookingNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$updateBookingNote$updateBookingNote(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$updateBookingNote$updateBookingNote$user),
        branchId:
            branchId == _undefined ? _instance.branchId : (branchId as String?),
        branch: branch == _undefined
            ? _instance.branch
            : (branch as Mutation$updateBookingNote$updateBookingNote$branch?),
        visitId:
            visitId == _undefined ? _instance.visitId : (visitId as String?),
        visit: visit == _undefined
            ? _instance.visit
            : (visit as Mutation$updateBookingNote$updateBookingNote$visit?),
        text: text == _undefined ? _instance.text : (text as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$updateBookingNote$updateBookingNote$user(
        local$user, (e) => call(user: e));
  }

  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<TRes>
      get branch {
    final local$branch = _instance.branch;
    return local$branch == null
        ? CopyWith$Mutation$updateBookingNote$updateBookingNote$branch.stub(
            _then(_instance))
        : CopyWith$Mutation$updateBookingNote$updateBookingNote$branch(
            local$branch, (e) => call(branch: e));
  }

  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<TRes> get visit {
    final local$visit = _instance.visit;
    return local$visit == null
        ? CopyWith$Mutation$updateBookingNote$updateBookingNote$visit.stub(
            _then(_instance))
        : CopyWith$Mutation$updateBookingNote$updateBookingNote$visit(
            local$visit, (e) => call(visit: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote<TRes>
    implements CopyWith$Mutation$updateBookingNote$updateBookingNote<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? userId,
    Mutation$updateBookingNote$updateBookingNote$user? user,
    String? branchId,
    Mutation$updateBookingNote$updateBookingNote$branch? branch,
    String? visitId,
    Mutation$updateBookingNote$updateBookingNote$visit? visit,
    String? text,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote$user<TRes> get user =>
      CopyWith$Mutation$updateBookingNote$updateBookingNote$user.stub(_res);
  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<TRes>
      get branch =>
          CopyWith$Mutation$updateBookingNote$updateBookingNote$branch.stub(
              _res);
  @override
  CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<TRes> get visit =>
      CopyWith$Mutation$updateBookingNote$updateBookingNote$visit.stub(_res);
}

class Mutation$updateBookingNote$updateBookingNote$user {
  Mutation$updateBookingNote$updateBookingNote$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$updateBookingNote$updateBookingNote$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingNote$updateBookingNote$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingNote$updateBookingNote$user ||
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

extension UtilityExtension$Mutation$updateBookingNote$updateBookingNote$user
    on Mutation$updateBookingNote$updateBookingNote$user {
  CopyWith$Mutation$updateBookingNote$updateBookingNote$user<
          Mutation$updateBookingNote$updateBookingNote$user>
      get copyWith =>
          CopyWith$Mutation$updateBookingNote$updateBookingNote$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingNote$updateBookingNote$user<
    TRes> {
  factory CopyWith$Mutation$updateBookingNote$updateBookingNote$user(
    Mutation$updateBookingNote$updateBookingNote$user instance,
    TRes Function(Mutation$updateBookingNote$updateBookingNote$user) then,
  ) = _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$user;

  factory CopyWith$Mutation$updateBookingNote$updateBookingNote$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$user<TRes>
    implements
        CopyWith$Mutation$updateBookingNote$updateBookingNote$user<TRes> {
  _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$user(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingNote$updateBookingNote$user _instance;

  final TRes Function(Mutation$updateBookingNote$updateBookingNote$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingNote$updateBookingNote$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$user<TRes>
    implements
        CopyWith$Mutation$updateBookingNote$updateBookingNote$user<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$user(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateBookingNote$updateBookingNote$branch {
  Mutation$updateBookingNote$updateBookingNote$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$updateBookingNote$updateBookingNote$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingNote$updateBookingNote$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingNote$updateBookingNote$branch ||
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

extension UtilityExtension$Mutation$updateBookingNote$updateBookingNote$branch
    on Mutation$updateBookingNote$updateBookingNote$branch {
  CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<
          Mutation$updateBookingNote$updateBookingNote$branch>
      get copyWith =>
          CopyWith$Mutation$updateBookingNote$updateBookingNote$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<
    TRes> {
  factory CopyWith$Mutation$updateBookingNote$updateBookingNote$branch(
    Mutation$updateBookingNote$updateBookingNote$branch instance,
    TRes Function(Mutation$updateBookingNote$updateBookingNote$branch) then,
  ) = _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$branch;

  factory CopyWith$Mutation$updateBookingNote$updateBookingNote$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$branch<TRes>
    implements
        CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<TRes> {
  _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$branch(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingNote$updateBookingNote$branch _instance;

  final TRes Function(Mutation$updateBookingNote$updateBookingNote$branch)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingNote$updateBookingNote$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$branch<
        TRes>
    implements
        CopyWith$Mutation$updateBookingNote$updateBookingNote$branch<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateBookingNote$updateBookingNote$visit {
  Mutation$updateBookingNote$updateBookingNote$visit({
    required this.id,
    this.$__typename = 'BookingVisit',
  });

  factory Mutation$updateBookingNote$updateBookingNote$visit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingNote$updateBookingNote$visit(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingNote$updateBookingNote$visit ||
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

extension UtilityExtension$Mutation$updateBookingNote$updateBookingNote$visit
    on Mutation$updateBookingNote$updateBookingNote$visit {
  CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<
          Mutation$updateBookingNote$updateBookingNote$visit>
      get copyWith =>
          CopyWith$Mutation$updateBookingNote$updateBookingNote$visit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<
    TRes> {
  factory CopyWith$Mutation$updateBookingNote$updateBookingNote$visit(
    Mutation$updateBookingNote$updateBookingNote$visit instance,
    TRes Function(Mutation$updateBookingNote$updateBookingNote$visit) then,
  ) = _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$visit;

  factory CopyWith$Mutation$updateBookingNote$updateBookingNote$visit.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$visit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$visit<TRes>
    implements
        CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<TRes> {
  _CopyWithImpl$Mutation$updateBookingNote$updateBookingNote$visit(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingNote$updateBookingNote$visit _instance;

  final TRes Function(Mutation$updateBookingNote$updateBookingNote$visit) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingNote$updateBookingNote$visit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$visit<TRes>
    implements
        CopyWith$Mutation$updateBookingNote$updateBookingNote$visit<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingNote$updateBookingNote$visit(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateBookingReservation {
  factory Variables$Mutation$updateBookingReservation({
    required String reservationId,
    required Input$BookingReservationModifiableInput data,
  }) =>
      Variables$Mutation$updateBookingReservation._({
        r'reservationId': reservationId,
        r'data': data,
      });

  Variables$Mutation$updateBookingReservation._(this._$data);

  factory Variables$Mutation$updateBookingReservation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reservationId = data['reservationId'];
    result$data['reservationId'] = (l$reservationId as String);
    final l$data = data['data'];
    result$data['data'] = Input$BookingReservationModifiableInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$updateBookingReservation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get reservationId => (_$data['reservationId'] as String);
  Input$BookingReservationModifiableInput get data =>
      (_$data['data'] as Input$BookingReservationModifiableInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reservationId = reservationId;
    result$data['reservationId'] = l$reservationId;
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateBookingReservation<
          Variables$Mutation$updateBookingReservation>
      get copyWith => CopyWith$Variables$Mutation$updateBookingReservation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reservationId = reservationId;
    final lOther$reservationId = other.reservationId;
    if (l$reservationId != lOther$reservationId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reservationId = reservationId;
    final l$data = data;
    return Object.hashAll([
      l$reservationId,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateBookingReservation<TRes> {
  factory CopyWith$Variables$Mutation$updateBookingReservation(
    Variables$Mutation$updateBookingReservation instance,
    TRes Function(Variables$Mutation$updateBookingReservation) then,
  ) = _CopyWithImpl$Variables$Mutation$updateBookingReservation;

  factory CopyWith$Variables$Mutation$updateBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateBookingReservation;

  TRes call({
    String? reservationId,
    Input$BookingReservationModifiableInput? data,
  });
}

class _CopyWithImpl$Variables$Mutation$updateBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$updateBookingReservation<TRes> {
  _CopyWithImpl$Variables$Mutation$updateBookingReservation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateBookingReservation _instance;

  final TRes Function(Variables$Mutation$updateBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? reservationId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$updateBookingReservation._({
        ..._instance._$data,
        if (reservationId != _undefined && reservationId != null)
          'reservationId': (reservationId as String),
        if (data != _undefined && data != null)
          'data': (data as Input$BookingReservationModifiableInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateBookingReservation<TRes>
    implements CopyWith$Variables$Mutation$updateBookingReservation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    String? reservationId,
    Input$BookingReservationModifiableInput? data,
  }) =>
      _res;
}

class Mutation$updateBookingReservation {
  Mutation$updateBookingReservation({
    required this.updateBookingReservation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateBookingReservation.fromJson(
      Map<String, dynamic> json) {
    final l$updateBookingReservation = json['updateBookingReservation'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingReservation(
      updateBookingReservation:
          Mutation$updateBookingReservation$updateBookingReservation.fromJson(
              (l$updateBookingReservation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateBookingReservation$updateBookingReservation
      updateBookingReservation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateBookingReservation = updateBookingReservation;
    resultData['updateBookingReservation'] =
        l$updateBookingReservation.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateBookingReservation = updateBookingReservation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateBookingReservation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateBookingReservation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBookingReservation = updateBookingReservation;
    final lOther$updateBookingReservation = other.updateBookingReservation;
    if (l$updateBookingReservation != lOther$updateBookingReservation) {
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

extension UtilityExtension$Mutation$updateBookingReservation
    on Mutation$updateBookingReservation {
  CopyWith$Mutation$updateBookingReservation<Mutation$updateBookingReservation>
      get copyWith => CopyWith$Mutation$updateBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingReservation<TRes> {
  factory CopyWith$Mutation$updateBookingReservation(
    Mutation$updateBookingReservation instance,
    TRes Function(Mutation$updateBookingReservation) then,
  ) = _CopyWithImpl$Mutation$updateBookingReservation;

  factory CopyWith$Mutation$updateBookingReservation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingReservation;

  TRes call({
    Mutation$updateBookingReservation$updateBookingReservation?
        updateBookingReservation,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation<TRes>
      get updateBookingReservation;
}

class _CopyWithImpl$Mutation$updateBookingReservation<TRes>
    implements CopyWith$Mutation$updateBookingReservation<TRes> {
  _CopyWithImpl$Mutation$updateBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingReservation _instance;

  final TRes Function(Mutation$updateBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateBookingReservation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingReservation(
        updateBookingReservation: updateBookingReservation == _undefined ||
                updateBookingReservation == null
            ? _instance.updateBookingReservation
            : (updateBookingReservation
                as Mutation$updateBookingReservation$updateBookingReservation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation<TRes>
      get updateBookingReservation {
    final local$updateBookingReservation = _instance.updateBookingReservation;
    return CopyWith$Mutation$updateBookingReservation$updateBookingReservation(
        local$updateBookingReservation,
        (e) => call(updateBookingReservation: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingReservation<TRes>
    implements CopyWith$Mutation$updateBookingReservation<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingReservation(this._res);

  final TRes _res;

  @override
  call({
    Mutation$updateBookingReservation$updateBookingReservation?
        updateBookingReservation,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation<TRes>
      get updateBookingReservation =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation
              .stub(_res);
}

const documentNodeMutationupdateBookingReservation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateBookingReservation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reservationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingReservationModifiableInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateBookingReservation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'reservationId'),
            value: VariableNode(name: NameNode(value: 'reservationId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
Mutation$updateBookingReservation _parserFn$Mutation$updateBookingReservation(
        Map<String, dynamic> data) =>
    Mutation$updateBookingReservation.fromJson(data);
typedef OnMutationCompleted$Mutation$updateBookingReservation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$updateBookingReservation?,
);

class Options$Mutation$updateBookingReservation
    extends graphql.MutationOptions<Mutation$updateBookingReservation> {
  Options$Mutation$updateBookingReservation({
    String? operationName,
    required Variables$Mutation$updateBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingReservation,
          parserFn: _parserFn$Mutation$updateBookingReservation,
        );

  final OnMutationCompleted$Mutation$updateBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateBookingReservation
    extends graphql.WatchQueryOptions<Mutation$updateBookingReservation> {
  WatchOptions$Mutation$updateBookingReservation({
    String? operationName,
    required Variables$Mutation$updateBookingReservation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateBookingReservation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateBookingReservation,
        );
}

extension ClientExtension$Mutation$updateBookingReservation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateBookingReservation>>
      mutate$updateBookingReservation(
              Options$Mutation$updateBookingReservation options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$updateBookingReservation>
      watchMutation$updateBookingReservation(
              WatchOptions$Mutation$updateBookingReservation options) =>
          watchMutation(options);
}

class Mutation$updateBookingReservation$HookResult {
  Mutation$updateBookingReservation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateBookingReservation runMutation;

  final graphql.QueryResult<Mutation$updateBookingReservation> result;
}

Mutation$updateBookingReservation$HookResult
    useMutation$updateBookingReservation(
        [WidgetOptions$Mutation$updateBookingReservation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$updateBookingReservation());
  return Mutation$updateBookingReservation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateBookingReservation>
    useWatchMutation$updateBookingReservation(
            WatchOptions$Mutation$updateBookingReservation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateBookingReservation
    extends graphql.MutationOptions<Mutation$updateBookingReservation> {
  WidgetOptions$Mutation$updateBookingReservation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingReservation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingReservation? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingReservation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingReservation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingReservation,
          parserFn: _parserFn$Mutation$updateBookingReservation,
        );

  final OnMutationCompleted$Mutation$updateBookingReservation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateBookingReservation
    = graphql.MultiSourceResult<Mutation$updateBookingReservation> Function(
  Variables$Mutation$updateBookingReservation, {
  Object? optimisticResult,
  Mutation$updateBookingReservation? typedOptimisticResult,
});
typedef Builder$Mutation$updateBookingReservation = widgets.Widget Function(
  RunMutation$Mutation$updateBookingReservation,
  graphql.QueryResult<Mutation$updateBookingReservation>?,
);

class Mutation$updateBookingReservation$Widget
    extends graphql_flutter.Mutation<Mutation$updateBookingReservation> {
  Mutation$updateBookingReservation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateBookingReservation? options,
    required Builder$Mutation$updateBookingReservation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateBookingReservation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$updateBookingReservation$updateBookingReservation {
  Mutation$updateBookingReservation$updateBookingReservation({
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

  factory Mutation$updateBookingReservation$updateBookingReservation.fromJson(
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
    return Mutation$updateBookingReservation$updateBookingReservation(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Mutation$updateBookingReservation$updateBookingReservation$user
          .fromJson((l$user as Map<String, dynamic>)),
      branchId: (l$branchId as String),
      branch: Mutation$updateBookingReservation$updateBookingReservation$branch
          .fromJson((l$branch as Map<String, dynamic>)),
      serviceId: (l$serviceId as String),
      service:
          Mutation$updateBookingReservation$updateBookingReservation$service
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

  final Mutation$updateBookingReservation$updateBookingReservation$user user;

  final String branchId;

  final Mutation$updateBookingReservation$updateBookingReservation$branch
      branch;

  final String serviceId;

  final Mutation$updateBookingReservation$updateBookingReservation$service
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
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch.toJson();
    final l$serviceId = serviceId;
    resultData['serviceId'] = l$serviceId;
    final l$service = service;
    resultData['service'] = l$service.toJson();
    final l$channel = channel;
    resultData['channel'] = l$channel;
    final l$date = date;
    resultData['date'] = l$date;
    final l$time = time;
    resultData['time'] = l$time;
    final l$queueNumber = queueNumber;
    resultData['queueNumber'] = l$queueNumber;
    final l$status = status;
    resultData['status'] = toJson$Enum$BookingReservationStatus(l$status);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingReservation$updateBookingReservation ||
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

extension UtilityExtension$Mutation$updateBookingReservation$updateBookingReservation
    on Mutation$updateBookingReservation$updateBookingReservation {
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation<
          Mutation$updateBookingReservation$updateBookingReservation>
      get copyWith =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingReservation$updateBookingReservation<
    TRes> {
  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation(
    Mutation$updateBookingReservation$updateBookingReservation instance,
    TRes Function(Mutation$updateBookingReservation$updateBookingReservation)
        then,
  ) = _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation;

  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation;

  TRes call({
    String? id,
    String? userId,
    Mutation$updateBookingReservation$updateBookingReservation$user? user,
    String? branchId,
    Mutation$updateBookingReservation$updateBookingReservation$branch? branch,
    String? serviceId,
    Mutation$updateBookingReservation$updateBookingReservation$service? service,
    String? channel,
    int? date,
    int? time,
    int? queueNumber,
    Enum$BookingReservationStatus? status,
    int? createdAt,
    int? updatedAt,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<TRes>
      get user;
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
      TRes> get branch;
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
      TRes> get service;
}

class _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation<
            TRes> {
  _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingReservation$updateBookingReservation _instance;

  final TRes Function(
      Mutation$updateBookingReservation$updateBookingReservation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$updateBookingReservation$updateBookingReservation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user
                as Mutation$updateBookingReservation$updateBookingReservation$user),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch
                as Mutation$updateBookingReservation$updateBookingReservation$branch),
        serviceId: serviceId == _undefined || serviceId == null
            ? _instance.serviceId
            : (serviceId as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Mutation$updateBookingReservation$updateBookingReservation$service),
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
  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user(
        local$user, (e) => call(user: e));
  }

  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
      TRes> get branch {
    final local$branch = _instance.branch;
    return CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch(
        local$branch, (e) => call(branch: e));
  }

  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation<
            TRes> {
  _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? userId,
    Mutation$updateBookingReservation$updateBookingReservation$user? user,
    String? branchId,
    Mutation$updateBookingReservation$updateBookingReservation$branch? branch,
    String? serviceId,
    Mutation$updateBookingReservation$updateBookingReservation$service? service,
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
  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<TRes>
      get user =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user
              .stub(_res);
  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
          TRes>
      get branch =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch
              .stub(_res);
  @override
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
          TRes>
      get service =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service
              .stub(_res);
}

class Mutation$updateBookingReservation$updateBookingReservation$user {
  Mutation$updateBookingReservation$updateBookingReservation$user({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$updateBookingReservation$updateBookingReservation$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingReservation$updateBookingReservation$user(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$updateBookingReservation$updateBookingReservation$user ||
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

extension UtilityExtension$Mutation$updateBookingReservation$updateBookingReservation$user
    on Mutation$updateBookingReservation$updateBookingReservation$user {
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<
          Mutation$updateBookingReservation$updateBookingReservation$user>
      get copyWith =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<
    TRes> {
  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user(
    Mutation$updateBookingReservation$updateBookingReservation$user instance,
    TRes Function(
            Mutation$updateBookingReservation$updateBookingReservation$user)
        then,
  ) = _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$user;

  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$user;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$user<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<
            TRes> {
  _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$user(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingReservation$updateBookingReservation$user
      _instance;

  final TRes Function(
      Mutation$updateBookingReservation$updateBookingReservation$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingReservation$updateBookingReservation$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$user<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation$user<
            TRes> {
  _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$user(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateBookingReservation$updateBookingReservation$branch {
  Mutation$updateBookingReservation$updateBookingReservation$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$updateBookingReservation$updateBookingReservation$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingReservation$updateBookingReservation$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$updateBookingReservation$updateBookingReservation$branch ||
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

extension UtilityExtension$Mutation$updateBookingReservation$updateBookingReservation$branch
    on Mutation$updateBookingReservation$updateBookingReservation$branch {
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
          Mutation$updateBookingReservation$updateBookingReservation$branch>
      get copyWith =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
    TRes> {
  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch(
    Mutation$updateBookingReservation$updateBookingReservation$branch instance,
    TRes Function(
            Mutation$updateBookingReservation$updateBookingReservation$branch)
        then,
  ) = _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$branch;

  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$branch<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
            TRes> {
  _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$branch(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingReservation$updateBookingReservation$branch
      _instance;

  final TRes Function(
      Mutation$updateBookingReservation$updateBookingReservation$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingReservation$updateBookingReservation$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$branch<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation$branch<
            TRes> {
  _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateBookingReservation$updateBookingReservation$service {
  Mutation$updateBookingReservation$updateBookingReservation$service({
    required this.id,
    this.$__typename = 'BookingService',
  });

  factory Mutation$updateBookingReservation$updateBookingReservation$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingReservation$updateBookingReservation$service(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$updateBookingReservation$updateBookingReservation$service ||
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

extension UtilityExtension$Mutation$updateBookingReservation$updateBookingReservation$service
    on Mutation$updateBookingReservation$updateBookingReservation$service {
  CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
          Mutation$updateBookingReservation$updateBookingReservation$service>
      get copyWith =>
          CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
    TRes> {
  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service(
    Mutation$updateBookingReservation$updateBookingReservation$service instance,
    TRes Function(
            Mutation$updateBookingReservation$updateBookingReservation$service)
        then,
  ) = _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$service;

  factory CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$service;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$service<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
            TRes> {
  _CopyWithImpl$Mutation$updateBookingReservation$updateBookingReservation$service(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingReservation$updateBookingReservation$service
      _instance;

  final TRes Function(
      Mutation$updateBookingReservation$updateBookingReservation$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingReservation$updateBookingReservation$service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$service<
        TRes>
    implements
        CopyWith$Mutation$updateBookingReservation$updateBookingReservation$service<
            TRes> {
  _CopyWithStubImpl$Mutation$updateBookingReservation$updateBookingReservation$service(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateBookingService {
  factory Variables$Mutation$updateBookingService({
    required String serviceId,
    required Input$BookingServiceModifiableInput data,
  }) =>
      Variables$Mutation$updateBookingService._({
        r'serviceId': serviceId,
        r'data': data,
      });

  Variables$Mutation$updateBookingService._(this._$data);

  factory Variables$Mutation$updateBookingService.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = (l$serviceId as String);
    final l$data = data['data'];
    result$data['data'] = Input$BookingServiceModifiableInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$updateBookingService._(result$data);
  }

  Map<String, dynamic> _$data;

  String get serviceId => (_$data['serviceId'] as String);
  Input$BookingServiceModifiableInput get data =>
      (_$data['data'] as Input$BookingServiceModifiableInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$serviceId = serviceId;
    result$data['serviceId'] = l$serviceId;
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateBookingService<
          Variables$Mutation$updateBookingService>
      get copyWith => CopyWith$Variables$Mutation$updateBookingService(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateBookingService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    final l$data = data;
    return Object.hashAll([
      l$serviceId,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateBookingService<TRes> {
  factory CopyWith$Variables$Mutation$updateBookingService(
    Variables$Mutation$updateBookingService instance,
    TRes Function(Variables$Mutation$updateBookingService) then,
  ) = _CopyWithImpl$Variables$Mutation$updateBookingService;

  factory CopyWith$Variables$Mutation$updateBookingService.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateBookingService;

  TRes call({
    String? serviceId,
    Input$BookingServiceModifiableInput? data,
  });
}

class _CopyWithImpl$Variables$Mutation$updateBookingService<TRes>
    implements CopyWith$Variables$Mutation$updateBookingService<TRes> {
  _CopyWithImpl$Variables$Mutation$updateBookingService(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateBookingService _instance;

  final TRes Function(Variables$Mutation$updateBookingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? serviceId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$updateBookingService._({
        ..._instance._$data,
        if (serviceId != _undefined && serviceId != null)
          'serviceId': (serviceId as String),
        if (data != _undefined && data != null)
          'data': (data as Input$BookingServiceModifiableInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateBookingService<TRes>
    implements CopyWith$Variables$Mutation$updateBookingService<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateBookingService(this._res);

  final TRes _res;

  @override
  call({
    String? serviceId,
    Input$BookingServiceModifiableInput? data,
  }) =>
      _res;
}

class Mutation$updateBookingService {
  Mutation$updateBookingService({
    required this.updateBookingService,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateBookingService.fromJson(Map<String, dynamic> json) {
    final l$updateBookingService = json['updateBookingService'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingService(
      updateBookingService:
          Mutation$updateBookingService$updateBookingService.fromJson(
              (l$updateBookingService as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateBookingService$updateBookingService updateBookingService;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateBookingService = updateBookingService;
    resultData['updateBookingService'] = l$updateBookingService.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateBookingService = updateBookingService;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateBookingService,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateBookingService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBookingService = updateBookingService;
    final lOther$updateBookingService = other.updateBookingService;
    if (l$updateBookingService != lOther$updateBookingService) {
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

extension UtilityExtension$Mutation$updateBookingService
    on Mutation$updateBookingService {
  CopyWith$Mutation$updateBookingService<Mutation$updateBookingService>
      get copyWith => CopyWith$Mutation$updateBookingService(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingService<TRes> {
  factory CopyWith$Mutation$updateBookingService(
    Mutation$updateBookingService instance,
    TRes Function(Mutation$updateBookingService) then,
  ) = _CopyWithImpl$Mutation$updateBookingService;

  factory CopyWith$Mutation$updateBookingService.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingService;

  TRes call({
    Mutation$updateBookingService$updateBookingService? updateBookingService,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingService$updateBookingService<TRes>
      get updateBookingService;
}

class _CopyWithImpl$Mutation$updateBookingService<TRes>
    implements CopyWith$Mutation$updateBookingService<TRes> {
  _CopyWithImpl$Mutation$updateBookingService(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingService _instance;

  final TRes Function(Mutation$updateBookingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateBookingService = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingService(
        updateBookingService:
            updateBookingService == _undefined || updateBookingService == null
                ? _instance.updateBookingService
                : (updateBookingService
                    as Mutation$updateBookingService$updateBookingService),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateBookingService$updateBookingService<TRes>
      get updateBookingService {
    final local$updateBookingService = _instance.updateBookingService;
    return CopyWith$Mutation$updateBookingService$updateBookingService(
        local$updateBookingService, (e) => call(updateBookingService: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingService<TRes>
    implements CopyWith$Mutation$updateBookingService<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingService(this._res);

  final TRes _res;

  @override
  call({
    Mutation$updateBookingService$updateBookingService? updateBookingService,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateBookingService$updateBookingService<TRes>
      get updateBookingService =>
          CopyWith$Mutation$updateBookingService$updateBookingService.stub(
              _res);
}

const documentNodeMutationupdateBookingService = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateBookingService'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'serviceId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookingServiceModifiableInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateBookingService'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'serviceId'),
            value: VariableNode(name: NameNode(value: 'serviceId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
            name: NameNode(value: 'isActive'),
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
            name: NameNode(value: 'duration'),
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
Mutation$updateBookingService _parserFn$Mutation$updateBookingService(
        Map<String, dynamic> data) =>
    Mutation$updateBookingService.fromJson(data);
typedef OnMutationCompleted$Mutation$updateBookingService = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$updateBookingService?,
);

class Options$Mutation$updateBookingService
    extends graphql.MutationOptions<Mutation$updateBookingService> {
  Options$Mutation$updateBookingService({
    String? operationName,
    required Variables$Mutation$updateBookingService variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingService? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingService? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingService>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingService(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingService,
          parserFn: _parserFn$Mutation$updateBookingService,
        );

  final OnMutationCompleted$Mutation$updateBookingService?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateBookingService
    extends graphql.WatchQueryOptions<Mutation$updateBookingService> {
  WatchOptions$Mutation$updateBookingService({
    String? operationName,
    required Variables$Mutation$updateBookingService variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingService? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateBookingService,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateBookingService,
        );
}

extension ClientExtension$Mutation$updateBookingService
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateBookingService>>
      mutate$updateBookingService(
              Options$Mutation$updateBookingService options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$updateBookingService>
      watchMutation$updateBookingService(
              WatchOptions$Mutation$updateBookingService options) =>
          watchMutation(options);
}

class Mutation$updateBookingService$HookResult {
  Mutation$updateBookingService$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateBookingService runMutation;

  final graphql.QueryResult<Mutation$updateBookingService> result;
}

Mutation$updateBookingService$HookResult useMutation$updateBookingService(
    [WidgetOptions$Mutation$updateBookingService? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateBookingService());
  return Mutation$updateBookingService$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateBookingService>
    useWatchMutation$updateBookingService(
            WatchOptions$Mutation$updateBookingService options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateBookingService
    extends graphql.MutationOptions<Mutation$updateBookingService> {
  WidgetOptions$Mutation$updateBookingService({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateBookingService? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateBookingService? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateBookingService>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateBookingService(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateBookingService,
          parserFn: _parserFn$Mutation$updateBookingService,
        );

  final OnMutationCompleted$Mutation$updateBookingService?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateBookingService
    = graphql.MultiSourceResult<Mutation$updateBookingService> Function(
  Variables$Mutation$updateBookingService, {
  Object? optimisticResult,
  Mutation$updateBookingService? typedOptimisticResult,
});
typedef Builder$Mutation$updateBookingService = widgets.Widget Function(
  RunMutation$Mutation$updateBookingService,
  graphql.QueryResult<Mutation$updateBookingService>?,
);

class Mutation$updateBookingService$Widget
    extends graphql_flutter.Mutation<Mutation$updateBookingService> {
  Mutation$updateBookingService$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateBookingService? options,
    required Builder$Mutation$updateBookingService builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateBookingService(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$updateBookingService$updateBookingService {
  Mutation$updateBookingService$updateBookingService({
    required this.id,
    required this.branchId,
    required this.branch,
    this.isActive,
    required this.name,
    required this.duration,
    this.$__typename = 'BookingService',
  });

  factory Mutation$updateBookingService$updateBookingService.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$branchId = json['branchId'];
    final l$branch = json['branch'];
    final l$isActive = json['isActive'];
    final l$name = json['name'];
    final l$duration = json['duration'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingService$updateBookingService(
      id: (l$id as String),
      branchId: (l$branchId as String),
      branch:
          Mutation$updateBookingService$updateBookingService$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      isActive: (l$isActive as bool?),
      name: (l$name as String),
      duration: (l$duration as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String branchId;

  final Mutation$updateBookingService$updateBookingService$branch branch;

  final bool? isActive;

  final String name;

  final int duration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$branchId = branchId;
    resultData['branchId'] = l$branchId;
    final l$branch = branch;
    resultData['branch'] = l$branch.toJson();
    final l$isActive = isActive;
    resultData['isActive'] = l$isActive;
    final l$name = name;
    resultData['name'] = l$name;
    final l$duration = duration;
    resultData['duration'] = l$duration;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$branchId = branchId;
    final l$branch = branch;
    final l$isActive = isActive;
    final l$name = name;
    final l$duration = duration;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$branchId,
      l$branch,
      l$isActive,
      l$name,
      l$duration,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateBookingService$updateBookingService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$updateBookingService$updateBookingService
    on Mutation$updateBookingService$updateBookingService {
  CopyWith$Mutation$updateBookingService$updateBookingService<
          Mutation$updateBookingService$updateBookingService>
      get copyWith =>
          CopyWith$Mutation$updateBookingService$updateBookingService(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingService$updateBookingService<
    TRes> {
  factory CopyWith$Mutation$updateBookingService$updateBookingService(
    Mutation$updateBookingService$updateBookingService instance,
    TRes Function(Mutation$updateBookingService$updateBookingService) then,
  ) = _CopyWithImpl$Mutation$updateBookingService$updateBookingService;

  factory CopyWith$Mutation$updateBookingService$updateBookingService.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingService$updateBookingService;

  TRes call({
    String? id,
    String? branchId,
    Mutation$updateBookingService$updateBookingService$branch? branch,
    bool? isActive,
    String? name,
    int? duration,
    String? $__typename,
  });
  CopyWith$Mutation$updateBookingService$updateBookingService$branch<TRes>
      get branch;
}

class _CopyWithImpl$Mutation$updateBookingService$updateBookingService<TRes>
    implements
        CopyWith$Mutation$updateBookingService$updateBookingService<TRes> {
  _CopyWithImpl$Mutation$updateBookingService$updateBookingService(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingService$updateBookingService _instance;

  final TRes Function(Mutation$updateBookingService$updateBookingService) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? branchId = _undefined,
    Object? branch = _undefined,
    Object? isActive = _undefined,
    Object? name = _undefined,
    Object? duration = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingService$updateBookingService(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        branchId: branchId == _undefined || branchId == null
            ? _instance.branchId
            : (branchId as String),
        branch: branch == _undefined || branch == null
            ? _instance.branch
            : (branch
                as Mutation$updateBookingService$updateBookingService$branch),
        isActive:
            isActive == _undefined ? _instance.isActive : (isActive as bool?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateBookingService$updateBookingService$branch<TRes>
      get branch {
    final local$branch = _instance.branch;
    return CopyWith$Mutation$updateBookingService$updateBookingService$branch(
        local$branch, (e) => call(branch: e));
  }
}

class _CopyWithStubImpl$Mutation$updateBookingService$updateBookingService<TRes>
    implements
        CopyWith$Mutation$updateBookingService$updateBookingService<TRes> {
  _CopyWithStubImpl$Mutation$updateBookingService$updateBookingService(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? branchId,
    Mutation$updateBookingService$updateBookingService$branch? branch,
    bool? isActive,
    String? name,
    int? duration,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateBookingService$updateBookingService$branch<TRes>
      get branch =>
          CopyWith$Mutation$updateBookingService$updateBookingService$branch
              .stub(_res);
}

class Mutation$updateBookingService$updateBookingService$branch {
  Mutation$updateBookingService$updateBookingService$branch({
    required this.id,
    this.$__typename = 'BookingBranch',
  });

  factory Mutation$updateBookingService$updateBookingService$branch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateBookingService$updateBookingService$branch(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateBookingService$updateBookingService$branch ||
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

extension UtilityExtension$Mutation$updateBookingService$updateBookingService$branch
    on Mutation$updateBookingService$updateBookingService$branch {
  CopyWith$Mutation$updateBookingService$updateBookingService$branch<
          Mutation$updateBookingService$updateBookingService$branch>
      get copyWith =>
          CopyWith$Mutation$updateBookingService$updateBookingService$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateBookingService$updateBookingService$branch<
    TRes> {
  factory CopyWith$Mutation$updateBookingService$updateBookingService$branch(
    Mutation$updateBookingService$updateBookingService$branch instance,
    TRes Function(Mutation$updateBookingService$updateBookingService$branch)
        then,
  ) = _CopyWithImpl$Mutation$updateBookingService$updateBookingService$branch;

  factory CopyWith$Mutation$updateBookingService$updateBookingService$branch.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateBookingService$updateBookingService$branch;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateBookingService$updateBookingService$branch<
        TRes>
    implements
        CopyWith$Mutation$updateBookingService$updateBookingService$branch<
            TRes> {
  _CopyWithImpl$Mutation$updateBookingService$updateBookingService$branch(
    this._instance,
    this._then,
  );

  final Mutation$updateBookingService$updateBookingService$branch _instance;

  final TRes Function(Mutation$updateBookingService$updateBookingService$branch)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateBookingService$updateBookingService$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateBookingService$updateBookingService$branch<
        TRes>
    implements
        CopyWith$Mutation$updateBookingService$updateBookingService$branch<
            TRes> {
  _CopyWithStubImpl$Mutation$updateBookingService$updateBookingService$branch(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateCurrentUser {
  factory Variables$Mutation$updateCurrentUser(
          {required Input$ModifiableRegularUserInput input}) =>
      Variables$Mutation$updateCurrentUser._({
        r'input': input,
      });

  Variables$Mutation$updateCurrentUser._(this._$data);

  factory Variables$Mutation$updateCurrentUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ModifiableRegularUserInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$updateCurrentUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ModifiableRegularUserInput get input =>
      (_$data['input'] as Input$ModifiableRegularUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateCurrentUser<
          Variables$Mutation$updateCurrentUser>
      get copyWith => CopyWith$Variables$Mutation$updateCurrentUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateCurrentUser ||
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

abstract class CopyWith$Variables$Mutation$updateCurrentUser<TRes> {
  factory CopyWith$Variables$Mutation$updateCurrentUser(
    Variables$Mutation$updateCurrentUser instance,
    TRes Function(Variables$Mutation$updateCurrentUser) then,
  ) = _CopyWithImpl$Variables$Mutation$updateCurrentUser;

  factory CopyWith$Variables$Mutation$updateCurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateCurrentUser;

  TRes call({Input$ModifiableRegularUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$updateCurrentUser<TRes>
    implements CopyWith$Variables$Mutation$updateCurrentUser<TRes> {
  _CopyWithImpl$Variables$Mutation$updateCurrentUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateCurrentUser _instance;

  final TRes Function(Variables$Mutation$updateCurrentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$updateCurrentUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ModifiableRegularUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateCurrentUser<TRes>
    implements CopyWith$Variables$Mutation$updateCurrentUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateCurrentUser(this._res);

  final TRes _res;

  @override
  call({Input$ModifiableRegularUserInput? input}) => _res;
}

class Mutation$updateCurrentUser {
  Mutation$updateCurrentUser({
    required this.updateCurrentUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateCurrentUser.fromJson(Map<String, dynamic> json) {
    final l$updateCurrentUser = json['updateCurrentUser'];
    final l$$__typename = json['__typename'];
    return Mutation$updateCurrentUser(
      updateCurrentUser: Mutation$updateCurrentUser$updateCurrentUser.fromJson(
          (l$updateCurrentUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateCurrentUser$updateCurrentUser updateCurrentUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateCurrentUser = updateCurrentUser;
    resultData['updateCurrentUser'] = l$updateCurrentUser.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateCurrentUser = updateCurrentUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateCurrentUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateCurrentUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCurrentUser = updateCurrentUser;
    final lOther$updateCurrentUser = other.updateCurrentUser;
    if (l$updateCurrentUser != lOther$updateCurrentUser) {
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

extension UtilityExtension$Mutation$updateCurrentUser
    on Mutation$updateCurrentUser {
  CopyWith$Mutation$updateCurrentUser<Mutation$updateCurrentUser>
      get copyWith => CopyWith$Mutation$updateCurrentUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateCurrentUser<TRes> {
  factory CopyWith$Mutation$updateCurrentUser(
    Mutation$updateCurrentUser instance,
    TRes Function(Mutation$updateCurrentUser) then,
  ) = _CopyWithImpl$Mutation$updateCurrentUser;

  factory CopyWith$Mutation$updateCurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateCurrentUser;

  TRes call({
    Mutation$updateCurrentUser$updateCurrentUser? updateCurrentUser,
    String? $__typename,
  });
  CopyWith$Mutation$updateCurrentUser$updateCurrentUser<TRes>
      get updateCurrentUser;
}

class _CopyWithImpl$Mutation$updateCurrentUser<TRes>
    implements CopyWith$Mutation$updateCurrentUser<TRes> {
  _CopyWithImpl$Mutation$updateCurrentUser(
    this._instance,
    this._then,
  );

  final Mutation$updateCurrentUser _instance;

  final TRes Function(Mutation$updateCurrentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateCurrentUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateCurrentUser(
        updateCurrentUser:
            updateCurrentUser == _undefined || updateCurrentUser == null
                ? _instance.updateCurrentUser
                : (updateCurrentUser
                    as Mutation$updateCurrentUser$updateCurrentUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateCurrentUser$updateCurrentUser<TRes>
      get updateCurrentUser {
    final local$updateCurrentUser = _instance.updateCurrentUser;
    return CopyWith$Mutation$updateCurrentUser$updateCurrentUser(
        local$updateCurrentUser, (e) => call(updateCurrentUser: e));
  }
}

class _CopyWithStubImpl$Mutation$updateCurrentUser<TRes>
    implements CopyWith$Mutation$updateCurrentUser<TRes> {
  _CopyWithStubImpl$Mutation$updateCurrentUser(this._res);

  final TRes _res;

  @override
  call({
    Mutation$updateCurrentUser$updateCurrentUser? updateCurrentUser,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateCurrentUser$updateCurrentUser<TRes>
      get updateCurrentUser =>
          CopyWith$Mutation$updateCurrentUser$updateCurrentUser.stub(_res);
}

const documentNodeMutationupdateCurrentUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateCurrentUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ModifiableRegularUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateCurrentUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$updateCurrentUser _parserFn$Mutation$updateCurrentUser(
        Map<String, dynamic> data) =>
    Mutation$updateCurrentUser.fromJson(data);
typedef OnMutationCompleted$Mutation$updateCurrentUser = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$updateCurrentUser?,
);

class Options$Mutation$updateCurrentUser
    extends graphql.MutationOptions<Mutation$updateCurrentUser> {
  Options$Mutation$updateCurrentUser({
    String? operationName,
    required Variables$Mutation$updateCurrentUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateCurrentUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateCurrentUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateCurrentUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateCurrentUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateCurrentUser,
          parserFn: _parserFn$Mutation$updateCurrentUser,
        );

  final OnMutationCompleted$Mutation$updateCurrentUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateCurrentUser
    extends graphql.WatchQueryOptions<Mutation$updateCurrentUser> {
  WatchOptions$Mutation$updateCurrentUser({
    String? operationName,
    required Variables$Mutation$updateCurrentUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateCurrentUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateCurrentUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateCurrentUser,
        );
}

extension ClientExtension$Mutation$updateCurrentUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateCurrentUser>>
      mutate$updateCurrentUser(
              Options$Mutation$updateCurrentUser options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$updateCurrentUser>
      watchMutation$updateCurrentUser(
              WatchOptions$Mutation$updateCurrentUser options) =>
          watchMutation(options);
}

class Mutation$updateCurrentUser$HookResult {
  Mutation$updateCurrentUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateCurrentUser runMutation;

  final graphql.QueryResult<Mutation$updateCurrentUser> result;
}

Mutation$updateCurrentUser$HookResult useMutation$updateCurrentUser(
    [WidgetOptions$Mutation$updateCurrentUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateCurrentUser());
  return Mutation$updateCurrentUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateCurrentUser>
    useWatchMutation$updateCurrentUser(
            WatchOptions$Mutation$updateCurrentUser options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateCurrentUser
    extends graphql.MutationOptions<Mutation$updateCurrentUser> {
  WidgetOptions$Mutation$updateCurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateCurrentUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateCurrentUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateCurrentUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateCurrentUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateCurrentUser,
          parserFn: _parserFn$Mutation$updateCurrentUser,
        );

  final OnMutationCompleted$Mutation$updateCurrentUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateCurrentUser
    = graphql.MultiSourceResult<Mutation$updateCurrentUser> Function(
  Variables$Mutation$updateCurrentUser, {
  Object? optimisticResult,
  Mutation$updateCurrentUser? typedOptimisticResult,
});
typedef Builder$Mutation$updateCurrentUser = widgets.Widget Function(
  RunMutation$Mutation$updateCurrentUser,
  graphql.QueryResult<Mutation$updateCurrentUser>?,
);

class Mutation$updateCurrentUser$Widget
    extends graphql_flutter.Mutation<Mutation$updateCurrentUser> {
  Mutation$updateCurrentUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateCurrentUser? options,
    required Builder$Mutation$updateCurrentUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateCurrentUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$updateCurrentUser$updateCurrentUser {
  Mutation$updateCurrentUser$updateCurrentUser({
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

  factory Mutation$updateCurrentUser$updateCurrentUser.fromJson(
      Map<String, dynamic> json) {
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
    return Mutation$updateCurrentUser$updateCurrentUser(
      id: (l$id as String),
      roles: (l$roles as List<dynamic>)
          .map((e) =>
              Mutation$updateCurrentUser$updateCurrentUser$roles.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Mutation$updateCurrentUser$updateCurrentUser$permissions.fromJson(
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

  final List<Mutation$updateCurrentUser$updateCurrentUser$roles> roles;

  final List<Mutation$updateCurrentUser$updateCurrentUser$permissions>
      permissions;

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
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$roles = roles;
    resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$permissions = permissions;
    resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$firstName = firstName;
    resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    resultData['lastName'] = l$lastName;
    final l$email = email;
    resultData['email'] = l$email;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$password = password;
    resultData['password'] = l$password;
    final l$visitCount = visitCount;
    resultData['visitCount'] = l$visitCount;
    final l$level = level;
    resultData['level'] = l$level;
    final l$birthDate = birthDate;
    resultData['birthDate'] = l$birthDate;
    final l$gender = gender;
    resultData['gender'] = l$gender;
    final l$photo = photo;
    resultData['photo'] = l$photo;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateCurrentUser$updateCurrentUser ||
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

extension UtilityExtension$Mutation$updateCurrentUser$updateCurrentUser
    on Mutation$updateCurrentUser$updateCurrentUser {
  CopyWith$Mutation$updateCurrentUser$updateCurrentUser<
          Mutation$updateCurrentUser$updateCurrentUser>
      get copyWith => CopyWith$Mutation$updateCurrentUser$updateCurrentUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateCurrentUser$updateCurrentUser<TRes> {
  factory CopyWith$Mutation$updateCurrentUser$updateCurrentUser(
    Mutation$updateCurrentUser$updateCurrentUser instance,
    TRes Function(Mutation$updateCurrentUser$updateCurrentUser) then,
  ) = _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser;

  factory CopyWith$Mutation$updateCurrentUser$updateCurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser;

  TRes call({
    String? id,
    List<Mutation$updateCurrentUser$updateCurrentUser$roles>? roles,
    List<Mutation$updateCurrentUser$updateCurrentUser$permissions>? permissions,
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
      Iterable<Mutation$updateCurrentUser$updateCurrentUser$roles> Function(
              Iterable<
                  CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles<
                      Mutation$updateCurrentUser$updateCurrentUser$roles>>)
          fn);
  TRes permissions(
      Iterable<Mutation$updateCurrentUser$updateCurrentUser$permissions> Function(
              Iterable<
                  CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions<
                      Mutation$updateCurrentUser$updateCurrentUser$permissions>>)
          fn);
}

class _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser<TRes>
    implements CopyWith$Mutation$updateCurrentUser$updateCurrentUser<TRes> {
  _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser(
    this._instance,
    this._then,
  );

  final Mutation$updateCurrentUser$updateCurrentUser _instance;

  final TRes Function(Mutation$updateCurrentUser$updateCurrentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$updateCurrentUser$updateCurrentUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles
                as List<Mutation$updateCurrentUser$updateCurrentUser$roles>),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<
                Mutation$updateCurrentUser$updateCurrentUser$permissions>),
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
  @override
  TRes roles(
          Iterable<Mutation$updateCurrentUser$updateCurrentUser$roles> Function(
                  Iterable<
                      CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles<
                          Mutation$updateCurrentUser$updateCurrentUser$roles>>)
              fn) =>
      call(
          roles: fn(_instance.roles.map((e) =>
              CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles(
                e,
                (i) => i,
              ))).toList());
  @override
  TRes permissions(
          Iterable<Mutation$updateCurrentUser$updateCurrentUser$permissions> Function(
                  Iterable<
                      CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions<
                          Mutation$updateCurrentUser$updateCurrentUser$permissions>>)
              fn) =>
      call(
          permissions: fn(_instance.permissions.map((e) =>
              CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser<TRes>
    implements CopyWith$Mutation$updateCurrentUser$updateCurrentUser<TRes> {
  _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    List<Mutation$updateCurrentUser$updateCurrentUser$roles>? roles,
    List<Mutation$updateCurrentUser$updateCurrentUser$permissions>? permissions,
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
  @override
  roles(fn) => _res;
  @override
  permissions(fn) => _res;
}

class Mutation$updateCurrentUser$updateCurrentUser$roles {
  Mutation$updateCurrentUser$updateCurrentUser$roles({
    this.id,
    this.name,
    this.$__typename = 'Role',
  });

  factory Mutation$updateCurrentUser$updateCurrentUser$roles.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updateCurrentUser$updateCurrentUser$roles(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateCurrentUser$updateCurrentUser$roles ||
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

extension UtilityExtension$Mutation$updateCurrentUser$updateCurrentUser$roles
    on Mutation$updateCurrentUser$updateCurrentUser$roles {
  CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles<
          Mutation$updateCurrentUser$updateCurrentUser$roles>
      get copyWith =>
          CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles<
    TRes> {
  factory CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles(
    Mutation$updateCurrentUser$updateCurrentUser$roles instance,
    TRes Function(Mutation$updateCurrentUser$updateCurrentUser$roles) then,
  ) = _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser$roles;

  factory CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser$roles;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser$roles<TRes>
    implements
        CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles<TRes> {
  _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser$roles(
    this._instance,
    this._then,
  );

  final Mutation$updateCurrentUser$updateCurrentUser$roles _instance;

  final TRes Function(Mutation$updateCurrentUser$updateCurrentUser$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateCurrentUser$updateCurrentUser$roles(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser$roles<TRes>
    implements
        CopyWith$Mutation$updateCurrentUser$updateCurrentUser$roles<TRes> {
  _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser$roles(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateCurrentUser$updateCurrentUser$permissions {
  Mutation$updateCurrentUser$updateCurrentUser$permissions({
    this.id,
    this.name,
    this.$__typename = 'Permission',
  });

  factory Mutation$updateCurrentUser$updateCurrentUser$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updateCurrentUser$updateCurrentUser$permissions(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateCurrentUser$updateCurrentUser$permissions ||
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

extension UtilityExtension$Mutation$updateCurrentUser$updateCurrentUser$permissions
    on Mutation$updateCurrentUser$updateCurrentUser$permissions {
  CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions<
          Mutation$updateCurrentUser$updateCurrentUser$permissions>
      get copyWith =>
          CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions<
    TRes> {
  factory CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions(
    Mutation$updateCurrentUser$updateCurrentUser$permissions instance,
    TRes Function(Mutation$updateCurrentUser$updateCurrentUser$permissions)
        then,
  ) = _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser$permissions;

  factory CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser$permissions;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser$permissions<
        TRes>
    implements
        CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions<
            TRes> {
  _CopyWithImpl$Mutation$updateCurrentUser$updateCurrentUser$permissions(
    this._instance,
    this._then,
  );

  final Mutation$updateCurrentUser$updateCurrentUser$permissions _instance;

  final TRes Function(Mutation$updateCurrentUser$updateCurrentUser$permissions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateCurrentUser$updateCurrentUser$permissions(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser$permissions<
        TRes>
    implements
        CopyWith$Mutation$updateCurrentUser$updateCurrentUser$permissions<
            TRes> {
  _CopyWithStubImpl$Mutation$updateCurrentUser$updateCurrentUser$permissions(
      this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateUser {
  factory Variables$Mutation$updateUser({
    required String userId,
    required Input$ModifiableRegularUserInput data,
  }) =>
      Variables$Mutation$updateUser._({
        r'userId': userId,
        r'data': data,
      });

  Variables$Mutation$updateUser._(this._$data);

  factory Variables$Mutation$updateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$data = data['data'];
    result$data['data'] = Input$ModifiableRegularUserInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$updateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  Input$ModifiableRegularUserInput get data =>
      (_$data['data'] as Input$ModifiableRegularUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateUser<Variables$Mutation$updateUser>
      get copyWith => CopyWith$Variables$Mutation$updateUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$data = data;
    return Object.hashAll([
      l$userId,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateUser<TRes> {
  factory CopyWith$Variables$Mutation$updateUser(
    Variables$Mutation$updateUser instance,
    TRes Function(Variables$Mutation$updateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$updateUser;

  factory CopyWith$Variables$Mutation$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateUser;

  TRes call({
    String? userId,
    Input$ModifiableRegularUserInput? data,
  });
}

class _CopyWithImpl$Variables$Mutation$updateUser<TRes>
    implements CopyWith$Variables$Mutation$updateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$updateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateUser _instance;

  final TRes Function(Variables$Mutation$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$updateUser._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (data != _undefined && data != null)
          'data': (data as Input$ModifiableRegularUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateUser<TRes>
    implements CopyWith$Variables$Mutation$updateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateUser(this._res);

  final TRes _res;

  @override
  call({
    String? userId,
    Input$ModifiableRegularUserInput? data,
  }) =>
      _res;
}

class Mutation$updateUser {
  Mutation$updateUser({
    required this.updateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$updateUser(
      updateUser: Mutation$updateUser$updateUser.fromJson(
          (l$updateUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateUser$updateUser updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    resultData['updateUser'] = l$updateUser.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
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

extension UtilityExtension$Mutation$updateUser on Mutation$updateUser {
  CopyWith$Mutation$updateUser<Mutation$updateUser> get copyWith =>
      CopyWith$Mutation$updateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateUser<TRes> {
  factory CopyWith$Mutation$updateUser(
    Mutation$updateUser instance,
    TRes Function(Mutation$updateUser) then,
  ) = _CopyWithImpl$Mutation$updateUser;

  factory CopyWith$Mutation$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateUser;

  TRes call({
    Mutation$updateUser$updateUser? updateUser,
    String? $__typename,
  });
  CopyWith$Mutation$updateUser$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$updateUser<TRes>
    implements CopyWith$Mutation$updateUser<TRes> {
  _CopyWithImpl$Mutation$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$updateUser _instance;

  final TRes Function(Mutation$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateUser(
        updateUser: updateUser == _undefined || updateUser == null
            ? _instance.updateUser
            : (updateUser as Mutation$updateUser$updateUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  CopyWith$Mutation$updateUser$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return CopyWith$Mutation$updateUser$updateUser(
        local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$updateUser<TRes>
    implements CopyWith$Mutation$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$updateUser(this._res);

  final TRes _res;

  @override
  call({
    Mutation$updateUser$updateUser? updateUser,
    String? $__typename,
  }) =>
      _res;
  @override
  CopyWith$Mutation$updateUser$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$updateUser$updateUser.stub(_res);
}

const documentNodeMutationupdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ModifiableRegularUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
Mutation$updateUser _parserFn$Mutation$updateUser(Map<String, dynamic> data) =>
    Mutation$updateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$updateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$updateUser?,
);

class Options$Mutation$updateUser
    extends graphql.MutationOptions<Mutation$updateUser> {
  Options$Mutation$updateUser({
    String? operationName,
    required Variables$Mutation$updateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$updateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateUser,
          parserFn: _parserFn$Mutation$updateUser,
        );

  final OnMutationCompleted$Mutation$updateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateUser
    extends graphql.WatchQueryOptions<Mutation$updateUser> {
  WatchOptions$Mutation$updateUser({
    String? operationName,
    required Variables$Mutation$updateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateUser,
        );
}

extension ClientExtension$Mutation$updateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateUser>> mutate$updateUser(
          Options$Mutation$updateUser options) async =>
      await mutate(options);
  graphql.ObservableQuery<Mutation$updateUser> watchMutation$updateUser(
          WatchOptions$Mutation$updateUser options) =>
      watchMutation(options);
}

class Mutation$updateUser$HookResult {
  Mutation$updateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateUser runMutation;

  final graphql.QueryResult<Mutation$updateUser> result;
}

Mutation$updateUser$HookResult useMutation$updateUser(
    [WidgetOptions$Mutation$updateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateUser());
  return Mutation$updateUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateUser> useWatchMutation$updateUser(
        WatchOptions$Mutation$updateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateUser
    extends graphql.MutationOptions<Mutation$updateUser> {
  WidgetOptions$Mutation$updateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$updateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateUser,
          parserFn: _parserFn$Mutation$updateUser,
        );

  final OnMutationCompleted$Mutation$updateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateUser
    = graphql.MultiSourceResult<Mutation$updateUser> Function(
  Variables$Mutation$updateUser, {
  Object? optimisticResult,
  Mutation$updateUser? typedOptimisticResult,
});
typedef Builder$Mutation$updateUser = widgets.Widget Function(
  RunMutation$Mutation$updateUser,
  graphql.QueryResult<Mutation$updateUser>?,
);

class Mutation$updateUser$Widget
    extends graphql_flutter.Mutation<Mutation$updateUser> {
  Mutation$updateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateUser? options,
    required Builder$Mutation$updateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$updateUser$updateUser {
  Mutation$updateUser$updateUser({
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

  factory Mutation$updateUser$updateUser.fromJson(Map<String, dynamic> json) {
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
    return Mutation$updateUser$updateUser(
      id: (l$id as String),
      roles: (l$roles as List<dynamic>)
          .map((e) => Mutation$updateUser$updateUser$roles.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Mutation$updateUser$updateUser$permissions.fromJson(
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

  final List<Mutation$updateUser$updateUser$roles> roles;

  final List<Mutation$updateUser$updateUser$permissions> permissions;

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
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$roles = roles;
    resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$permissions = permissions;
    resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$firstName = firstName;
    resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    resultData['lastName'] = l$lastName;
    final l$email = email;
    resultData['email'] = l$email;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$password = password;
    resultData['password'] = l$password;
    final l$visitCount = visitCount;
    resultData['visitCount'] = l$visitCount;
    final l$level = level;
    resultData['level'] = l$level;
    final l$birthDate = birthDate;
    resultData['birthDate'] = l$birthDate;
    final l$gender = gender;
    resultData['gender'] = l$gender;
    final l$photo = photo;
    resultData['photo'] = l$photo;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateUser$updateUser ||
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

extension UtilityExtension$Mutation$updateUser$updateUser
    on Mutation$updateUser$updateUser {
  CopyWith$Mutation$updateUser$updateUser<Mutation$updateUser$updateUser>
      get copyWith => CopyWith$Mutation$updateUser$updateUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateUser$updateUser<TRes> {
  factory CopyWith$Mutation$updateUser$updateUser(
    Mutation$updateUser$updateUser instance,
    TRes Function(Mutation$updateUser$updateUser) then,
  ) = _CopyWithImpl$Mutation$updateUser$updateUser;

  factory CopyWith$Mutation$updateUser$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateUser$updateUser;

  TRes call({
    String? id,
    List<Mutation$updateUser$updateUser$roles>? roles,
    List<Mutation$updateUser$updateUser$permissions>? permissions,
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
      Iterable<Mutation$updateUser$updateUser$roles> Function(
              Iterable<
                  CopyWith$Mutation$updateUser$updateUser$roles<
                      Mutation$updateUser$updateUser$roles>>)
          fn);
  TRes permissions(
      Iterable<Mutation$updateUser$updateUser$permissions> Function(
              Iterable<
                  CopyWith$Mutation$updateUser$updateUser$permissions<
                      Mutation$updateUser$updateUser$permissions>>)
          fn);
}

class _CopyWithImpl$Mutation$updateUser$updateUser<TRes>
    implements CopyWith$Mutation$updateUser$updateUser<TRes> {
  _CopyWithImpl$Mutation$updateUser$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$updateUser$updateUser _instance;

  final TRes Function(Mutation$updateUser$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
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
      _then(Mutation$updateUser$updateUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles as List<Mutation$updateUser$updateUser$roles>),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Mutation$updateUser$updateUser$permissions>),
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
  @override
  TRes roles(
          Iterable<Mutation$updateUser$updateUser$roles> Function(
                  Iterable<
                      CopyWith$Mutation$updateUser$updateUser$roles<
                          Mutation$updateUser$updateUser$roles>>)
              fn) =>
      call(
          roles: fn(_instance.roles
              .map((e) => CopyWith$Mutation$updateUser$updateUser$roles(
                    e,
                    (i) => i,
                  ))).toList());
  @override
  TRes permissions(
          Iterable<Mutation$updateUser$updateUser$permissions> Function(
                  Iterable<
                      CopyWith$Mutation$updateUser$updateUser$permissions<
                          Mutation$updateUser$updateUser$permissions>>)
              fn) =>
      call(
          permissions: fn(_instance.permissions
              .map((e) => CopyWith$Mutation$updateUser$updateUser$permissions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$updateUser$updateUser<TRes>
    implements CopyWith$Mutation$updateUser$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$updateUser$updateUser(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    List<Mutation$updateUser$updateUser$roles>? roles,
    List<Mutation$updateUser$updateUser$permissions>? permissions,
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
  @override
  roles(fn) => _res;
  @override
  permissions(fn) => _res;
}

class Mutation$updateUser$updateUser$roles {
  Mutation$updateUser$updateUser$roles({
    this.id,
    this.name,
    this.$__typename = 'Role',
  });

  factory Mutation$updateUser$updateUser$roles.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updateUser$updateUser$roles(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateUser$updateUser$roles ||
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

extension UtilityExtension$Mutation$updateUser$updateUser$roles
    on Mutation$updateUser$updateUser$roles {
  CopyWith$Mutation$updateUser$updateUser$roles<
          Mutation$updateUser$updateUser$roles>
      get copyWith => CopyWith$Mutation$updateUser$updateUser$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateUser$updateUser$roles<TRes> {
  factory CopyWith$Mutation$updateUser$updateUser$roles(
    Mutation$updateUser$updateUser$roles instance,
    TRes Function(Mutation$updateUser$updateUser$roles) then,
  ) = _CopyWithImpl$Mutation$updateUser$updateUser$roles;

  factory CopyWith$Mutation$updateUser$updateUser$roles.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateUser$updateUser$roles;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateUser$updateUser$roles<TRes>
    implements CopyWith$Mutation$updateUser$updateUser$roles<TRes> {
  _CopyWithImpl$Mutation$updateUser$updateUser$roles(
    this._instance,
    this._then,
  );

  final Mutation$updateUser$updateUser$roles _instance;

  final TRes Function(Mutation$updateUser$updateUser$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateUser$updateUser$roles(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateUser$updateUser$roles<TRes>
    implements CopyWith$Mutation$updateUser$updateUser$roles<TRes> {
  _CopyWithStubImpl$Mutation$updateUser$updateUser$roles(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateUser$updateUser$permissions {
  Mutation$updateUser$updateUser$permissions({
    this.id,
    this.name,
    this.$__typename = 'Permission',
  });

  factory Mutation$updateUser$updateUser$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$updateUser$updateUser$permissions(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$updateUser$updateUser$permissions ||
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

extension UtilityExtension$Mutation$updateUser$updateUser$permissions
    on Mutation$updateUser$updateUser$permissions {
  CopyWith$Mutation$updateUser$updateUser$permissions<
          Mutation$updateUser$updateUser$permissions>
      get copyWith => CopyWith$Mutation$updateUser$updateUser$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateUser$updateUser$permissions<TRes> {
  factory CopyWith$Mutation$updateUser$updateUser$permissions(
    Mutation$updateUser$updateUser$permissions instance,
    TRes Function(Mutation$updateUser$updateUser$permissions) then,
  ) = _CopyWithImpl$Mutation$updateUser$updateUser$permissions;

  factory CopyWith$Mutation$updateUser$updateUser$permissions.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateUser$updateUser$permissions;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateUser$updateUser$permissions<TRes>
    implements CopyWith$Mutation$updateUser$updateUser$permissions<TRes> {
  _CopyWithImpl$Mutation$updateUser$updateUser$permissions(
    this._instance,
    this._then,
  );

  final Mutation$updateUser$updateUser$permissions _instance;

  final TRes Function(Mutation$updateUser$updateUser$permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateUser$updateUser$permissions(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateUser$updateUser$permissions<TRes>
    implements CopyWith$Mutation$updateUser$updateUser$permissions<TRes> {
  _CopyWithStubImpl$Mutation$updateUser$updateUser$permissions(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

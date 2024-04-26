// ignore_for_file: type=lint
class Input$CreateCertificateInput {
  factory Input$CreateCertificateInput({
    String? date,
    String? attachment,
    String? slug,
    required String no,
    required String operationBasis,
    required String unitName,
    required String serviceUnitName,
  }) =>
      Input$CreateCertificateInput._({
        if (date != null) r'date': date,
        if (attachment != null) r'attachment': attachment,
        if (slug != null) r'slug': slug,
        r'no': no,
        r'operationBasis': operationBasis,
        r'unitName': unitName,
        r'serviceUnitName': serviceUnitName,
      });

  Input$CreateCertificateInput._(this._$data);

  factory Input$CreateCertificateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    if (data.containsKey('attachment')) {
      final l$attachment = data['attachment'];
      result$data['attachment'] = (l$attachment as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    final l$no = data['no'];
    result$data['no'] = (l$no as String);
    final l$operationBasis = data['operationBasis'];
    result$data['operationBasis'] = (l$operationBasis as String);
    final l$unitName = data['unitName'];
    result$data['unitName'] = (l$unitName as String);
    final l$serviceUnitName = data['serviceUnitName'];
    result$data['serviceUnitName'] = (l$serviceUnitName as String);
    return Input$CreateCertificateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get date => (_$data['date'] as String?);

  String? get attachment => (_$data['attachment'] as String?);

  String? get slug => (_$data['slug'] as String?);

  String get no => (_$data['no'] as String);

  String get operationBasis => (_$data['operationBasis'] as String);

  String get unitName => (_$data['unitName'] as String);

  String get serviceUnitName => (_$data['serviceUnitName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    if (_$data.containsKey('attachment')) {
      final l$attachment = attachment;
      result$data['attachment'] = l$attachment;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    final l$no = no;
    result$data['no'] = l$no;
    final l$operationBasis = operationBasis;
    result$data['operationBasis'] = l$operationBasis;
    final l$unitName = unitName;
    result$data['unitName'] = l$unitName;
    final l$serviceUnitName = serviceUnitName;
    result$data['serviceUnitName'] = l$serviceUnitName;
    return result$data;
  }

  CopyWith$Input$CreateCertificateInput<Input$CreateCertificateInput>
      get copyWith => CopyWith$Input$CreateCertificateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateCertificateInput) ||
        runtimeType != other.runtimeType) {
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
    final l$attachment = attachment;
    final lOther$attachment = other.attachment;
    if (_$data.containsKey('attachment') !=
        other._$data.containsKey('attachment')) {
      return false;
    }
    if (l$attachment != lOther$attachment) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (l$no != lOther$no) {
      return false;
    }
    final l$operationBasis = operationBasis;
    final lOther$operationBasis = other.operationBasis;
    if (l$operationBasis != lOther$operationBasis) {
      return false;
    }
    final l$unitName = unitName;
    final lOther$unitName = other.unitName;
    if (l$unitName != lOther$unitName) {
      return false;
    }
    final l$serviceUnitName = serviceUnitName;
    final lOther$serviceUnitName = other.serviceUnitName;
    if (l$serviceUnitName != lOther$serviceUnitName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$date = date;
    final l$attachment = attachment;
    final l$slug = slug;
    final l$no = no;
    final l$operationBasis = operationBasis;
    final l$unitName = unitName;
    final l$serviceUnitName = serviceUnitName;
    return Object.hashAll([
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('attachment') ? l$attachment : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      l$no,
      l$operationBasis,
      l$unitName,
      l$serviceUnitName,
    ]);
  }
}

abstract class CopyWith$Input$CreateCertificateInput<TRes> {
  factory CopyWith$Input$CreateCertificateInput(
    Input$CreateCertificateInput instance,
    TRes Function(Input$CreateCertificateInput) then,
  ) = _CopyWithImpl$Input$CreateCertificateInput;

  factory CopyWith$Input$CreateCertificateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCertificateInput;

  TRes call({
    String? date,
    String? attachment,
    String? slug,
    String? no,
    String? operationBasis,
    String? unitName,
    String? serviceUnitName,
  });
}

class _CopyWithImpl$Input$CreateCertificateInput<TRes>
    implements CopyWith$Input$CreateCertificateInput<TRes> {
  _CopyWithImpl$Input$CreateCertificateInput(
    this._instance,
    this._then,
  );

  final Input$CreateCertificateInput _instance;

  final TRes Function(Input$CreateCertificateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? date = _undefined,
    Object? attachment = _undefined,
    Object? slug = _undefined,
    Object? no = _undefined,
    Object? operationBasis = _undefined,
    Object? unitName = _undefined,
    Object? serviceUnitName = _undefined,
  }) =>
      _then(Input$CreateCertificateInput._({
        ..._instance._$data,
        if (date != _undefined) 'date': (date as String?),
        if (attachment != _undefined) 'attachment': (attachment as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (no != _undefined && no != null) 'no': (no as String),
        if (operationBasis != _undefined && operationBasis != null)
          'operationBasis': (operationBasis as String),
        if (unitName != _undefined && unitName != null)
          'unitName': (unitName as String),
        if (serviceUnitName != _undefined && serviceUnitName != null)
          'serviceUnitName': (serviceUnitName as String),
      }));
}

class _CopyWithStubImpl$Input$CreateCertificateInput<TRes>
    implements CopyWith$Input$CreateCertificateInput<TRes> {
  _CopyWithStubImpl$Input$CreateCertificateInput(this._res);

  TRes _res;

  call({
    String? date,
    String? attachment,
    String? slug,
    String? no,
    String? operationBasis,
    String? unitName,
    String? serviceUnitName,
  }) =>
      _res;
}

class Input$CreateFALCategoryInput {
  factory Input$CreateFALCategoryInput({
    Enum$FalsFALCategoryNameChoices? name,
    List<String?>? faltypeSet,
  }) =>
      Input$CreateFALCategoryInput._({
        if (name != null) r'name': name,
        if (faltypeSet != null) r'faltypeSet': faltypeSet,
      });

  Input$CreateFALCategoryInput._(this._$data);

  factory Input$CreateFALCategoryInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$FalsFALCategoryNameChoices((l$name as String));
    }
    if (data.containsKey('faltypeSet')) {
      final l$faltypeSet = data['faltypeSet'];
      result$data['faltypeSet'] =
          (l$faltypeSet as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Input$CreateFALCategoryInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$FalsFALCategoryNameChoices? get name =>
      (_$data['name'] as Enum$FalsFALCategoryNameChoices?);

  List<String?>? get faltypeSet => (_$data['faltypeSet'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$FalsFALCategoryNameChoices(l$name);
    }
    if (_$data.containsKey('faltypeSet')) {
      final l$faltypeSet = faltypeSet;
      result$data['faltypeSet'] = l$faltypeSet?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateFALCategoryInput<Input$CreateFALCategoryInput>
      get copyWith => CopyWith$Input$CreateFALCategoryInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateFALCategoryInput) ||
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
    final l$faltypeSet = faltypeSet;
    final lOther$faltypeSet = other.faltypeSet;
    if (_$data.containsKey('faltypeSet') !=
        other._$data.containsKey('faltypeSet')) {
      return false;
    }
    if (l$faltypeSet != null && lOther$faltypeSet != null) {
      if (l$faltypeSet.length != lOther$faltypeSet.length) {
        return false;
      }
      for (int i = 0; i < l$faltypeSet.length; i++) {
        final l$faltypeSet$entry = l$faltypeSet[i];
        final lOther$faltypeSet$entry = lOther$faltypeSet[i];
        if (l$faltypeSet$entry != lOther$faltypeSet$entry) {
          return false;
        }
      }
    } else if (l$faltypeSet != lOther$faltypeSet) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$faltypeSet = faltypeSet;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('faltypeSet')
          ? l$faltypeSet == null
              ? null
              : Object.hashAll(l$faltypeSet.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateFALCategoryInput<TRes> {
  factory CopyWith$Input$CreateFALCategoryInput(
    Input$CreateFALCategoryInput instance,
    TRes Function(Input$CreateFALCategoryInput) then,
  ) = _CopyWithImpl$Input$CreateFALCategoryInput;

  factory CopyWith$Input$CreateFALCategoryInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateFALCategoryInput;

  TRes call({
    Enum$FalsFALCategoryNameChoices? name,
    List<String?>? faltypeSet,
  });
}

class _CopyWithImpl$Input$CreateFALCategoryInput<TRes>
    implements CopyWith$Input$CreateFALCategoryInput<TRes> {
  _CopyWithImpl$Input$CreateFALCategoryInput(
    this._instance,
    this._then,
  );

  final Input$CreateFALCategoryInput _instance;

  final TRes Function(Input$CreateFALCategoryInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? faltypeSet = _undefined,
  }) =>
      _then(Input$CreateFALCategoryInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Enum$FalsFALCategoryNameChoices?),
        if (faltypeSet != _undefined)
          'faltypeSet': (faltypeSet as List<String?>?),
      }));
}

class _CopyWithStubImpl$Input$CreateFALCategoryInput<TRes>
    implements CopyWith$Input$CreateFALCategoryInput<TRes> {
  _CopyWithStubImpl$Input$CreateFALCategoryInput(this._res);

  TRes _res;

  call({
    Enum$FalsFALCategoryNameChoices? name,
    List<String?>? faltypeSet,
  }) =>
      _res;
}

class Input$CreateFALInput {
  factory Input$CreateFALInput({
    required String falType,
    required double amount,
    double? density,
    double? volume,
    required String contentType,
    required int documentId,
  }) =>
      Input$CreateFALInput._({
        r'falType': falType,
        r'amount': amount,
        if (density != null) r'density': density,
        if (volume != null) r'volume': volume,
        r'contentType': contentType,
        r'documentId': documentId,
      });

  Input$CreateFALInput._(this._$data);

  factory Input$CreateFALInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$falType = data['falType'];
    result$data['falType'] = (l$falType as String);
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    if (data.containsKey('density')) {
      final l$density = data['density'];
      result$data['density'] = (l$density as num?)?.toDouble();
    }
    if (data.containsKey('volume')) {
      final l$volume = data['volume'];
      result$data['volume'] = (l$volume as num?)?.toDouble();
    }
    final l$contentType = data['contentType'];
    result$data['contentType'] = (l$contentType as String);
    final l$documentId = data['documentId'];
    result$data['documentId'] = (l$documentId as int);
    return Input$CreateFALInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get falType => (_$data['falType'] as String);

  double get amount => (_$data['amount'] as double);

  double? get density => (_$data['density'] as double?);

  double? get volume => (_$data['volume'] as double?);

  String get contentType => (_$data['contentType'] as String);

  int get documentId => (_$data['documentId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$falType = falType;
    result$data['falType'] = l$falType;
    final l$amount = amount;
    result$data['amount'] = l$amount;
    if (_$data.containsKey('density')) {
      final l$density = density;
      result$data['density'] = l$density;
    }
    if (_$data.containsKey('volume')) {
      final l$volume = volume;
      result$data['volume'] = l$volume;
    }
    final l$contentType = contentType;
    result$data['contentType'] = l$contentType;
    final l$documentId = documentId;
    result$data['documentId'] = l$documentId;
    return result$data;
  }

  CopyWith$Input$CreateFALInput<Input$CreateFALInput> get copyWith =>
      CopyWith$Input$CreateFALInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateFALInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$falType = falType;
    final lOther$falType = other.falType;
    if (l$falType != lOther$falType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$density = density;
    final lOther$density = other.density;
    if (_$data.containsKey('density') != other._$data.containsKey('density')) {
      return false;
    }
    if (l$density != lOther$density) {
      return false;
    }
    final l$volume = volume;
    final lOther$volume = other.volume;
    if (_$data.containsKey('volume') != other._$data.containsKey('volume')) {
      return false;
    }
    if (l$volume != lOther$volume) {
      return false;
    }
    final l$contentType = contentType;
    final lOther$contentType = other.contentType;
    if (l$contentType != lOther$contentType) {
      return false;
    }
    final l$documentId = documentId;
    final lOther$documentId = other.documentId;
    if (l$documentId != lOther$documentId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$falType = falType;
    final l$amount = amount;
    final l$density = density;
    final l$volume = volume;
    final l$contentType = contentType;
    final l$documentId = documentId;
    return Object.hashAll([
      l$falType,
      l$amount,
      _$data.containsKey('density') ? l$density : const {},
      _$data.containsKey('volume') ? l$volume : const {},
      l$contentType,
      l$documentId,
    ]);
  }
}

abstract class CopyWith$Input$CreateFALInput<TRes> {
  factory CopyWith$Input$CreateFALInput(
    Input$CreateFALInput instance,
    TRes Function(Input$CreateFALInput) then,
  ) = _CopyWithImpl$Input$CreateFALInput;

  factory CopyWith$Input$CreateFALInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateFALInput;

  TRes call({
    String? falType,
    double? amount,
    double? density,
    double? volume,
    String? contentType,
    int? documentId,
  });
}

class _CopyWithImpl$Input$CreateFALInput<TRes>
    implements CopyWith$Input$CreateFALInput<TRes> {
  _CopyWithImpl$Input$CreateFALInput(
    this._instance,
    this._then,
  );

  final Input$CreateFALInput _instance;

  final TRes Function(Input$CreateFALInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? falType = _undefined,
    Object? amount = _undefined,
    Object? density = _undefined,
    Object? volume = _undefined,
    Object? contentType = _undefined,
    Object? documentId = _undefined,
  }) =>
      _then(Input$CreateFALInput._({
        ..._instance._$data,
        if (falType != _undefined && falType != null)
          'falType': (falType as String),
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (density != _undefined) 'density': (density as double?),
        if (volume != _undefined) 'volume': (volume as double?),
        if (contentType != _undefined && contentType != null)
          'contentType': (contentType as String),
        if (documentId != _undefined && documentId != null)
          'documentId': (documentId as int),
      }));
}

class _CopyWithStubImpl$Input$CreateFALInput<TRes>
    implements CopyWith$Input$CreateFALInput<TRes> {
  _CopyWithStubImpl$Input$CreateFALInput(this._res);

  TRes _res;

  call({
    String? falType,
    double? amount,
    double? density,
    double? volume,
    String? contentType,
    int? documentId,
  }) =>
      _res;
}

class Input$CreateFALTypeInput {
  factory Input$CreateFALTypeInput({
    required String name,
    required String category,
    List<String?>? falSet,
  }) =>
      Input$CreateFALTypeInput._({
        r'name': name,
        r'category': category,
        if (falSet != null) r'falSet': falSet,
      });

  Input$CreateFALTypeInput._(this._$data);

  factory Input$CreateFALTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$category = data['category'];
    result$data['category'] = (l$category as String);
    if (data.containsKey('falSet')) {
      final l$falSet = data['falSet'];
      result$data['falSet'] =
          (l$falSet as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Input$CreateFALTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get category => (_$data['category'] as String);

  List<String?>? get falSet => (_$data['falSet'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$category = category;
    result$data['category'] = l$category;
    if (_$data.containsKey('falSet')) {
      final l$falSet = falSet;
      result$data['falSet'] = l$falSet?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateFALTypeInput<Input$CreateFALTypeInput> get copyWith =>
      CopyWith$Input$CreateFALTypeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateFALTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$falSet = falSet;
    final lOther$falSet = other.falSet;
    if (_$data.containsKey('falSet') != other._$data.containsKey('falSet')) {
      return false;
    }
    if (l$falSet != null && lOther$falSet != null) {
      if (l$falSet.length != lOther$falSet.length) {
        return false;
      }
      for (int i = 0; i < l$falSet.length; i++) {
        final l$falSet$entry = l$falSet[i];
        final lOther$falSet$entry = lOther$falSet[i];
        if (l$falSet$entry != lOther$falSet$entry) {
          return false;
        }
      }
    } else if (l$falSet != lOther$falSet) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$category = category;
    final l$falSet = falSet;
    return Object.hashAll([
      l$name,
      l$category,
      _$data.containsKey('falSet')
          ? l$falSet == null
              ? null
              : Object.hashAll(l$falSet.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateFALTypeInput<TRes> {
  factory CopyWith$Input$CreateFALTypeInput(
    Input$CreateFALTypeInput instance,
    TRes Function(Input$CreateFALTypeInput) then,
  ) = _CopyWithImpl$Input$CreateFALTypeInput;

  factory CopyWith$Input$CreateFALTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateFALTypeInput;

  TRes call({
    String? name,
    String? category,
    List<String?>? falSet,
  });
}

class _CopyWithImpl$Input$CreateFALTypeInput<TRes>
    implements CopyWith$Input$CreateFALTypeInput<TRes> {
  _CopyWithImpl$Input$CreateFALTypeInput(
    this._instance,
    this._then,
  );

  final Input$CreateFALTypeInput _instance;

  final TRes Function(Input$CreateFALTypeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? category = _undefined,
    Object? falSet = _undefined,
  }) =>
      _then(Input$CreateFALTypeInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (category != _undefined && category != null)
          'category': (category as String),
        if (falSet != _undefined) 'falSet': (falSet as List<String?>?),
      }));
}

class _CopyWithStubImpl$Input$CreateFALTypeInput<TRes>
    implements CopyWith$Input$CreateFALTypeInput<TRes> {
  _CopyWithStubImpl$Input$CreateFALTypeInput(this._res);

  TRes _res;

  call({
    String? name,
    String? category,
    List<String?>? falSet,
  }) =>
      _res;
}

enum Enum$FalsFALCategoryNameChoices { DIESEL, PETROL, OIL, $unknown }

String toJson$Enum$FalsFALCategoryNameChoices(
    Enum$FalsFALCategoryNameChoices e) {
  switch (e) {
    case Enum$FalsFALCategoryNameChoices.DIESEL:
      return r'DIESEL';
    case Enum$FalsFALCategoryNameChoices.PETROL:
      return r'PETROL';
    case Enum$FalsFALCategoryNameChoices.OIL:
      return r'OIL';
    case Enum$FalsFALCategoryNameChoices.$unknown:
      return r'$unknown';
  }
}

Enum$FalsFALCategoryNameChoices fromJson$Enum$FalsFALCategoryNameChoices(
    String value) {
  switch (value) {
    case r'DIESEL':
      return Enum$FalsFALCategoryNameChoices.DIESEL;
    case r'PETROL':
      return Enum$FalsFALCategoryNameChoices.PETROL;
    case r'OIL':
      return Enum$FalsFALCategoryNameChoices.OIL;
    default:
      return Enum$FalsFALCategoryNameChoices.$unknown;
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

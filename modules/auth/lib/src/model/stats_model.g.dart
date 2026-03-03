// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stats _$StatsFromJson(Map<String, dynamic> json) => _Stats(
  admins: (json['admins'] as num?)?.toInt() ?? 0,
  employees: (json['employees'] as num?)?.toInt() ?? 0,
  suppliers: (json['suppliers'] as num?)?.toInt() ?? 0,
  leads: (json['leads'] as num?)?.toInt() ?? 0,
  customers: (json['customers'] as num?)?.toInt() ?? 0,
  openSlsOrders: (json['openSlsOrders'] as num?)?.toInt() ?? 0,
  openPurOrders: (json['openPurOrders'] as num?)?.toInt() ?? 0,
  opportunities: (json['opportunities'] as num?)?.toInt() ?? 0,
  myOpportunities: (json['myOpportunities'] as num?)?.toInt() ?? 0,
  categories: (json['categories'] as num?)?.toInt() ?? 0,
  products: (json['products'] as num?)?.toInt() ?? 0,
  assets: (json['assets'] as num?)?.toInt() ?? 0,
  salesInvoicesNotPaidCount:
      (json['salesInvoicesNotPaidCount'] as num?)?.toInt() ?? 0,
  salesInvoicesNotPaidAmount: json['salesInvoicesNotPaidAmount'] == null
      ? null
      : Decimal.fromJson(json['salesInvoicesNotPaidAmount'] as String),
  purchInvoicesNotPaidCount:
      (json['purchInvoicesNotPaidCount'] as num?)?.toInt() ?? 0,
  purchInvoicesNotPaidAmount: json['purchInvoicesNotPaidAmount'] == null
      ? null
      : Decimal.fromJson(json['purchInvoicesNotPaidAmount'] as String),
  allTasks: (json['allTasks'] as num?)?.toInt() ?? 0,
  notInvoicedHours: (json['notInvoicedHours'] as num?)?.toInt() ?? 0,
  incomingShipments: (json['incomingShipments'] as num?)?.toInt() ?? 0,
  outgoingShipments: (json['outgoingShipments'] as num?)?.toInt() ?? 0,
  whLocations: (json['whLocations'] as num?)?.toInt() ?? 0,
  requests: (json['requests'] as num?)?.toInt() ?? 0,
  todoActivities: (json['todoActivities'] as num?)?.toInt() ?? 0,
  eventActivities: (json['eventActivities'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StatsToJson(_Stats instance) => <String, dynamic>{
  'admins': instance.admins,
  'employees': instance.employees,
  'suppliers': instance.suppliers,
  'leads': instance.leads,
  'customers': instance.customers,
  'openSlsOrders': instance.openSlsOrders,
  'openPurOrders': instance.openPurOrders,
  'opportunities': instance.opportunities,
  'myOpportunities': instance.myOpportunities,
  'categories': instance.categories,
  'products': instance.products,
  'assets': instance.assets,
  'salesInvoicesNotPaidCount': instance.salesInvoicesNotPaidCount,
  'salesInvoicesNotPaidAmount': instance.salesInvoicesNotPaidAmount,
  'purchInvoicesNotPaidCount': instance.purchInvoicesNotPaidCount,
  'purchInvoicesNotPaidAmount': instance.purchInvoicesNotPaidAmount,
  'allTasks': instance.allTasks,
  'notInvoicedHours': instance.notInvoicedHours,
  'incomingShipments': instance.incomingShipments,
  'outgoingShipments': instance.outgoingShipments,
  'whLocations': instance.whLocations,
  'requests': instance.requests,
  'todoActivities': instance.todoActivities,
  'eventActivities': instance.eventActivities,
};

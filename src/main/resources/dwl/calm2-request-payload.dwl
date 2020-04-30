%dw 2.0
output application/json
---
{
	custName: payload.order[0].customer.companyName,
	erpOrderId: payload.order[0].orderId,
	erpLineNumber: payload.orderLine[0].orderLineId,
	erpOrderDate: payload.order[0].orderDate,
	erpOrderLineStatus: payload.order[0].orderStatus,
	product: payload.orderLine[0].product.productCode,
	startDate: payload.orderLine[0].chargingPlan.startDate,
	endDate: payload.orderLine[0].chargingPlan.endDate,
	unitType: payload.orderLine[0].chargingPlan.unitType,
	unitsBought: payload.orderLine[0].chargingPlan.unitsBought,
	unitsUsed: 0,
	feeType: payload.orderLine[0].chargingPlan.feeType,
	productVersionList: payload.orderLine[0].chargingPlan.productVersionList,
	prepaidLicenseId: 0,
	usageReportingSystem: payload.orderLine[0].chargingPlan.usageReportingSystem
}
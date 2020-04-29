%dw 2.0
output application/json
---
{
	custName: payload.customer[0].organisationName,
	erpOrderId: payload.orderLine[0].order.orderId,
	erpLineNumber: payload.orderLine[0].orderLineId,
	erpOrderDate: payload.orderLine[0].order.orderedDate,
	erpOrderLineStatus: payload.orderLine[0].order.orderStatus,
	product: payload.orderLine[0].product.legacyProductCode,
	startDate: payload.orderLine[0].chargingPlan.contractStartDate,
	endDate: payload.orderLine[0].chargingPlan.contractEndDate,
	unitType: payload.orderLine[0].chargingPlan.unitOfSale,
	unitsBought: payload.orderLine[0].chargingPlan.unitsBought,
	unitsUsed: "",
	feeType: payload.orderLine[0].chargingPlan.feeType,
	productVersionList: payload.orderLine[0].chargingPlan.productVersionList,
	prepaidLicenseId: "",
	usageReportingSystem: payload.orderLine[0].chargingPlan.usageReportingSystem
}
%dw 2.0
output application/json
---
{
	"orderLine": payload.orderLine map (item , index) -> {
		erpOrderLineId : item."orderLineId",
		order: {
			erpOrderId: item.order."orderId",
			erpOrderDate: item.order."orderDate"
		},
		product: {
			productCode: item.product."productCode"
		},
		chargingPlan: {
			startDate: item.chargingplan."startDate",
			endDate: item.chargingplan."endDate",
			unitType: item.chargingplan."unitType",
			unitsBought: item.chargingplan."unitsBought",
			feeType: item.chargingplan."feeType",
			productVersionList: item.chargingplan."productVersionList",
			usageReportingSystem: item.chargingplan."usageReportingSystem"
		}
	},
	customer: payload.customer map (cust, custIndex) ->{
		custName: cust."companyName"
	}
}
%dw 2.0
output application/json
---
{
	"orderline": payload.orderline map (item , index) -> {
		erpOrderLineId : item."order-line-id",
		order: {
			erpOrderId: item.order."order-id",
			erpOrderDate: item.order."ordered-date"
		},
		product: {
			productCode: item.product."legacy-product-code"
		},
		chargingPlan: {
			startDate: item.chargingplan."contract-start-date",
			endDate: item.chargingplan."contract-end-date",
			unitType: item.chargingplan."unit-of-sale",
			unitsBought: item.chargingplan."units-of-sale-amount",
			feeType: item.chargingplan."fee-type",
			productVersionList: item.chargingplan."product-version-list",
			usageReportingSystem: item.chargingplan."usage-reporting-system"
		}
	},
	customer: payload.customer map (cust, custIndex) ->{
		custName: cust."organisation-name"
	}
}
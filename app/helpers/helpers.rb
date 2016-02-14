require 'sinatra/base'
require "net/http"
require "uri"

module HelperMethods

  def getPurchases()
    return {"QueryResponse": {
    "Purchase": [
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "Credit": false,
        "TotalAmt": 1000.0,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "1"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "144",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-12T14:04:25-08:00",
          "LastUpdatedTime": "2016-02-12T14:04:25-08:00"
        },
        "TxnDate": "2016-02-12",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 34.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "55",
                "name": "Automobile"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "41",
          "name": "Hicks Hardware",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 42.4,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "1"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "143",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:45:20-08:00",
          "LastUpdatedTime": "2016-02-01T14:45:20-08:00"
        },
        "TxnDate": "2016-01-24",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 42.4,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "64",
                "name": "Job Expenses:Job Materials:Decks and Patios"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "57",
          "name": "Squeaky Kleen Car Wash",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 1900.99,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "1"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "142",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:37:54-08:00",
          "LastUpdatedTime": "2016-02-01T14:37:54-08:00"
        },
        "TxnDate": "2016-01-30",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 19.99,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "55",
                "name": "Automobile"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "57",
          "name": "Squeaky Kleen Car Wash",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 19.99,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "1"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "141",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:37:27-08:00",
          "LastUpdatedTime": "2016-02-01T14:37:27-08:00"
        },
        "TxnDate": "2016-01-23",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 19.99,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "55",
                "name": "Automobile"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "56",
          "name": "Bob's Burger Joint",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 1800.97,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "1"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "140",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:36:37-08:00",
          "LastUpdatedTime": "2016-02-01T14:36:37-08:00"
        },
        "TxnDate": "2016-01-23",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "PrivateNote": "Bought lunch for crew 102",
        "Line": [
          {
            "Id": "1",
            "Amount": 18.97,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "13",
                "name": "Meals and Entertainment"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "Credit": true,
        "TotalAmt": 900.0,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "11"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "139",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:35:37-08:00",
          "LastUpdatedTime": "2016-02-01T14:35:37-08:00"
        },
        "TxnDate": "2016-02-01",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "PrivateNote": "Monthly Payment",
        "Line": [
          {
            "Id": "1",
            "Amount": 900.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "35",
                "name": "Checking"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "57",
          "name": "Squeaky Kleen Car Wash",
          "type": "Vendor"
        },
        "TotalAmt": 19.99,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "138",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:33:29-08:00",
          "LastUpdatedTime": "2016-02-01T14:33:29-08:00"
        },
        "DocNumber": "Debit",
        "TxnDate": "2016-01-16",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 19.99,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "55",
                "name": "Automobile"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "56",
          "name": "Bob's Burger Joint",
          "type": "Vendor"
        },
        "TotalAmt": 3.86,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "31"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "137",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:32:16-08:00",
          "LastUpdatedTime": "2016-02-01T14:32:16-08:00"
        },
        "TxnDate": "2016-01-14",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 3.86,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "13",
                "name": "Meals and Entertainment"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "57",
          "name": "Squeaky Kleen Car Wash",
          "type": "Vendor"
        },
        "TotalAmt": 1239.99,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "31"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "136",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:31:50-08:00",
          "LastUpdatedTime": "2016-02-01T14:31:50-08:00"
        },
        "TxnDate": "2016-01-09",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 19.99,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "55",
                "name": "Automobile"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "56",
          "name": "Bob's Burger Joint",
          "type": "Vendor"
        },
        "TotalAmt": 5005.66,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "31"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "135",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-02-01T14:26:38-08:00",
          "LastUpdatedTime": "2016-02-01T14:30:32-08:00"
        },
        "TxnDate": "2016-01-09",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 5.66,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "13",
                "name": "Meals and Entertainment"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "TotalAmt": 23.5,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "31"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "134",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:21:49-08:00",
          "LastUpdatedTime": "2016-02-01T14:21:49-08:00"
        },
        "TxnDate": "2016-01-21",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 23.5,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "66",
                "name": "Job Expenses:Job Materials:Plants and Soil"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "TotalAmt": 185.0,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "133",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:17:55-08:00",
          "LastUpdatedTime": "2016-02-01T14:17:55-08:00"
        },
        "DocNumber": "70",
        "TxnDate": "2016-01-10",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 185.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "72",
                "name": "Maintenance and Repair"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "TotalAmt": 52.14,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "31"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "132",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:15:18-08:00",
          "LastUpdatedTime": "2016-02-01T14:15:18-08:00"
        },
        "TxnDate": "2016-01-10",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 52.14,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "56",
                "name": "Automobile:Fuel"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "TotalAmt": 63.15,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "31"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "131",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-02-01T14:14:16-08:00",
          "LastUpdatedTime": "2016-02-01T14:14:16-08:00"
        },
        "TxnDate": "2016-01-17",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 63.15,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "56",
                "name": "Automobile:Fuel"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "47",
          "name": "Pam Seitz",
          "type": "Vendor"
        },
        "TotalAmt": 7005.0,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "127",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-18T13:11:56-08:00",
          "LastUpdatedTime": "2016-01-18T13:11:56-08:00"
        },
        "DocNumber": "76",
        "TxnDate": "2016-01-18",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Description": "Counsel",
            "Amount": 75.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "12",
                "name": "Legal & Professional Fees"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 52.56,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "122",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-18T13:03:14-08:00",
          "LastUpdatedTime": "2016-01-18T13:03:14-08:00"
        },
        "DocNumber": "1",
        "TxnDate": "2016-01-18",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 52.56,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "56",
                "name": "Automobile:Fuel"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "41",
          "name": "Hicks Hardware",
          "type": "Vendor"
        },
        "RemitToAddr": {
          "Id": "37",
          "Line1": "42 Main St.",
          "City": "Middlefield",
          "CountrySubDivisionCode": "CA",
          "PostalCode": "94303",
          "Lat": "37.445013",
          "Long": "-122.1391443"
        },
        "TotalAmt": 228.75,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "115",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-18T12:51:46-08:00",
          "LastUpdatedTime": "2016-01-18T12:51:46-08:00"
        },
        "DocNumber": "75",
        "TxnDate": "2016-01-18",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Description": "Rock Fountain",
            "Amount": 125.0,
            "DetailType": "ItemBasedExpenseLineDetail",
            "ItemBasedExpenseLineDetail": {
              "BillableStatus": "NotBillable",
              "ItemRef": {
                "value": "5",
                "name": "Rock Fountain"
              },
              "UnitPrice": 125,
              "Qty": 1,
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          },
          {
            "Id": "2",
            "Description": "Sprinkler Heads",
            "Amount": 11.25,
            "DetailType": "ItemBasedExpenseLineDetail",
            "ItemBasedExpenseLineDetail": {
              "BillableStatus": "NotBillable",
              "ItemRef": {
                "value": "16",
                "name": "Sprinkler Heads"
              },
              "UnitPrice": 0.75,
              "Qty": 15,
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          },
          {
            "Id": "3",
            "Description": "Sprinkler Pipes",
            "Amount": 62.5,
            "DetailType": "ItemBasedExpenseLineDetail",
            "ItemBasedExpenseLineDetail": {
              "BillableStatus": "NotBillable",
              "ItemRef": {
                "value": "17",
                "name": "Sprinkler Pipes"
              },
              "UnitPrice": 2.5,
              "Qty": 25,
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          },
          {
            "Id": "4",
            "Description": "Fountain Pump",
            "Amount": 30.0,
            "DetailType": "ItemBasedExpenseLineDetail",
            "ItemBasedExpenseLineDetail": {
              "BillableStatus": "NotBillable",
              "ItemRef": {
                "value": "11",
                "name": "Pump"
              },
              "UnitPrice": 10,
              "Qty": 3,
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "30",
          "name": "Books by Bessie",
          "type": "Vendor"
        },
        "RemitToAddr": {
          "Id": "31",
          "Line1": "15 Main St.",
          "City": "Palo Alto",
          "CountrySubDivisionCode": "CA",
          "PostalCode": "94303",
          "Lat": "37.445013",
          "Long": "-122.1391443"
        },
        "TotalAmt": 5150.0,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "109",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-18T12:39:12-08:00",
          "LastUpdatedTime": "2016-01-18T12:39:12-08:00"
        },
        "DocNumber": "12",
        "TxnDate": "2015-12-08",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 55.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "70",
                "name": "Legal & Professional Fees:Bookkeeper"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "49",
          "name": "Robertson & Associates",
          "type": "Vendor"
        },
        "TotalAmt": 250.0,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "107",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-18T12:36:23-08:00",
          "LastUpdatedTime": "2016-01-18T12:36:23-08:00"
        },
        "DocNumber": "12",
        "TxnDate": "2015-11-07",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 250.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "69",
                "name": "Legal & Professional Fees:Accounting"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 54.92,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "88",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-01-17T13:15:55-08:00",
          "LastUpdatedTime": "2016-01-17T13:17:13-08:00"
        },
        "DocNumber": "22",
        "TxnDate": "2016-01-08",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 54.92,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "49",
                "name": "Landscaping Services:Job Materials:Plants and Soil"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "TotalAmt": 108.09,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "87",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-01-17T13:14:42-08:00",
          "LastUpdatedTime": "2016-01-17T13:17:06-08:00"
        },
        "DocNumber": "15",
        "TxnDate": "2015-12-15",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 108.09,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "58",
                "name": "Job Expenses"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "TotalAmt": 46.98,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "89",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-01-17T13:16:42-08:00",
          "LastUpdatedTime": "2016-01-17T13:16:55-08:00"
        },
        "DocNumber": "108",
        "TxnDate": "2016-01-17",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 46.98,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "58",
                "name": "Job Expenses"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "TotalAmt": 89.09,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "86",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-01-17T13:13:42-08:00",
          "LastUpdatedTime": "2016-01-17T13:13:55-08:00"
        },
        "DocNumber": "9",
        "TxnDate": "2015-12-08",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Description": "Morning Glories and Sod",
            "Amount": 89.09,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "66",
                "name": "Job Expenses:Job Materials:Plants and Soil"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 158.08,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "85",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-17T13:12:01-08:00",
          "LastUpdatedTime": "2016-01-17T13:12:01-08:00"
        },
        "DocNumber": "3",
        "TxnDate": "2015-11-14",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 158.08,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "66",
                "name": "Job Expenses:Job Materials:Plants and Soil"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "50",
          "name": "Tania's Nursery",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 82.45,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "56",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-01-16T15:10:12-08:00",
          "LastUpdatedTime": "2016-01-17T13:10:58-08:00"
        },
        "DocNumber": "50",
        "TxnDate": "2016-01-12",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 82.45,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "66",
                "name": "Job Expenses:Job Materials:Plants and Soil"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "52",
          "name": "Tony Rondonuwu",
          "type": "Vendor"
        },
        "TotalAmt": 100.0,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "84",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-17T13:09:46-08:00",
          "LastUpdatedTime": "2016-01-17T13:09:46-08:00"
        },
        "TxnDate": "2016-01-09",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Description": "Consulting",
            "Amount": 100.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "71",
                "name": "Legal & Professional Fees:Lawyer"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "41",
          "name": "Hicks Hardware",
          "type": "Vendor"
        },
        "TotalAmt": 215.66,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "83",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-17T13:08:20-08:00",
          "LastUpdatedTime": "2016-01-17T13:08:20-08:00"
        },
        "DocNumber": "13",
        "TxnDate": "2016-01-12",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 215.66,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "67",
                "name": "Job Expenses:Job Materials:Sprinklers and Drip Systems"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "41",
          "name": "Hicks Hardware",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 88.09,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "81",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-17T13:04:57-08:00",
          "LastUpdatedTime": "2016-01-17T13:04:57-08:00"
        },
        "DocNumber": "1",
        "TxnDate": "2016-01-06",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 88.09,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "CustomerRef": {
                "value": "20",
                "name": "Red Rock Diner"
              },
              "AccountRef": {
                "value": "64",
                "name": "Job Expenses:Job Materials:Decks and Patios"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Cash",
        "EntityRef": {
          "value": "41",
          "name": "Hicks Hardware",
          "type": "Vendor"
        },
        "TotalAmt": 24.36,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "80",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-17T13:03:08-08:00",
          "LastUpdatedTime": "2016-01-17T13:03:08-08:00"
        },
        "DocNumber": "8",
        "TxnDate": "2015-12-31",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 24.36,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "49",
                "name": "Landscaping Services:Job Materials:Plants and Soil"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 65.0,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "59",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-16T15:16:13-08:00",
          "LastUpdatedTime": "2016-01-16T15:16:13-08:00"
        },
        "DocNumber": "1",
        "TxnDate": "2016-01-03",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 65.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "56",
                "name": "Automobile:Fuel"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "TotalAmt": 62.01,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "58",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-16T15:15:00-08:00",
          "LastUpdatedTime": "2016-01-16T15:15:00-08:00"
        },
        "DocNumber": "5",
        "TxnDate": "2015-12-14",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 62.01,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "56",
                "name": "Automobile:Fuel"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "33",
          "name": "Chin's Gas and Oil",
          "type": "Vendor"
        },
        "TotalAmt": 54.55,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "57",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-16T15:14:27-08:00",
          "LastUpdatedTime": "2016-01-16T15:14:27-08:00"
        },
        "DocNumber": "4",
        "TxnDate": "2015-11-29",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 54.55,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "56",
                "name": "Automobile:Fuel"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "42",
          "name": "Lee Advertising",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 74.86,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "55",
        "SyncToken": "1",
        "MetaData": {
          "CreateTime": "2016-01-16T14:20:35-08:00",
          "LastUpdatedTime": "2016-01-16T14:22:40-08:00"
        },
        "TxnDate": "2016-01-16",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Amount": 74.86,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "7",
                "name": "Advertising"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "41",
          "name": "Mastercard"
        },
        "PaymentType": "CreditCard",
        "EntityRef": {
          "value": "38",
          "name": "Ellis Equipment Rental",
          "type": "Vendor"
        },
        "Credit": false,
        "TotalAmt": 112.0,
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "54"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "51",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-16T11:45:45-08:00",
          "LastUpdatedTime": "2016-01-16T11:45:45-08:00"
        },
        "DocNumber": "1",
        "TxnDate": "2016-01-16",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Description": "Equipment rental for 5 days",
            "Amount": 112.0,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "29",
                "name": "Equipment Rental"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      },
      {
        "AccountRef": {
          "value": "35",
          "name": "Checking"
        },
        "PaymentType": "Check",
        "EntityRef": {
          "value": "43",
          "name": "Mahoney Mugs",
          "type": "Vendor"
        },
        "TotalAmt": 18.08,
        "PrintStatus": "NotSet",
        "PurchaseEx": {
          "any": [
            {
              "name": "{http://schema.intuit.com/finance/v3}NameValue",
              "declaredType": "com.intuit.schema.finance.v3.NameValue",
              "scope": "javax.xml.bind.JAXBElement$GlobalScope",
              "value": {
                "Name": "TxnType",
                "Value": "3"
              },
              "nil": false,
              "globalScope": true,
              "typeSubstituted": false
            }
          ]
        },
        "domain": "QBO",
        "sparse": false,
        "Id": "36",
        "SyncToken": "0",
        "MetaData": {
          "CreateTime": "2016-01-16T11:12:45-08:00",
          "LastUpdatedTime": "2016-01-16T11:12:45-08:00"
        },
        "DocNumber": "2",
        "TxnDate": "2016-01-12",
        "CurrencyRef": {
          "value": "USD",
          "name": "United States Dollar"
        },
        "Line": [
          {
            "Id": "1",
            "Description": "Office Supplies",
            "Amount": 18.08,
            "DetailType": "AccountBasedExpenseLineDetail",
            "AccountBasedExpenseLineDetail": {
              "AccountRef": {
                "value": "15",
                "name": "Office Expenses"
              },
              "BillableStatus": "NotBillable",
              "TaxCodeRef": {
                "value": "NON"
              }
            }
          }
        ]
      }
    ],
    "startPosition": 1,
    "maxResults": 35}}
  end


  def generate_image()
  	uri = URI.parse("http://uifaces.com/api/v1/random")
  	response = Net::HTTP.get_response(uri)
  	image_urls = JSON.parse(response.body)
  	image = image_urls["image_urls"]["epic"]
    return image
  end

	def logged_in(id,token)
		user = User.find(id)
		user.token == token
	end

  def get_user_suggestions(id,count)
    user = User.find(id)
    start = 1
    finish = count
    results = []
    until results.count >= count do
      candidates = User.where(id: (start..finish))
      results << candidates.select{|candidate| (user.friends.include?(candidate) == false) && (candidate != user)}
      results.flatten!
      start = finish + 1
      finish = start + count
    end
      results.map!{|candidate| {id: candidate.id, first_name: candidate.first_name, last_name: candidate.last_name, image: candidate.image}}
    return results
  end

  def get_user_data(id)
    user = User.find(id)
    user_data = {
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      followers_count: user.followers.count,
      friends_count: user.friends.count,
      image: user.image
    }
    user_data.to_json
  end

  def create_new_account(user_data)
    credentials = JSON.parse(user_data)
    user = User.new(first_name: credentials['firstName'], last_name: credentials['lastName'], email: credentials['email'], image: generate_image())
    user.password = credentials['password']
    user.token = Faker::Internet.password
    return user
  end
end

helpers HelperMethods

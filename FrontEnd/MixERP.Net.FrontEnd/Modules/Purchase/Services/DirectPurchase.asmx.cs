﻿/********************************************************************************
Copyright (C) Binod Nepal, Mix Open Foundation (http://mixof.org).

This file is part of MixERP.

MixERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

MixERP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with MixERP.  If not, see <http://www.gnu.org/licenses/>.
***********************************************************************************/

using MixERP.Net.Common.Models.Core;
using MixERP.Net.Common.Models.Transactions;
using MixERP.Net.WebControls.StockTransactionFactory.Helpers;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace MixERP.Net.Core.Modules.Purchase.Services
{
    /// <summary>
    /// Summary description for DirectPurchase
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    [ScriptService]
    public class DirectPurchase : WebService
    {
        [WebMethod(EnableSession = true)]
        public long Save(DateTime valueDate, int storeId, string partyCode, string referenceNumber, string data, string statementReference, string transactionType, int cashRepositoryId, int costCenterId, string attachmentsJSON)
        {
            Collection<StockMasterDetailModel> details = CollectionHelper.GetStockMasterDetailCollection(data, storeId);

            JavaScriptSerializer js = new JavaScriptSerializer();
            Collection<AttachmentModel> attachments = js.Deserialize<Collection<AttachmentModel>>(attachmentsJSON);

            bool isCredit = !string.IsNullOrWhiteSpace(transactionType) && !transactionType.ToUpperInvariant().Equals("CASH");

            if (isCredit && cashRepositoryId > 0)
            {
                throw new InvalidOperationException("Invalid cash repository specified in credit transaction.");
            }

            return Data.Transactions.DirectPurchase.Add(valueDate, storeId, isCredit, partyCode, details, cashRepositoryId, costCenterId, referenceNumber, statementReference, attachments);
        }
    }
}
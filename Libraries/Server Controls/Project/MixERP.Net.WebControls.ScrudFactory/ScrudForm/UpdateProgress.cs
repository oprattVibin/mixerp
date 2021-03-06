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

using MixERP.Net.Common.Helpers;
using MixERP.Net.WebControls.ScrudFactory.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MixERP.Net.WebControls.ScrudFactory
{
    public partial class ScrudForm
    {
        private UpdateProgress updateProgress;

        private void AddUpdateProgress(Panel p)
        {
            this.updateProgress = new UpdateProgress();
            this.updateProgress.ID = "ScrudUpdateProgress";

            this.updateProgress.ProgressTemplate = new AjaxProgressTemplate(this.GetUpdateProgressTemplateCssClass(),
                this.GetUpdateProgressSpinnerImageCssClass(),
                this.Page.ResolveUrl(this.GetUpdateProgressSpinnerImagePath()));
            p.Controls.Add(this.updateProgress);
        }

        private string GetUpdateProgressSpinnerImagePath()
        {
            var cssClass = this.UpdateProgressSpinnerImagePath;

            if (string.IsNullOrWhiteSpace(cssClass))
            {
                cssClass = ConfigurationHelper.GetScrudParameter("UpdateProgressSpinnerImagePath");
            }

            return cssClass;
        }
    }
}
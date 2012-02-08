using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using L24CM;
using L24CM.Controllers;
using L24CMTest.Models;
using L24CM.Attributes;
using System.Web.Routing;

namespace L24CMTest.Controllers
{
    [HandleError]
    public class HomeController : ContentController<HomeModel, HomeContent>
    {
        public override List<string> SignificantRouteKeys
        {
            get { return new List<string> { "b" }; }
        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);
        }

        public ActionResult Index()
        {
            return View(this.Model.Content);
        }

        public ActionResult About()
        {
            L24Model model = new L24Model();
            return View(model);
        }
    }
}

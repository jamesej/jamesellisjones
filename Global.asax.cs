using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using L24CM;
using L24CMTest.Models;
using L24CM.Routing;

namespace MVC2MS
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            L24Manager.Init(routes, typeof(MvcApplication));

            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.Add("test", new ExtendedRoute("Test/{b}/{id}", new MvcRouteHandler())
            {
                Defaults = new RouteValueDictionary(
                    new { controller = "TestData", action = "Index", b = UrlParameter.Optional, id = UrlParameter.Optional }),
            });
            routes.Add("default", new ExtendedRoute("{controller}/{b}/{id}", new MvcRouteHandler())
            {
                Defaults = new RouteValueDictionary(
                    new { controller = "Home", action = "Index", b = "Default"
                        , id = UrlParameter.Optional }),
            });
        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterRoutes(RouteTable.Routes);
        }
    }
}
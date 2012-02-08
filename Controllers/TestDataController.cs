using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using L24CM.Controllers;
using L24CM.Models;
using L24CM.Attributes;
using L24CMTest.Models;

namespace L24CMTest.Controllers
{
    public class TestDataController : DataController<TestModel>
    {
        protected LoaderDictionary GetLoaders()
        {
            return new LoaderDictionary
            {
                { "Inner", rds => new TestInner
                    {
                        Values = (new List<string> { "a", "b", "c", "d", "e", "f", "g" }).ProcessBySpecification(rds["Inner.Values"], 3).ToList()
                    }
                },
                { "A", rds => "xxxx" },
                { "Numbers", rds => (new List<int> { 1, 2, 4, 8, 5, 7 }).ProcessBySpecification(rds["Numbers"], 3).ToList() }
            };
        }
        //
        // GET: /TestData/

        public ActionResult Index(TestModel model)
        {
            return View(model);
        }

    }
}

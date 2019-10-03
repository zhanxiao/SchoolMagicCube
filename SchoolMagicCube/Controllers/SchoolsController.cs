using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using SchoolMagicCube.Models;

namespace SchoolMagicCube.Controllers
{
    public class SchoolsController : ApiController
    {
        private SchoolMagicCubeEntities db = new SchoolMagicCubeEntities();

        // GET: api/Schools
        public IQueryable<School> GetSchool()
        {
            return db.School;
        }

        // GET: api/Schools/5
        [ResponseType(typeof(School))]
        public IHttpActionResult GetSchool(int id)
        {
            School school = db.School.Find(id);
            if (school == null)
            {
                return NotFound();
            }

            return Ok(school);
        }

        // PUT: api/Schools/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSchool(int id, School school)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != school.Id)
            {
                return BadRequest();
            }

            db.Entry(school).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SchoolExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Schools
        [ResponseType(typeof(School))]
        public IHttpActionResult PostSchool(School school)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            school.CreateTime = DateTime.Now;
            school.UpdateTime = DateTime.Now;

            db.School.Add(school);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = school.Id }, school);
        }

        // DELETE: api/Schools/5
        [ResponseType(typeof(School))]
        public IHttpActionResult DeleteSchool(int id)
        {
            School school = db.School.Find(id);
            if (school == null)
            {
                return NotFound();
            }

            db.School.Remove(school);
            db.SaveChanges();

            return Ok(school);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SchoolExists(int id)
        {
            return db.School.Count(e => e.Id == id) > 0;
        }
    }
}
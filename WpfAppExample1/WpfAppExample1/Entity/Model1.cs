namespace WpfAppExample1.Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model12")
        {
        }

        public virtual DbSet<Lig> Ligs { get; set; }
        public virtual DbSet<Mac> Macs { get; set; }
        public virtual DbSet<Sezon> Sezons { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Takim> Takims { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Lig>()
                .HasMany(e => e.Sezons)
                .WithRequired(e => e.Lig)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Sezon>()
                .HasMany(e => e.Macs)
                .WithRequired(e => e.Sezon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Takim>()
                .HasMany(e => e.Macs)
                .WithRequired(e => e.Takim)
                .HasForeignKey(e => e.evTk_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Takim>()
                .HasMany(e => e.Macs1)
                .WithRequired(e => e.Takim1)
                .HasForeignKey(e => e.depTk_id)
                .WillCascadeOnDelete(false);
        }
    }
}

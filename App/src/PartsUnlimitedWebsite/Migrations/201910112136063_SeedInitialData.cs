namespace PartsUnlimited.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    using System.IO;

    public partial class SeedInitialData : DbMigration
    {
        public override void Up()
        {
            var baseDir = AppDomain.CurrentDomain
                       .BaseDirectory
                       .Replace("\\bin", string.Empty) + "\\Migrations\\InitialData.sql";

            Sql(File.ReadAllText(baseDir));
        }
        
        public override void Down()
        {
        }
    }
}

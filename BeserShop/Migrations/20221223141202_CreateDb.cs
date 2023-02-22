using Microsoft.EntityFrameworkCore.Migrations;

namespace BeserShop.Migrations
{
    public partial class CreateDb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Categorys",
                columns: table => new
                {
                    CategoryID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CategoryName = table.Column<string>(maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categorys", x => x.CategoryID);
                });

            migrationBuilder.CreateTable(
                name: "Customers",
                columns: table => new
                {
                    CustomerID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CustomerName = table.Column<string>(maxLength: 50, nullable: false),
                    CustomerEmail = table.Column<string>(maxLength: 50, nullable: false),
                    CustomerPhone = table.Column<string>(maxLength: 11, nullable: false),
                    CustomerAdress = table.Column<string>(maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Customers", x => x.CustomerID);
                });

            migrationBuilder.CreateTable(
                name: "MeatProducts",
                columns: table => new
                {
                    MeatProductID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MeatProductName = table.Column<string>(maxLength: 50, nullable: false),
                    MeatProductPrice = table.Column<int>(nullable: false),
                    MeatProductStock = table.Column<int>(nullable: false),
                    MeatProductDescription = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MeatProducts", x => x.MeatProductID);
                });

            migrationBuilder.CreateTable(
                name: "Suppliers",
                columns: table => new
                {
                    SupplierID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SupplierName = table.Column<string>(maxLength: 50, nullable: false),
                    SupplierAdress = table.Column<string>(maxLength: 50, nullable: false),
                    SupplierPhone = table.Column<string>(maxLength: 11, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Suppliers", x => x.SupplierID);
                });

            migrationBuilder.CreateTable(
                name: "VeganProducts",
                columns: table => new
                {
                    VeganProductID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    VeganProductName = table.Column<string>(maxLength: 50, nullable: false),
                    VeganProductPrice = table.Column<int>(nullable: false),
                    VeganProductStock = table.Column<int>(nullable: false),
                    VeganProductDescription = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VeganProducts", x => x.VeganProductID);
                });

            migrationBuilder.CreateTable(
                name: "VegetarianProducts",
                columns: table => new
                {
                    VegetarianProductID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    VegetarianProductName = table.Column<string>(maxLength: 50, nullable: false),
                    VegetarianProductPrice = table.Column<int>(nullable: false),
                    VegetarianProductStock = table.Column<int>(nullable: false),
                    VegetarianProductDescription = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VegetarianProducts", x => x.VegetarianProductID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Categorys");

            migrationBuilder.DropTable(
                name: "Customers");

            migrationBuilder.DropTable(
                name: "MeatProducts");

            migrationBuilder.DropTable(
                name: "Suppliers");

            migrationBuilder.DropTable(
                name: "VeganProducts");

            migrationBuilder.DropTable(
                name: "VegetarianProducts");
        }
    }
}

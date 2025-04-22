using Microsoft.EntityFrameworkCore;

public class ProductDbContext : DbContext
{
    #region Конструктор
    public ProductDbContext(DbContextOptions<ProductDbContext> options) : base(options)
    {
        Database.EnsureCreated();
    }
    #endregion

    #region Public свойство
    public DbSet<Product> Products { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Product>().HasData(GetProducts());
        base.OnModelCreating(modelBuilder);
    }

    #endregion

    #region методы
    private Product[] GetProducts() => new Product[] {
       new Product{
    ProductID = 1,
    ProductName = "Катушка Shimano Stradic FL 2500",
    ProductDescription = "Премиальная безынерционная катушка с технологией Hagane Body для максимальной прочности.",
    ProductPrice = 18990,
    ProductUnit = 8
},

new Product{
    ProductID = 2,
    ProductName = "Удилище Daiwa Tatula Elite 7'2",
    ProductDescription = "Высококлассное спиннинговое удилище с бланком из нанокарбона SVF.",
    ProductPrice = 24990,
    ProductUnit = 5
},

new Product{
    ProductID = 3,
    ProductName = "Набор воблеров Megabass Vision 110",
    ProductDescription = "Легендарные воблеры с уникальной игрой (5 цветов в наборе).",
    ProductPrice = 8990,
    ProductUnit = 12
},

new Product{
    ProductID = 4,
    ProductName = "Эхолот Garmin Striker Plus 4",
    ProductDescription = "Компактный эхолот с GPS и CHIRP-сонаром для точного определения рыбы.",
    ProductPrice = 32990,
    ProductUnit = 3
},

new Product{
    ProductID = 5,
    ProductName = "Комплект одежды Norfin Storm 3 в 1",
    ProductDescription = "Непромокаемый костюм для рыбалки с мембранной технологией (куртка+штаны).",
    ProductPrice = 15990,
    ProductUnit = 6
},

new Product{
    ProductID = 6,
    ProductName = "Набор рыболовных крючков Owner 5314-151",
    ProductDescription = "Премиальные крючки из высокоуглеродистой стали (50 шт. в упаковке).",
    ProductPrice = 1290,
    ProductUnit = 25
},

new Product{
    ProductID = 7,
    ProductName = "Подсачек Salmo Diamond 200",
    ProductDescription = "Складной подсачек с неопреновой ручкой и карбоновой сеткой.",
    ProductPrice = 5990,
    ProductUnit = 9
}



    };
    #endregion
}
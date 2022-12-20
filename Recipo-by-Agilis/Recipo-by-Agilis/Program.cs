using System.Configuration;
using System.Drawing.Text;
using System.Text;
using Identity.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
//using Recipo_by_Agilis.Data;
using Recipo_by_Agilis.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using Recipo_by_Agilis.Models.Interfaces;

var builder = WebApplication.CreateBuilder(args);
var configuration = builder.Configuration;

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");

// Add services to the container.
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddDbContext<RecipoContext>(options => options.UseSqlServer(builder.Configuration["ConnectionStrings:DefaultConnection"]));
builder.Services.AddIdentity<AppUser, IdentityRole>().AddEntityFrameworkStores<RecipoContext>().AddDefaultTokenProviders();

//Authentication
builder.Services.AddAuthentication(option =>
{
    option.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    option.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    option.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(token =>
{
    token.SaveToken = true;
    token.RequireHttpsMetadata = false;
    token.TokenValidationParameters = new TokenValidationParameters()
    {
        ValidateIssuer = false,
        ValidateAudience = true,
        //ValidAudience = configuration["JWT:ValidAudience"],
        //ValidIssuer = configuration["JWT:ValidIssuer"],
        //IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["JWT:Secret"]))

    };
});
builder.Services.AddScoped<IServiceProvider, ServiceProvider>();
builder.Services.AddScoped<IServiceCollection, ServiceCollection>();
builder.Services.AddScoped<IUserRepository, User>();
builder.Services.AddControllersWithViews();
//builder.Services.AddIdentity<IdentityUser, IdentityRole>(options => options.SignIn.RequireConfirmedAccount = true)
//  .AddEntityFrameworkStores<RecipoContext>();
//builder.Services.AddIdentity<IdentityUser, IdentityRole>().AddEntityFrameworkStores<AppDBContext>();
//builder.Services.AddDbContext<UserContext>(opt => opt.UseSqlServer(connectionString));
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var provider = builder.Services.BuildServiceProvider();
var config = provider.GetRequiredService<IConfiguration>();
builder.Services.AddCors(options =>
{
    var frontendURL = config.GetValue<string>("frontend_url");
    options.AddDefaultPolicy(builder =>
    {
        builder.WithOrigins(frontendURL).AllowAnyMethod().AllowAnyHeader();
    });
});



var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
//app.UseCors(x => x
//    .AllowAnyMethod()
//    .AllowAnyHeader()
//    .SetIsOriginAllowed(origin => true)
//    //.WithOrigins("https://localhost:44351")); // Allow only this origin can also have multiple origins separated with comma
//    .AllowCredentials());
app.UseCors();
app.UseAuthentication();
app.UseRouting();
app.UseHttpsRedirection();

app.UseAuthorization();
app.UseEndpoints(endpoints =>
    {
        endpoints.MapControllerRoute(
            name: "default",
            pattern: "{controller=Home}/{action=Index}/{id?}");
    }
);
app.MapControllers();

app.Run();

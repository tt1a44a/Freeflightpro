.class public Lcom/parrot/freeflight/offer/client/OfferModule;
.super Ljava/lang/Object;
.source "OfferModule.java"


# static fields
.field private static final NOTIFICATION_BASE_URL:Ljava/lang/String; = "https://www.parrot.com"

.field private static final TIMEOUT_SECONDS:I = 0xf

.field private static sGson:Lcom/google/gson/Gson;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/parrot/freeflight/offer/client/OfferModule;->sGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/offer/client/OfferModule;->sGson:Lcom/google/gson/Gson;

    .line 58
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/offer/client/OfferModule;->sGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private static getGsonConverterFactory()Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getHttpClient()Lokhttp3/OkHttpClient;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v4, 0xf

    .line 43
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 44
    .local v0, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 46
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 46
    return-object v1
.end method

.method public static getOfferAPI()Lcom/parrot/freeflight/offer/client/OfferAPI;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/parrot/freeflight/offer/client/OfferModule;->sOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/parrot/freeflight/offer/client/OfferAPI;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/offer/client/OfferAPI;

    sput-object v0, Lcom/parrot/freeflight/offer/client/OfferModule;->sOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;

    .line 37
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/offer/client/OfferModule;->sOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;

    return-object v0
.end method

.method private static getRetrofit()Lretrofit2/Retrofit;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 74
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getScalarsConverterFactory()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getGsonConverterFactory()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "https://www.parrot.com"

    .line 77
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method private static getScalarsConverterFactory()Lretrofit2/converter/scalars/ScalarsConverterFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v0

    return-object v0
.end method

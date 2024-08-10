.class public Lcom/parrot/freeflight/core/academy/client/AcademyModule;
.super Ljava/lang/Object;
.source "AcademyModule.java"


# static fields
.field private static final ACADEMY_BASE_URL_PREPROD:Ljava/lang/String; = "https://academydev.parrot.biz"

.field private static final ACADEMY_BASE_URL_PROD:Ljava/lang/String; = "https://droneacademy.parrot.com"

.field private static final CACHE_SIZE:I = 0xa00000

.field private static final TIMEOUT_SECONDS:I = 0xf

.field private static mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sCacheDir:Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcademyAPI()Lcom/parrot/freeflight/core/academy/client/AcademyAPI;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    sput-object v0, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    .line 60
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    return-object v0
.end method

.method public static getAcademyBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "https://droneacademy.parrot.com"

    return-object v0
.end method

.method private static getGson()Lcom/google/gson/Gson;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/parrot/freeflight/core/academy/utils/DateDeserializer;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/academy/utils/DateDeserializer;-><init>()V

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method private static getGsonConverterFactory()Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getHttpClient()Lokhttp3/OkHttpClient;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v6, 0xf

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "cache":Lokhttp3/Cache;
    sget-object v2, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->sCacheDir:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 88
    new-instance v0, Lokhttp3/Cache;

    .end local v0    # "cache":Lokhttp3/Cache;
    sget-object v2, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->sCacheDir:Ljava/io/File;

    const-wide/32 v4, 0xa00000

    invoke-direct {v0, v2, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 91
    .restart local v0    # "cache":Lokhttp3/Cache;
    :cond_0
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 95
    .local v1, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 98
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 99
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 100
    invoke-virtual {v2, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {v2, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/core/academy/client/AuthenticationInterceptor;

    invoke-direct {v3}, Lcom/parrot/freeflight/core/academy/client/AuthenticationInterceptor;-><init>()V

    .line 103
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcErrorInterceptor;

    invoke-direct {v3}, Lcom/parrot/freeflight/core/authentication/client/ApcErrorInterceptor;-><init>()V

    .line 104
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 98
    return-object v2
.end method

.method private static getRetrofit()Lretrofit2/Retrofit;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 76
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getScalarsConverterFactory()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getGsonConverterFactory()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getAcademyBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method private static getScalarsConverterFactory()Lretrofit2/converter/scalars/ScalarsConverterFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 1
    .param p0, "cacheDir"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    sget-object v0, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->mAcademyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    if-nez v0, :cond_0

    .line 65
    sput-object p0, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->sCacheDir:Ljava/io/File;

    .line 67
    :cond_0
    return-void
.end method

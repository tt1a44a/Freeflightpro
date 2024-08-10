.class public Lcom/parrot/freeflight/core/authentication/client/ApcModule;
.super Ljava/lang/Object;
.source "ApcModule.java"


# static fields
.field public static final A:Ljava/lang/String; = "qnJ-sYQ0"

.field public static final APC_TOKEN_KEY:Ljava/lang/String; = "apcToken"

.field public static final B:Ljava/lang/String; = "hCTTOL3Ass"

.field public static final C:Ljava/lang/String; = "[xf=.tek=0.8"

.field private static final CACHE_SIZE:I = 0xa00000

.field public static final FIRST_NAME_KEY:Ljava/lang/String; = "first_name"

.field public static final LAST_NAME_KEY:Ljava/lang/String; = "last_name"

.field private static final MYPARROT_BASE_URL_PREPROD:Ljava/lang/String; = "https://preprod-accounts.parrot.com/V4/"

.field private static final MYPARROT_BASE_URL_PROD:Ljava/lang/String; = "https://accounts.parrot.com/V4/"

.field public static final PERSONAL_DATA_KEY:Ljava/lang/String; = "personalData"

.field public static final SIGNATURE_TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final TIMEOUT_SECONDS:I = 0xf

.field public static final TIMESTAMP_KEY:Ljava/lang/String; = "ts"

.field public static final XCALLER_ID:Ljava/lang/String; = "FF5_Android"

.field private static mApcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApcAPI()Lcom/parrot/freeflight/core/authentication/client/ApcAPI;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->mApcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    sput-object v0, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->mApcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    .line 69
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->mApcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    return-object v0
.end method

.method private static getGson()Lcom/google/gson/Gson;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/parrot/freeflight/core/academy/utils/DateDeserializer;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/academy/utils/DateDeserializer;-><init>()V

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method private static getGsonConverterFactory()Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getGson()Lcom/google/gson/Gson;

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

    .line 88
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 92
    .local v0, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 95
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lokhttp3/Cache;

    .line 96
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-wide/32 v4, 0xa00000

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    invoke-virtual {v1, v6, v7, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-virtual {v1, v6, v7, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/authentication/client/ApcInterceptor;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/authentication/client/ApcInterceptor;-><init>()V

    .line 100
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/authentication/client/AuthorizationApcInterceptor;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/authentication/client/AuthorizationApcInterceptor;-><init>()V

    .line 101
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/authentication/client/ApcErrorInterceptor;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/authentication/client/ApcErrorInterceptor;-><init>()V

    .line 102
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 95
    return-object v1
.end method

.method public static getMyParrotBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "https://accounts.parrot.com/V4/"

    return-object v0
.end method

.method private static getRetrofit()Lretrofit2/Retrofit;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 79
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getScalarsConverterFactory()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getGsonConverterFactory()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getMyParrotBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method private static getScalarsConverterFactory()Lretrofit2/converter/scalars/ScalarsConverterFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v0

    return-object v0
.end method

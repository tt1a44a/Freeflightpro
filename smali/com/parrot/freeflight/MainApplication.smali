.class public Lcom/parrot/freeflight/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainApplication"

.field private static sApplication:Lcom/parrot/freeflight/MainApplication;

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 29
    :try_start_0
    const-string v1, "jniandroid"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    const-string v1, "curl"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const-string v1, "arsal"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-string v1, "arsal_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v1, "ulog"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    const-string v1, "futils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "pomp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const-string v1, "mux"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    const-string v1, "mux_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const-string v1, "arnetworkal"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-string v1, "arnetworkal_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v1, "arnetwork"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v1, "arnetwork_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const-string v1, "arcommands"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    const-string v1, "arcommands_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const-string v1, "json-c"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const-string v1, "ardiscovery"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    const-string v1, "ardiscovery_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    const-string v1, "armedia"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const-string v1, "armedia_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    const-string v1, "arstream2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const-string v1, "arstream2_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    const-string v1, "arutils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    const-string v1, "arutils_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const-string v1, "aracademy"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    const-string v1, "aracademy_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    const-string v1, "ardatatransfer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    const-string v1, "ardatatransfer_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "plfng"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "tar"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "puf"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    const-string v1, "arupdater"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    const-string v1, "arupdater_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const-string v1, "armavlink"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const-string v1, "armavlink_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const-string v1, "arsync"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    const-string v1, "arsync_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v1, "frameinfo"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    const-string v1, "frameinfo_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 68
    const-string v1, "mppblackbox"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/parrot/jniandroid/AndroidInfos;->androidCpuFeatures()J

    move-result-wide v2

    .line 71
    .local v2, "features":J
    invoke-static {}, Lcom/parrot/jniandroid/AndroidInfos;->androidCpuFamily()I

    move-result v1

    if-ne v1, v7, :cond_0

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    .line 74
    const-string v1, "MainApplication"

    const-string v4, "armv7a, ANDROID_CPU_ARM_FEATURE_NEON not supported"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    const-string v1, "jnicore_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_VERBOSE:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->setMinimumLogLevel(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;)Z

    .line 92
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v4, 0x7

    new-array v4, v4, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v5, 0x0

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v6, v4, v5

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ANAFI4K:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->setSupportedProducts(Ljava/util/Set;)V

    .line 100
    return-void

    .line 76
    :cond_0
    :try_start_1
    const-string/jumbo v1, "opencv_world"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    const-string v1, "lynx"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    const-string v1, "lynx_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    const-string v1, "mediacodecs"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    const-string v1, "mediacodecs_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainApplication"

    const-string v4, "Oops (LoadLibrary)"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApp()Lcom/parrot/freeflight/MainApplication;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/parrot/freeflight/MainApplication;->sApplication:Lcom/parrot/freeflight/MainApplication;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/parrot/freeflight/MainApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCrashlytics(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v4, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v4}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    .line 135
    .local v0, "core":Lcom/crashlytics/android/core/CrashlyticsCore;
    new-array v1, v2, [Lio/fabric/sdk/android/Kit;

    new-instance v2, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 136
    return-void

    .end local v0    # "core":Lcom/crashlytics/android/core/CrashlyticsCore;
    :cond_0
    move v1, v3

    .line 134
    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "MainApplication"

    const-string v1, "Starting application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/parrot/freeflight/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/MainApplication;->sContext:Landroid/content/Context;

    .line 106
    sput-object p0, Lcom/parrot/freeflight/MainApplication;->sApplication:Lcom/parrot/freeflight/MainApplication;

    .line 107
    invoke-static {p0}, Lcom/parrot/freeflight/core/CoreManager;->create(Landroid/app/Application;)V

    .line 108
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->start()V

    .line 110
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isDataSharingAllowed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/MainApplication;->initCrashlytics(Z)V

    .line 112
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 113
    return-void
.end method

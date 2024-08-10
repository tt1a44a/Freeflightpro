.class public abstract Lcom/parrot/freeflight/core/registration/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$TrialState;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationCheckResult;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$PromotionStartResult;,
        Lcom/parrot/freeflight/core/registration/RegistrationManager$TrialStartResult;
    }
.end annotation


# static fields
.field private static final CHECK_DELAY_MILLIS:I = 0x6ddd00

.field public static final DRONE_UNKNOWN:I = -0x1

.field private static final FEATURE_TRIAL_AVAILABLE:Ljava/lang/String; = "featureTrialAvailable"

.field public static final PROMOTION_ACTIVATED:I = 0xa

.field public static final PROMOTION_NOT_STARTED_NO_CONNECTION:I = 0x0

.field public static final PROMOTION_STARTED:I = -0x1

.field public static final PROMOTION_START_FAILED:I = 0x1

.field private static final REGISTRATION_ACADEMY_LOGIN_KEY:Ljava/lang/String; = "academy_login"

.field private static final REGISTRATION_APP_VERSION_KEY:Ljava/lang/String; = "app_version"

.field private static final REGISTRATION_BOUGHT_KEY:Ljava/lang/String; = "bought"

.field public static final REGISTRATION_CHECK_FAILED_NO_CONNECTION:I = 0x0

.field private static final REGISTRATION_CHECK_ONLY_KEY:Ljava/lang/String; = "check_only"

.field private static final REGISTRATION_CPU_ID_KEY:Ljava/lang/String; = "p7_id"

.field private static final REGISTRATION_FALSE_VALUE:Ljava/lang/String; = "0"

.field private static final REGISTRATION_FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final REGISTRATION_HARDWARE_KEY:Ljava/lang/String; = "hardware"

.field private static final REGISTRATION_LANGUAGE_KEY:Ljava/lang/String; = "language"

.field private static final REGISTRATION_OS_KEY:Ljava/lang/String; = "os"

.field private static final REGISTRATION_OS_VALUE:Ljava/lang/String; = "Android"

.field private static final REGISTRATION_OS_VERSION_KEY:Ljava/lang/String; = "os_version"

.field private static final REGISTRATION_PRODUCT_KEY:Ljava/lang/String; = "product"

.field private static final REGISTRATION_PROMOTION_CODE_KEY:Ljava/lang/String; = "discount_code"

.field private static final REGISTRATION_REGION_KEY:Ljava/lang/String; = "region"

.field private static final REGISTRATION_SECURITY_KEY:Ljava/lang/String; = "security"

.field private static final REGISTRATION_SERIAL_KEY:Ljava/lang/String; = "serial"

.field private static final REGISTRATION_SERVER_AUTHORITY:Ljava/lang/String; = "inapptrial.parrot.com"

.field private static final REGISTRATION_SERVER_PATH:Ljava/lang/String; = "index.php"

.field private static final REGISTRATION_SERVER_SCHEME:Ljava/lang/String; = "https"

.field private static final REGISTRATION_TRUE_VALUE:Ljava/lang/String; = "1"

.field private static final REQUEST_FEATURE_TRIAL_AVAILABLE:Ljava/lang/String; = "feature_available"

.field private static final REQUEST_PROMOTIONS:Ljava/lang/String; = "promotions"

.field private static final REQUEST_TIMEOUT_MILLIS:I = 0x1388

.field private static final REQUEST_TRIAL:Ljava/lang/String; = "trial"

.field private static final SUFFIX_SEPARATOR:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "FF4.FM.Registration"

.field public static final TRIAL_CHECKED_NOT_STARTED:I = 0x2

.field public static final TRIAL_CHECKED_STARTED:I = 0x3

.field public static final TRIAL_CHECK_FAILED:I = 0x1

.field public static final TRIAL_INVALID:I = 0x0

.field public static final TRIAL_NOT_AVAILABLE:I = -0x2

.field public static final TRIAL_NOT_STARTED_NO_CONNECTION:I = 0x0

.field public static final TRIAL_STARTED:I = -0x1

.field public static final TRIAL_START_FAILED:I = 0x1

.field public static final TRIAL_UNKNOWN:I = -0x1

.field public static final TRIAL_VALID:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneCheckResult:I

.field private mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mInAppManager:Lcom/parrot/freeflight/core/InAppManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInAppManagerListener:Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLastCheckTimeSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPromotionSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTrialAvailable:Z

.field private final mTrialSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/InAppManager;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "inAppManager"    # Lcom/parrot/freeflight/core/InAppManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "trialAvailableByDefault"    # Z

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mCurrentDroneCheckResult:I

    .line 135
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$1;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInAppManagerListener:Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;

    .line 150
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 152
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 168
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 183
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$4;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 196
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getTrialSharedPrefsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    .line 198
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getPromotionSharedPrefsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mPromotionSharedPreferences:Landroid/content/SharedPreferences;

    .line 199
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getLastCheckTimeSharedPrefsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mLastCheckTimeSharedPreferences:Landroid/content/SharedPreferences;

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featureTrialAvailable"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    .line 201
    iput-object p2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 202
    iput-object p3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->makeRegistrationCheckRequest(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/registration/RegistrationManager;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getCurrentTimeInSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/registration/RegistrationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/registration/RegistrationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mCurrentDroneCheckResult:I

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->makeRegistrationRequest(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mPromotionSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->makePromotionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCurrentTimeInSeconds()J
    .locals 4

    .prologue
    .line 396
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private makePromotionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "promoCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->makeRegistrationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private makeRegistrationCheckRequest(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 473
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->makeRegistrationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private makeRegistrationRequest(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->makeRegistrationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private makeRegistrationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 19
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "promoCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "checkOnly"    # Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 485
    const/4 v8, 0x0

    .line 486
    .local v8, "reader":Landroid/util/JsonReader;
    const/4 v13, 0x0

    .line 487
    .local v13, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    const-string v15, "https"

    .line 488
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "inapptrial.parrot.com"

    .line 489
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "index.php"

    .line 490
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "serial"

    .line 491
    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "p7_id"

    .line 492
    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "app_version"

    const-string v16, "5.2.7"

    .line 493
    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "os"

    const-string v16, "Android"

    .line 494
    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "os_version"

    sget-object v16, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 495
    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "hardware"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 496
    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "feature"

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getTrialFeatureValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "security"

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getTrialSecurityValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    const-string v16, "bought"

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->isPurchased()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "1"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 501
    .local v11, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v14, :cond_0

    .line 502
    const-string/jumbo v14, "product"

    const-string v15, "%04x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 505
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v14

    iget-object v4, v14, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->email:Ljava/lang/String;

    .line 506
    .local v4, "academyLogin":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 507
    const-string v14, "academy_login"

    invoke-virtual {v11, v14, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 510
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 511
    .local v7, "locale":Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "country":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 513
    const-string v14, "language"

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 519
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 520
    const-string v14, "discount_code"

    move-object/from16 v0, p3

    invoke-virtual {v11, v14, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 522
    :cond_2
    if-eqz p4, :cond_3

    .line 523
    const-string v14, "check_only"

    const-string v15, "1"

    invoke-virtual {v11, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 525
    :cond_3
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 531
    .local v10, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 532
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v13, v0

    .line 533
    const/16 v14, 0x1388

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 534
    const/16 v14, 0x1388

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 535
    new-instance v9, Landroid/util/JsonReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v14}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v8    # "reader":Landroid/util/JsonReader;
    .local v9, "reader":Landroid/util/JsonReader;
    if-eqz p4, :cond_4

    .line 537
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mLastCheckTimeSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->updateRegistrationForId(Ljava/lang/String;Ljava/lang/String;Landroid/util/JsonReader;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    .line 549
    if-eqz v9, :cond_5

    .line 551
    :try_start_2
    invoke-virtual {v9}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 555
    :cond_5
    :goto_2
    if-eqz v13, :cond_6

    .line 556
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    move-object v8, v9

    .line 547
    .end local v9    # "reader":Landroid/util/JsonReader;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v8    # "reader":Landroid/util/JsonReader;
    :cond_7
    :goto_3
    return v14

    .line 499
    .end local v4    # "academyLogin":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_8
    const-string v14, "0"

    goto/16 :goto_0

    .line 515
    .restart local v4    # "academyLogin":Ljava/lang/String;
    .restart local v5    # "country":Ljava/lang/String;
    .restart local v7    # "locale":Ljava/util/Locale;
    .restart local v11    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_9
    const-string v14, "language"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 516
    const-string/jumbo v14, "region"

    invoke-virtual {v11, v14, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_1

    .line 543
    .restart local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 547
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    const/4 v14, 0x0

    .line 549
    if-eqz v8, :cond_a

    .line 551
    :try_start_3
    invoke-virtual {v8}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 555
    :cond_a
    :goto_5
    if-eqz v13, :cond_7

    .line 556
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_3

    .line 549
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v8, :cond_b

    .line 551
    :try_start_4
    invoke-virtual {v8}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 555
    :cond_b
    :goto_7
    if-eqz v13, :cond_c

    .line 556
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c
    throw v14

    .line 552
    .end local v8    # "reader":Landroid/util/JsonReader;
    .restart local v9    # "reader":Landroid/util/JsonReader;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_1
    move-exception v15

    goto :goto_2

    .end local v9    # "reader":Landroid/util/JsonReader;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "reader":Landroid/util/JsonReader;
    :catch_2
    move-exception v15

    goto :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v15

    goto :goto_7

    .line 549
    .end local v8    # "reader":Landroid/util/JsonReader;
    .restart local v9    # "reader":Landroid/util/JsonReader;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "reader":Landroid/util/JsonReader;
    .restart local v8    # "reader":Landroid/util/JsonReader;
    goto :goto_6

    .line 543
    .end local v8    # "reader":Landroid/util/JsonReader;
    .restart local v9    # "reader":Landroid/util/JsonReader;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9    # "reader":Landroid/util/JsonReader;
    .restart local v8    # "reader":Landroid/util/JsonReader;
    goto :goto_4
.end method

.method private shouldCheckRegistration()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->isPurchased()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mLastCheckTimeSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 273
    .local v2, "timeSinceLastCheck":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateRegistrationForId(Ljava/lang/String;Ljava/lang/String;Landroid/util/JsonReader;)I
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "reader"    # Landroid/util/JsonReader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    const/4 v5, 0x0

    .line 405
    .local v5, "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    const/4 v0, 0x0

    .line 408
    .local v0, "available":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p3}, Landroid/util/JsonReader;->beginObject()V
    :try_end_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .local v6, "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v4, v3

    .line 410
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .local v4, "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 411
    invoke-virtual {p3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "name":Ljava/lang/String;
    const-string v9, "feature_available"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 413
    invoke-virtual {p3}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    :goto_1
    move-object v6, v5

    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v4, v3

    .line 423
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_0

    .line 414
    :cond_0
    const-string/jumbo v9, "promotions"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 415
    new-instance v3, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;

    iget-object v9, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mPromotionSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v3, v9, p1}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/util/MalformedJsonException; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    :try_start_2
    invoke-virtual {v3, p3, p2}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->load(Landroid/util/JsonReader;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/util/MalformedJsonException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    goto :goto_1

    .line 417
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_1
    :try_start_3
    const-string/jumbo v9, "trial"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 418
    new-instance v5, Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    iget-object v9, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v5, v9, p1}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/util/MalformedJsonException; {:try_start_3 .. :try_end_3} :catch_1

    .line 419
    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :try_start_4
    invoke-direct {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getCurrentTimeInSeconds()J

    move-result-wide v10

    invoke-virtual {v5, p3, p2, v10, v11}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->load(Landroid/util/JsonReader;Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/util/MalformedJsonException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_1

    .line 421
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_2
    :try_start_5
    invoke-virtual {p3}, Landroid/util/JsonReader;->skipValue()V

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_1

    .line 425
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_3
    invoke-virtual {p3}, Landroid/util/JsonReader;->endObject()V
    :try_end_5
    .catch Landroid/util/MalformedJsonException; {:try_start_5 .. :try_end_5} :catch_1

    .line 430
    if-eqz v0, :cond_4

    if-nez v4, :cond_5

    :cond_4
    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .line 461
    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    :goto_2
    return v7

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/util/MalformedJsonException;
    :goto_3
    goto :goto_2

    .line 434
    .end local v1    # "e":Landroid/util/MalformedJsonException;
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    .line 435
    iget-object v9, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "featureTrialAvailable"

    iget-boolean v11, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    invoke-virtual {v4}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->save()V

    .line 437
    invoke-virtual {v4}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->isActivated()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 438
    const/16 v7, 0xa

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_2

    .line 441
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_6
    iget-boolean v9, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    if-nez v9, :cond_7

    .line 442
    const/4 v7, -0x2

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_2

    .line 445
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_7
    if-eqz v6, :cond_a

    .line 446
    invoke-virtual {v6}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->notStarted()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 447
    const/4 v7, 0x2

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_2

    .line 450
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_8
    invoke-virtual {v6}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->checkServerValuesValidity()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 451
    invoke-virtual {v6}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->save()V

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    move v7, v8

    .line 452
    goto :goto_2

    .line 455
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_9
    iget-object v9, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 456
    invoke-virtual {v6}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->invalidate()V

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    move v7, v8

    .line 457
    goto :goto_2

    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :cond_a
    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .line 461
    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_2

    .line 426
    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_3

    .end local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .restart local v5    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    goto :goto_3

    .end local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .restart local v3    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    goto :goto_3
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    if-eq v0, p1, :cond_0

    .line 219
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 220
    invoke-interface {p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;->onPurchaseInformationChanged()V

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;->onRegistrationInformationChanged()V

    .line 225
    :cond_0
    return-void
.end method

.method public checkRegistration()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 243
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    iget v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mCurrentDroneCheckResult:I

    goto :goto_0
.end method

.method public checkTrialValid()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 294
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v3, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v2

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    if-nez v2, :cond_2

    .line 306
    const/4 v2, 0x0

    goto :goto_0

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    move-result-object v1

    .line 311
    .local v1, "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    invoke-direct {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getCurrentTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->checkValid(J)I

    move-result v2

    goto :goto_0
.end method

.method public abstract getExecutor()Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getKnownValidIds()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    .local v1, "key":Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "featureTrialAvailable"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mPromotionSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    .restart local v1    # "key":Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 376
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 380
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method protected abstract getLastCheckTimeSharedPrefsName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getPromotionSharedPrefsName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getSerialForId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 385
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mPromotionSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v3, p1}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationPromotion;

    move-result-object v0

    .line 386
    .local v0, "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "serial":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    .end local v1    # "serial":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 390
    .restart local v1    # "serial":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v3, p1}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    move-result-object v2

    .line 391
    .local v2, "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->getSerial()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getTrialFeatureValue()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getTrialRemainingTime()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 339
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v2

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    iget-boolean v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    if-eqz v3, :cond_0

    .line 352
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    move-result-object v1

    .line 354
    .local v1, "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    invoke-direct {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getCurrentTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->getRemainingTime(J)I

    move-result v2

    goto :goto_0
.end method

.method protected abstract getTrialSecurityValue()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getTrialSharedPrefsName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public isPromotionActivated()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mPromotionSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationPromotion;

    move-result-object v1

    .line 332
    .local v1, "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->isActivated()Z

    move-result v2

    goto :goto_0
.end method

.method public abstract isPurchased()Z
.end method

.method public isTrialAvailable()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mTrialAvailable:Z

    return v0
.end method

.method public isTrialValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->checkTrialValid()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performRegistrationCheck()V
    .locals 3

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->shouldCheckRegistration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 280
    :cond_0
    return-void
.end method

.method public abstract purchase(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    if-ne v0, p1, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 231
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInAppManagerListener:Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/InAppManager;->registerListener(Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;)V

    .line 208
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 209
    return-void
.end method

.method public startPromotion(Ljava/lang/String;)V
    .locals 3
    .param p1, "promoCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 315
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    return-void
.end method

.method public startTrial()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;-><init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mInAppManagerListener:Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/InAppManager;->unregisterListener(Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 215
    return-void
.end method

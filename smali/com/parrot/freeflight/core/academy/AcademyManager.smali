.class public Lcom/parrot/freeflight/core/academy/AcademyManager;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/AcademyManager$EmptyRequestListener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$UploadErrorType;
    }
.end annotation


# static fields
.field private static final CREATE_PROFILE:I = 0xc

.field private static final DELETE_PROFILE:I = 0xa

.field private static final REQUEST_AVATAR:I = 0x4

.field private static final REQUEST_CONNECTION:I = 0x1

.field private static final REQUEST_COUNTRY:I = 0x8

.field public static final REQUEST_ID_ERROR:I = -0x1

.field private static final REQUEST_PILOT:I = 0x3

.field private static final REQUEST_PILOT_BY_USERNAME:I = 0xd

.field private static final REQUEST_PROFILE:I = 0x2

.field private static final REQUEST_RESET_PASSWORD:I = 0x6

.field private static final SEND_RUN_BY_EMAIL:I = 0x14

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "academy_shared_preferences"

.field private static final TAG:Ljava/lang/String; = "AcademyManagerTAG"

.field public static final UNREAD_FLIGHT_COUNT_PREF_KEY:Ljava/lang/String; = "unread_flight_count"

.field private static final UPDATE_AVATAR:I = 0x5

.field private static final UPDATE_EMAIL:I = 0xb

.field private static final UPDATE_PROFILE:I = 0x9

.field public static final UPLOAD_ERROR_CONNECTION:I = 0x1

.field public static final UPLOAD_ERROR_SERVICE_DISABLED:I = 0x5

.field public static final UPLOAD_ERROR_SERVICE_INVALID:I = 0x6

.field public static final UPLOAD_ERROR_SERVICE_MISSING:I = 0x2

.field public static final UPLOAD_ERROR_SERVICE_UPDATE_REQUIRED:I = 0x4

.field public static final UPLOAD_ERROR_SERVICE_UPDATING:I = 0x3

.field public static final UPLOAD_ERROR_UNKNOWN:I = -0x1

.field public static final UPLOAD_ERROR_USER_ACTION:I


# instance fields
.field private mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAuthenticationListener:Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

.field private final mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCountryList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOffLineListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProfileListener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunningRequests:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUnreadFlightCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;Lcom/parrot/freeflight/network/InternetStatusManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userSettings"    # Lcom/parrot/freeflight/user/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "authenticationManager"    # Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "internetStatusManager"    # Lcom/parrot/freeflight/network/InternetStatusManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListeners:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;

    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$1;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$2;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationListener:Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    .line 199
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$3;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfileListener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    .line 766
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$12;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$12;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mOffLineListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    .line 224
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-string v1, "academy_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunningRequests:Ljava/util/List;

    .line 228
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .line 229
    new-instance v0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-direct {v0, p1, p2}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    .line 230
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 231
    iput-object p4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    .line 232
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    return-void
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/academy/AcademyManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mUnreadFlightCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/core/academy/AcademyManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mUnreadFlightCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/academy/AcademyManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunningRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object p1
.end method

.method private buildErrorMessage(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;)Ljava/lang/String;
    .locals 3
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "academyErrors"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v2, 0x7f11004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    :goto_0
    return-object v0

    .line 586
    :cond_1
    if-eqz p2, :cond_0

    .line 587
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getAcademyErrorMsg(Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static checkEmailErrorMessage(Ljava/lang/String;)I
    .locals 2
    .param p0, "originMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "errorResId":I
    if-eqz p0, :cond_0

    .line 636
    const-string v1, "21001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    const v0, 0x7f110050

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    const-string v1, "21002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const v0, 0x7f11004e

    goto :goto_0
.end method

.method private static checkGeneralErrorMessage(Ljava/lang/String;)I
    .locals 2
    .param p0, "originMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "errorResId":I
    if-eqz p0, :cond_0

    .line 619
    const-string v1, "10001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    const v0, 0x7f110054

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    const-string v1, "10002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    const v0, 0x7f110053

    goto :goto_0

    .line 623
    :cond_2
    const-string v1, "10010"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    const v0, 0x7f110055

    goto :goto_0

    .line 625
    :cond_3
    const-string v1, "20001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "20002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "22002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    :cond_4
    const v0, 0x7f11004d

    goto :goto_0
.end method

.method private getAcademyErrorMsg(Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;)Ljava/lang/String;
    .locals 10
    .param p1, "academyErrors"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkGeneralErrorMessage(Ljava/lang/String;)I

    move-result v3

    .line 596
    .local v3, "userNameError":I
    if-eqz v3, :cond_0

    .line 597
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v7, 0x7f110060

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkGeneralErrorMessage(Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, "passwordError":I
    if-eqz v1, :cond_1

    .line 601
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v7, 0x7f11005c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkGeneralErrorMessage(Ljava/lang/String;)I

    move-result v0

    .line 604
    .local v0, "emailError":I
    if-eqz v0, :cond_3

    .line 605
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v7, 0x7f110094

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 607
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkEmailErrorMessage(Ljava/lang/String;)I

    move-result v0

    .line 608
    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private notifyListener()V
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 576
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;->onChange()V

    goto :goto_0

    .line 578
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    :cond_0
    return-void
.end method

.method private onNetworkChanged(Z)V
    .locals 3
    .param p1, "internetAvailable"    # Z

    .prologue
    .line 646
    const-string v0, "AcademyManagerTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network available : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->onNetworkChanged(Z)V

    .line 648
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->onNetworkChanged(Z)V

    .line 649
    return-void
.end method

.method private setUnreadFlightCount(I)V
    .locals 2
    .param p1, "unreadFlightCount"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$9;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$9;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method


# virtual methods
.method public cancelAllRequests()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->cancelAllRequests()V

    .line 270
    :cond_0
    return-void
.end method

.method public deleteProfile(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 303
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_0

    .line 304
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 305
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$5;

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$5;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthDeleteProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteProfileListener;)I

    goto :goto_0
.end method

.method public getAvatar()Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method public getDroneRegisterManager()Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    return-object v0
.end method

.method public getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    return-object v0
.end method

.method public getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadFlightCount()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mUnreadFlightCount:I

    return v0
.end method

.method public incrementUnreadFlightCount()V
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mUnreadFlightCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setUnreadFlightCount(I)V

    .line 475
    return-void
.end method

.method public onInternetStatusChanged(Z)V
    .locals 0
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->onNetworkChanged(Z)V

    .line 197
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 566
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 568
    return-void
.end method

.method public removeAllRun()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->removeAllRun()V

    .line 483
    return-void
.end method

.method public removeRun(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 478
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->removeRun(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public requestAllCountry(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    .line 517
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 518
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 520
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 543
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_1

    .line 525
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 526
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$11;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$11;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncGetAllCountry(Lcom/parrot/freeflight/core/academy/listener/ARAcademyGetAllCountryListener;)I

    goto :goto_0
.end method

.method public requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 364
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 365
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 367
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 373
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    if-eqz v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->addListener(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0

    .line 380
    :cond_2
    const/4 v0, 0x0

    .line 381
    .local v0, "avatarUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    if-eqz v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_3
    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    invoke-direct {v2, p0, p1, v5}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;I)V

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .line 385
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 430
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 431
    return-void
.end method

.method public requestOtherUserAvatar(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "pilot"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 391
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;

    move-result-object v2

    if-nez v2, :cond_0

    .line 392
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 393
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_BAD_PARAMETER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 394
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    .end local v0    # "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    :goto_0
    return-void

    .line 398
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    invoke-direct {v1, p0, p2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;I)V

    .line 399
    .local v1, "task":Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public requestPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 495
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 496
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_0

    .line 497
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 498
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$10;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$10;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, p1, v2}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthGetPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotByUsernameListener;)I

    goto :goto_0
.end method

.method public requestProfile()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfileListener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthGetProfile(Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;)I

    .line 276
    :cond_0
    return-void
.end method

.method public resetUnreadFlightCount()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setUnreadFlightCount(I)V

    .line 468
    return-void
.end method

.method public sendRunByEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 345
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_0

    .line 346
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 347
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v2

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$7;

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$7;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthPostRunToEmail(ILcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunToEmailListener;)I

    goto :goto_0
.end method

.method public setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 561
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 562
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 563
    return-void
.end method

.method public setProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 551
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    .line 552
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 553
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "unread_flight_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mUnreadFlightCount:I

    .line 238
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyService;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationListener:Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->addListener(Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->start()V

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mOffLineListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->registerListener(Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;)V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->start()V

    .line 246
    return-void
.end method

.method public startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 759
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 760
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stop()V

    .line 250
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    .line 251
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 252
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyService;->cancelAllRequests()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAuthenticationListener:Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->removeListener(Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;)V

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->stop()V

    .line 259
    return-void
.end method

.method public stopPudDownload()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopPudDownload()V

    .line 764
    return-void
.end method

.method public syncRunList()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkAcademyServer()V

    .line 427
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 571
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public updateAvatar(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "picturePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 405
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_0

    .line 406
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 407
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->clearCache(Landroid/content/Context;)V

    .line 414
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$8;

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$8;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthUpdateAvatar(Ljava/io/File;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateAvatarListener;)I

    goto :goto_0
.end method

.method public updateEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "email"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 324
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_0

    .line 325
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 326
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$6;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$6;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, p1, v2}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthUpdateEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthUpdateEmailListener;)I

    goto :goto_0
.end method

.method public updateProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 4
    .param p1, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 282
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-nez v1, :cond_0

    .line 283
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 284
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$4;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthSetProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;)I

    goto :goto_0
.end method

.method public updateRunGrade(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grade"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->updateRunGrade(Ljava/lang/String;IZ)V

    .line 487
    return-void
.end method

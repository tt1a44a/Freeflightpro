.class public Lcom/parrot/freeflight/core/AutoLaunchManager;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;,
        Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;,
        Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;
    }
.end annotation


# static fields
.field public static final KEY_INTERNET_NEEDED:Ljava/lang/String; = "internet_needed"

.field private static final TAG:Ljava/lang/String; = "AutoLaunchManager"


# instance fields
.field private mAppVisible:Z

.field private mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneConnectionProtocolEnded:Z

.field private final mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneFlyingState:I

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHomeActivityLoaded:Z

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRemoteCtrlState:I

.field private mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserDrone:Lcom/parrot/freeflight/user/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserDroneState:I

.field private mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserSettings:Lcom/parrot/freeflight/user/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 2
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "userSettings"    # Lcom/parrot/freeflight/user/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "authenticationManager"    # Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    .line 100
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$1;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 110
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$2;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$3;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 137
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$4;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 165
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$5;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 177
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$6;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 196
    iput-object p2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    .line 197
    iput-object p8, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 198
    iput-object p9, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 200
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$7;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$7;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 209
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$8;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnCurrentActivityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;)V

    .line 222
    iput-object p3, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    .line 223
    iput-object p4, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 224
    iput-object p5, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 225
    invoke-virtual {p6}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getDroneRegisterManager()Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneRegisterManager:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    .line 226
    iput-object p7, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 227
    new-instance v0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    .line 228
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    .line 229
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    .line 230
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->onDroneModelChanged(Lcom/parrot/freeflight/core/model/Model;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/AutoLaunchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkRemoteFirmware()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkAutoLaunch()V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/core/AutoLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mAppVisible:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/parrot/freeflight/core/AutoLaunchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mAppVisible:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/parrot/freeflight/core/AutoLaunchManager;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mCurrentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkProductsFirmware()V

    return-void
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mHomeActivityLoaded:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/parrot/freeflight/core/AutoLaunchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mHomeActivityLoaded:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/AutoLaunchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/AutoLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectionProtocolEnded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/AutoLaunchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectionProtocolEnded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/user/UserDrone;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserDrone;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/AutoLaunchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkWifiCountry()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkDroneFirmware()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkVideoStreamMode()V

    return-void
.end method

.method private checkAutoLaunch()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->isNeedAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->tryLauncher(Lcom/parrot/freeflight/core/AutoLaunchChecker;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->isNeedAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->tryLauncher(Lcom/parrot/freeflight/core/AutoLaunchChecker;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->isNeedAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->tryLauncher(Lcom/parrot/freeflight/core/AutoLaunchChecker;)V

    goto :goto_0
.end method

.method private checkDroneFirmware()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 351
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->connectionProtocolEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2500(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;)V

    .line 357
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    goto :goto_0
.end method

.method private checkProductsFirmware()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkDroneFirmware()V

    .line 345
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkRemoteFirmware()V

    .line 346
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkAutoLaunch()V

    .line 347
    return-void
.end method

.method private checkRemoteFirmware()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 360
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2602(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2500(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;)V

    .line 368
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2602(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    goto :goto_0
.end method

.method private checkVideoStreamMode()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getVideoStreamMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setVideoStreamMode(I)V

    .line 386
    :cond_0
    return-void
.end method

.method private checkWifiCountry()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getWifiLocalisationState()Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->needSetWifiCountry(Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;)Z

    move-result v0

    .line 377
    .local v0, "wifiCountryNeedSet":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->setCondition(Z)V

    .line 378
    return-void

    .line 375
    .end local v0    # "wifiCountryNeedSet":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "wifiCountryNeedSet":Z
    goto :goto_0
.end method

.method private needSetWifiCountry(Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;)Z
    .locals 3
    .param p1, "wifiState"    # Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 395
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDroneState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInAutoCountryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->getWifiCountry()Lcom/parrot/freeflight/piloting/model/WifiCountry;

    move-result-object v0

    .line 397
    .local v0, "wifiCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    sget-object v1, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_US:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_CANADA:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_ISRAEL:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    if-eq v0, v1, :cond_0

    .line 398
    const/4 v1, 0x1

    .line 401
    .end local v0    # "wifiCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDroneModelChanged(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 3
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 329
    :cond_0
    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "droneModel":Lcom/parrot/freeflight/core/model/Model;
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->reset()V

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$2402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    .line 333
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectionProtocolEnded:Z

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkWifiCountry()V

    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->access$1400(Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;)V

    .line 339
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkAutoLaunch()V

    .line 341
    :cond_1
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 254
    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mCurrentActivity:Landroid/app/Activity;

    .line 255
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mHomeActivityLoaded:Z

    .line 256
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mAppVisible:Z

    .line 257
    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 258
    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    .line 259
    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->reset()V

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->reset()V

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->reset()V

    .line 263
    return-void
.end method

.method private tryLauncher(Lcom/parrot/freeflight/core/AutoLaunchChecker;)V
    .locals 6
    .param p1, "checker"    # Lcom/parrot/freeflight/core/AutoLaunchChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 302
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->isNeedAutoLaunch()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mHomeActivityLoaded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mAppVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchType(Landroid/app/Activity;)I

    move-result v1

    .line 304
    .local v1, "launchType":I
    const-string v2, "AutoLaunchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", AutoLaunchChecker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    packed-switch v1, :pswitch_data_0

    .line 323
    .end local v1    # "launchType":I
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local v1    # "launchType":I
    :pswitch_0
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setNeedAutoLaunch(Z)V

    .line 308
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 310
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setCondition(Z)V

    goto :goto_0

    .line 316
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setNeedAutoLaunch(Z)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public copyAssetsEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyAssetsEmbeddedFirmwares "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 268
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getEmbeddedFirmwareCopyExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    goto :goto_0
.end method

.method public extractObbEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractEmbeddedFirmwaresFromExpansions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getEmbeddedFirmwareCopyExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    goto :goto_0
.end method

.method public getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    return-object v0
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->isConditionMet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mWifiCountryChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$WifiCountryChecker;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->isConditionMet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->isConditionMet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvModeChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAssetsEmbeddedFirmwareCopyListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAssetsEmbeddedFirmwareCopyListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->removeOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 281
    :cond_0
    return-void
.end method

.method public removeObbEmbeddedFirmwaresExtractionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 295
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeObbEmbeddedFirmwaresExtractionListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mObbEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->removeOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.parrot.freeflight3.blacklist_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 241
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->reset()V

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mRemoteCtrlListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 250
    return-void
.end method

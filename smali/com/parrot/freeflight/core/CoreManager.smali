.class public Lcom/parrot/freeflight/core/CoreManager;
.super Ljava/lang/Object;
.source "CoreManager.java"


# static fields
.field private static mInstance:Lcom/parrot/freeflight/core/CoreManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBarometer:Lcom/parrot/freeflight/location/Barometer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInAppManager:Lcom/parrot/freeflight/core/InAppManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMacgyverUploaderManager:Lcom/parrot/freeflight/sync/MacgyverUploaderManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSensorsPolicy:Lcom/parrot/freeflight/location/SensorsPolicy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStarted:Z

.field private final mUncaughtExceptionController:Lcom/parrot/freeflight/core/UncaughtExceptionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/user/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ApplicationManager;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljonathanfinerty/once/Once;->initialise(Landroid/content/Context;)V

    .line 128
    new-instance v0, Lcom/parrot/freeflight/core/UsbAccessoryManager;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/UsbAccessoryManager;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;

    .line 129
    new-instance v0, Lcom/parrot/freeflight/user/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    .line 130
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 131
    new-instance v0, Lcom/parrot/freeflight/core/UncaughtExceptionController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/UncaughtExceptionController;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUncaughtExceptionController:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    .line 132
    new-instance v0, Lcom/parrot/freeflight/core/ScreenConfiguration;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    .line 133
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ScreenConfiguration;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .line 134
    new-instance v0, Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 135
    new-instance v0, Lcom/parrot/freeflight/location/Barometer;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/location/Barometer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    .line 136
    new-instance v0, Lcom/parrot/freeflight/offer/OfferManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/offer/OfferManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    .line 137
    new-instance v0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 138
    new-instance v0, Lcom/parrot/freeflight/network/InternetStatusManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    .line 139
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;Lcom/parrot/freeflight/network/InternetStatusManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 140
    new-instance v0, Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 141
    new-instance v0, Lcom/parrot/freeflight/core/BitmapCache;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/BitmapCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    .line 142
    new-instance v0, Lcom/parrot/freeflight/core/FollowMeManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/FollowMeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    .line 143
    new-instance v0, Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v6, p0, Lcom/parrot/freeflight/core/CoreManager;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/core/model/ModelStore;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 144
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/model/ModelStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 145
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/core/DeviceConnector;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/user/UserSettings;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 146
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/location/SensorsPolicy;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/FollowMeManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mSensorsPolicy:Lcom/parrot/freeflight/location/SensorsPolicy;

    .line 147
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/blackbox/BlackboxManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .line 148
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v4, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v5, p0, Lcom/parrot/freeflight/core/CoreManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    iget-object v6, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v7, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v8, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v9, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-object v1, p2

    invoke-direct/range {v0 .. v9}, Lcom/parrot/freeflight/core/AutoLaunchManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 150
    new-instance v0, Lcom/parrot/freeflight/core/InAppManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/InAppManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    .line 151
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .line 152
    new-instance v0, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/InAppManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 153
    new-instance v0, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/InAppManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    .line 154
    new-instance v0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/core/CoreManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/InAppManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    .line 155
    new-instance v0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mMacgyverUploaderManager:Lcom/parrot/freeflight/sync/MacgyverUploaderManager;

    .line 156
    new-instance v0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    .line 158
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .line 162
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 165
    new-instance v0, Lcom/parrot/freeflight/core/CoreManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/CoreManager$1;-><init>(Lcom/parrot/freeflight/core/CoreManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_1
    iput-object v10, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 183
    iput-object v10, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/CoreManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/CoreManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/CoreManager;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/CoreManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    return-object v0
.end method

.method public static create(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    const-class v1, Lcom/parrot/freeflight/core/CoreManager;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/CoreManager;->mInstance:Lcom/parrot/freeflight/core/CoreManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/core/ApplicationManager;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/core/ApplicationManager;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v2, v3}, Lcom/parrot/freeflight/core/CoreManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ApplicationManager;)V

    sput-object v0, Lcom/parrot/freeflight/core/CoreManager;->mInstance:Lcom/parrot/freeflight/core/CoreManager;

    .line 117
    :cond_0
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/parrot/freeflight/core/CoreManager;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/parrot/freeflight/core/CoreManager;->mInstance:Lcom/parrot/freeflight/core/CoreManager;

    return-object v0
.end method


# virtual methods
.method public getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    return-object v0
.end method

.method public getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    return-object v0
.end method

.method public getBarometer()Lcom/parrot/freeflight/location/Barometer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    return-object v0
.end method

.method public getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    return-object v0
.end method

.method public getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    return-object v0
.end method

.method public getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    return-object v0
.end method

.method public getDiscoveryManager()Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    return-object v0
.end method

.method public getFlightDirectorManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    return-object v0
.end method

.method public getFlightDirectorRegistrationManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    return-object v0
.end method

.method public getFlightPlanManager()Lcom/parrot/freeflight/flightplan/FlightPlanManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    return-object v0
.end method

.method public getFlightPlanRegistrationManager()Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    return-object v0
.end method

.method public getFollowMeManager()Lcom/parrot/freeflight/core/FollowMeManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    return-object v0
.end method

.method public getFollowMeRegistrationManager()Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    return-object v0
.end method

.method public getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method public getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    return-object v0
.end method

.method public getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    return-object v0
.end method

.method public getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    return-object v0
.end method

.method public getOfferManager()Lcom/parrot/freeflight/offer/OfferManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    return-object v0
.end method

.method public getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    return-object v0
.end method

.method public getUserSettings()Lcom/parrot/freeflight/user/UserSettings;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    return-object v0
.end method

.method public getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    return-object v0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    if-nez v1, :cond_1

    .line 194
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->start()V

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->start()V

    .line 197
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->start()V

    .line 198
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->start()V

    .line 199
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mUncaughtExceptionController:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/UncaughtExceptionController;->start()V

    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;->start()V

    .line 201
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->start()V

    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->start()V

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->start()V

    .line 204
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->start()V

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/offer/OfferManager;->start()V

    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->start()V

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/InAppManager;->start()V

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->start()V

    .line 209
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->start()V

    .line 210
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->start()V

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->start()V

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->start()V

    .line 214
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->start()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mMacgyverUploaderManager:Lcom/parrot/freeflight/sync/MacgyverUploaderManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->start()V

    .line 219
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 222
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 225
    .end local v0    # "request":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method public startMux()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/UsbAccessoryManager;->startMux(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mStarted:Z

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBlackboxManager:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->stop()V

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->stop()V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->stop()V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->close()V

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->stop()V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->close()V

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->stop()V

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->stop()V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mInternetStatusManager:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/network/InternetStatusManager;->stop()V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/offer/OfferManager;->stop()V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->close()V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/BitmapCache;->clear()V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mUsbAccessoryManager:Lcom/parrot/freeflight/core/UsbAccessoryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/UsbAccessoryManager;->stop()V

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->stop()V

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/InAppManager;->stop()V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->stop()V

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->stop()V

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->stop()V

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->stop()V

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->stop()V

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mMacgyverUploaderManager:Lcom/parrot/freeflight/sync/MacgyverUploaderManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->stop()V

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/CoreManager;->mConnectivityManagerNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 255
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->stop()V

    .line 259
    :cond_1
    return-void
.end method

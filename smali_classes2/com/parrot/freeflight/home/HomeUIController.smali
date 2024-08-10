.class public Lcom/parrot/freeflight/home/HomeUIController;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;,
        Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;,
        Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;
    }
.end annotation


# static fields
.field private static final BATTERY_LOW_LEVEL:I = 0x14

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "DIALOG_FRAGMENT_TAG"

.field private static final DIMENSION_100_PERCENT:F = 1.0f

.field private static final DIMENSION_65_PERCENT:F = 0.65f

.field public static final DRONE_NAME_EXTRA_KEY:Ljava/lang/String; = "DroneNameText"

.field private static final DRONE_SCHOOL_URL:Ljava/lang/String; = "http://www.parrot.com/%s/drones-tutorial/bebop/"

.field private static final DRONE_STORE_URL:Ljava/lang/String; = "http://www.parrot.com/%s/buy/bebopdrone/"

.field private static final FREEFLIGHT_JUMPING_PACKAGE_NAME:Ljava/lang/String; = "com.parrot.freeflightjumping"

.field private static final FREEFLIGHT_MINIDRONE_PACKAGE_NAME:Ljava/lang/String; = "com.parrot.freeflight4mini"

.field private static final HOME_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "HomePref"

.field private static final KEY_APP_REDIRECTION_DIALOG_TO_CHECK:Ljava/lang/String; = "KEY_APP_REDIRECTION_DIALOG_TO_CHECK"

.field private static final MEDIA_AVAILABLE_SNACK_BAR_DURATION_MS:I = 0x1388

.field private static final MEGABYTE_LIMIT_DISPLAY:I = 0x64

.field private static final MEGABYTE_TO_GIBABYTE_DIVISER:I = 0x400

.field private static final MEMORY_SPACE_HIGHT_LIMIT_PERCENTAGE:I = 0x4b

.field private static final MEMORY_SPACE_LOW_LIMIT_PERCENTAGE:I = 0x19

.field private static final NOTIFICATION_UPDATE_DELAY:I = 0x1388

.field private static final NO_DATA_DISPLAYED:Ljava/lang/String; = "-"

.field private static final REQUEST_ACADEMY_CONNECTION_FOR_MY_FLIGHTS:I = 0x3

.field private static final REQUEST_ACADEMY_CONNECTION_FOR_PROFILE:I = 0x4

.field private static final REQUEST_FLIGHT_PLAN_START_TRIAL:I = 0x2

.field private static final REQUEST_FOLLOW_ME_START_TRIAL:I = 0x1

.field private static final SAVED_STATE_WPA2_DEVICE:Ljava/lang/String; = "SAVED_STATE_WPA2_DEVICE"

.field public static final TRANSITION_NAME:Ljava/lang/String; = "DroneName"

.field private static final TWO_REMOTES_CTRL_COUNT:Ljava/lang/String; = "2"

.field private static final UNREAD_FLIGHT_COUNT_LARGE_TEXT:Ljava/lang/String; = "+99"

.field private static final UNREAD_FLIGHT_COUNT_LIMIT:I = 0x63


# instance fields
.field private final STATUS_BAR_ALERT_COLOR:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mActivityWindow:Landroid/view/Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectingStatusTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDialog:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/home/Wpa2DialogFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

.field private mDeviceConnectorState:I

.field private final mDrawer:Landroid/support/v4/widget/DrawerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneCalibrationImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneConnectionInfoListSorter:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneConnectionLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneDisconnectedLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneInfoLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneLastPositionImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneMemorySpaceImageView:Lcom/parrot/freeflight/view/PieChart;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneMemorySpaceLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneMemorySpaceTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneStateInfoLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneUpdateTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneWifiSignalLayout:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEphemerisUploadManager:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardBackgroundView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardInappSubtitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstCardTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlyingState:I

.field private final mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private final mGamePadStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInAppNotificationManager:Lcom/parrot/freeflight/notification/InAppNotificationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

.field private final mMyFlightsButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMyParrotAvatarImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMyParrotHeaderView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMyParrotLoginButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMyParrotUserInfo:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMyParrotUsernameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNavigationFooterView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNavigationView:Landroid/support/design/widget/NavigationView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNotificationBar:Lcom/parrot/freeflight/view/NotificationBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPaused:Z

.field private final mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRcControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private mRcReceiverState:I

.field private final mRemoteCtrlCalibrationImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteCtrlConnectorState:I

.field private final mRemoteCtrlImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlInfosTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlUpdateTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteWifiChangeListener:Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRssi:S

.field private final mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCardBackgroundView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCardImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondCardTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private final mSkyControllerAuthFailedListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdCardBackgroundView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdCardImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdCardInappSubtitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdCardSubtitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdCardTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mToolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTotalSizeInMByte:I

.field private mUnreadFlightCount:I

.field private final mUnreadFlightTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUnreadMediaCount:I

.field private final mUnreadMediaTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUsedSizeInMByte:I

.field private mUserDrone:Lcom/parrot/freeflight/user/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

.field private mVideoStreamingView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWifiDeviceProvider:Lcom/parrot/freeflight/wifi/WifiDeviceProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWifiListView:Lcom/parrot/freeflight/home/WifiListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWpa2DialogListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/util/PermissionChecker;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "navigationView"    # Landroid/support/design/widget/NavigationView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "drawer"    # Landroid/support/v4/widget/DrawerLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 503
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const v11, 0x7f0500b5

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->STATUS_BAR_ALERT_COLOR:I

    .line 355
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFlyingState:I

    .line 385
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mTotalSizeInMByte:I

    .line 387
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUsedSizeInMByte:I

    .line 389
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput-short v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRssi:S

    .line 390
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaCount:I

    .line 396
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightCount:I

    .line 398
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    .line 400
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlConnectorState:I

    .line 403
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRcReceiverState:I

    .line 421
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$2;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 466
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$3;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 982
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$24;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$24;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2DialogListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    .line 1718
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$27;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$27;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 1739
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$28;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$28;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 1800
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/home/HomeUIController$1;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

    .line 1860
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$29;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$29;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 1887
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$30;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$30;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 1894
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$31;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$31;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 1911
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$32;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$32;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerAuthFailedListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

    .line 1926
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$33;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$33;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 2276
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$38;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$38;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    .line 504
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    .line 506
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    .line 507
    .local v3, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 508
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 509
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 510
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 511
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .line 512
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mActivityWindow:Landroid/view/Window;

    .line 513
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 514
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    .line 515
    const v11, 0x7f0a034a

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/support/design/widget/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/NavigationView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    .line 516
    const v11, 0x7f0a034b

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/support/design/widget/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationFooterView:Landroid/widget/TextView;

    .line 517
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 518
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 519
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 520
    new-instance v11, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mEphemerisUploadManager:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    .line 521
    new-instance v11, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    invoke-direct {v11}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionInfoListSorter:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    .line 523
    new-instance v11, Lcom/parrot/freeflight/notification/InAppNotificationManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getOfferManager()Lcom/parrot/freeflight/offer/OfferManager;

    move-result-object v13

    .line 524
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Lcom/parrot/freeflight/notification/InAppNotificationManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/offer/OfferManager;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mInAppNotificationManager:Lcom/parrot/freeflight/notification/InAppNotificationManager;

    .line 526
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getFollowMeRegistrationManager()Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 527
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getFollowMeManager()Lcom/parrot/freeflight/core/FollowMeManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    .line 528
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanRegistrationManager()Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    .line 530
    const v11, 0x7f0a04cd

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 531
    .local v9, "toolBarTitleTextView":Landroid/widget/TextView;
    const v11, 0x7f0a04ce

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 532
    .local v8, "toolBarTitleExtendedTextView":Landroid/widget/TextView;
    const v11, 0x7f0a049c

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 533
    .local v6, "notConnectedTextView":Landroid/widget/TextView;
    const v11, 0x7f0a03c2

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 535
    const v11, 0x7f0a0276

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneInfoLayout:Landroid/widget/RelativeLayout;

    .line 536
    const v11, 0x7f0a0278

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStateInfoLayout:Landroid/widget/LinearLayout;

    .line 537
    const v11, 0x7f0a0275

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneDisconnectedLayout:Landroid/widget/LinearLayout;

    .line 538
    const v11, 0x7f0a0274

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionLayout:Landroid/widget/RelativeLayout;

    .line 539
    const v11, 0x7f0a0446

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectingStatusTextView:Landroid/widget/TextView;

    .line 540
    const v11, 0x7f0a0443

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectTextView:Landroid/widget/TextView;

    .line 541
    const v11, 0x7f0a01dd

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    .line 542
    const v11, 0x7f0a051e

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/home/WifiListView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    .line 543
    const v11, 0x7f0a0455

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/view/UnclickableEditText;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    .line 544
    const v11, 0x7f0a0456

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    .line 545
    const v11, 0x7f0a02a4

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceLayout:Landroid/widget/RelativeLayout;

    .line 546
    const v11, 0x7f0a0208

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/view/PieChart;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceImageView:Lcom/parrot/freeflight/view/PieChart;

    .line 547
    const v11, 0x7f0a048e

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    .line 548
    const v11, 0x7f0a04d3

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    .line 549
    const v11, 0x7f0a01f8

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneLastPositionImage:Landroid/widget/ImageView;

    .line 550
    const v11, 0x7f0a01d5

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneCalibrationImage:Landroid/widget/ImageView;

    .line 551
    const v11, 0x7f0a01de

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    .line 552
    const v11, 0x7f0a0435

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    .line 553
    const v11, 0x7f0a0279

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneWifiSignalLayout:Landroid/widget/FrameLayout;

    .line 554
    const v11, 0x7f0a01e4

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/home/widget/WifiSignalView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    .line 556
    const v11, 0x7f0a02ad

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/view/NotificationBar;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationBar:Lcom/parrot/freeflight/view/NotificationBar;

    .line 559
    const v11, 0x7f0a03c4

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 560
    const v11, 0x7f0a021a

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlImageView:Landroid/widget/ImageView;

    .line 563
    const v11, 0x7f0a02be

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlLayout:Landroid/widget/LinearLayout;

    .line 564
    const v11, 0x7f0a021b

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlCalibrationImageView:Landroid/widget/ImageView;

    .line 565
    const v11, 0x7f0a04b1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlUpdateTextView:Landroid/widget/TextView;

    .line 566
    const v11, 0x7f0a04af

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    .line 568
    const v11, 0x7f0a00cc

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 569
    const v11, 0x7f0a051f

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardBackgroundView:Landroid/view/View;

    .line 570
    const v11, 0x7f0a0460

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    .line 571
    const v11, 0x7f0a01e5

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    .line 572
    const v11, 0x7f0a045f

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    .line 574
    const v11, 0x7f0a00cd

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 575
    const v11, 0x7f0a0524

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    .line 576
    const v11, 0x7f0a04b5

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardTextView:Landroid/widget/TextView;

    .line 577
    const v11, 0x7f0a021d

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    .line 579
    const v11, 0x7f0a00ce

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 580
    const v11, 0x7f0a0526

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardBackgroundView:Landroid/view/View;

    .line 581
    const v11, 0x7f0a04c4

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardTextView:Landroid/widget/TextView;

    .line 582
    const v11, 0x7f0a04c3

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardSubtitle:Landroid/widget/TextView;

    .line 583
    const v11, 0x7f0a0221

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardImageView:Landroid/widget/ImageView;

    .line 584
    const v11, 0x7f0a04c2

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardInappSubtitle:Landroid/widget/TextView;

    .line 586
    const v11, 0x7f0a00c1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyFlightsButton:Landroid/view/View;

    .line 587
    const v11, 0x7f0a04d2

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    .line 589
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 590
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 591
    .local v7, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotHeaderView:Landroid/view/View;

    .line 592
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotHeaderView:Landroid/view/View;

    const v12, 0x7f0a009c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotLoginButton:Landroid/widget/Button;

    .line 593
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotHeaderView:Landroid/view/View;

    const v12, 0x7f0a02ac

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUserInfo:Landroid/view/View;

    .line 594
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotHeaderView:Landroid/view/View;

    const v12, 0x7f0a0496

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUsernameTextView:Landroid/widget/TextView;

    .line 595
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotHeaderView:Landroid/view/View;

    const v12, 0x7f0a0210

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotAvatarImageView:Landroid/widget/ImageView;

    .line 596
    const v11, 0x7f070064

    invoke-static {v7, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 597
    .local v4, "defaultAvatar":Landroid/graphics/Bitmap;
    const v11, 0x7f0602c8

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    .line 598
    .local v2, "bitmapSize":I
    invoke-static {v4, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 599
    invoke-static {v7, v4}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 600
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const v12, 0x7f0602c8

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 601
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 603
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotAvatarImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotLoginButton:Landroid/widget/Button;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$4;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUserInfo:Landroid/view/View;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$5;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    new-instance v11, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Z)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteWifiChangeListener:Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;

    .line 637
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiDeviceProvider:Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    .line 639
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$6;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$7;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$8;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/view/UnclickableEditText;->setOnActionListener(Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceLayout:Landroid/widget/RelativeLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$9;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyFlightsButton:Landroid/view/View;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$10;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$10;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStatusBar:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$11;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$11;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$12;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionLayout:Landroid/widget/RelativeLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$13;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$13;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$14;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$14;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/home/WifiListView;->setOnVisibilityChangeListener(Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$15;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/home/WifiListView;->setOnAnimationListener(Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$16;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$16;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/home/WifiListView;->setOnDeviceClickListener(Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$17;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$17;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/home/WifiListView;->setOnForgetDroneClickListener(Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$18;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$18;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/home/WifiListView;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$19;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$19;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$20;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$20;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$21;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$21;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationBar:Lcom/parrot/freeflight/view/NotificationBar;

    new-instance v12, Lcom/parrot/freeflight/home/HomeUIController$22;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/parrot/freeflight/home/HomeUIController$22;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/view/NotificationBar;->setListener(Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;)V

    .line 891
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationHandler:Landroid/os/Handler;

    .line 895
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v11}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v11

    const v12, 0x7f0a0344

    invoke-interface {v11, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 897
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationFooterView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v13, 0x7f1100b6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "5.2.7"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v13, 0x7f050103

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v13, 0x7f05013c

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/home/HomeUIController;->applyFontToMenu()V

    .line 903
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 906
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyFlightsButton:Landroid/view/View;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneDisconnectedLayout:Landroid/widget/LinearLayout;

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectingStatusTextView:Landroid/widget/TextView;

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 910
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    const/4 v13, 0x3

    invoke-static {v11, v12, v13}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 915
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardTextView:Landroid/widget/TextView;

    const/4 v13, 0x3

    invoke-static {v11, v12, v13}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardTextView:Landroid/widget/TextView;

    const/4 v13, 0x3

    invoke-static {v11, v12, v13}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardSubtitle:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardInappSubtitle:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotLoginButton:Landroid/widget/Button;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUsernameTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlUpdateTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationFooterView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectTextView:Landroid/widget/TextView;

    invoke-static {v11, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v11}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    const-string v12, "DIALOG_FRAGMENT_TAG"

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 932
    .local v5, "dialogFragment":Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_0

    move-object v10, v5

    .line 933
    check-cast v10, Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    .line 934
    .local v10, "wpa2DialogFragment":Lcom/parrot/freeflight/home/Wpa2DialogFragment;
    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    .line 935
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2DialogListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    invoke-virtual {v10, v11}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->setListener(Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;)V

    .line 938
    .end local v10    # "wpa2DialogFragment":Lcom/parrot/freeflight/home/Wpa2DialogFragment;
    :cond_0
    if-eqz p2, :cond_1

    .line 939
    const-string v11, "SAVED_STATE_WPA2_DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 942
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/home/HomeUIController;->checkAppRedirection()V

    .line 943
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/HomeUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/home/HomeUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onStatusBarClicked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onMyFlightsClicked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onGamePadStatusBarClicked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onFirstCardClicked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->handleWifiSelectionClick()V

    return-void
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/home/HomeUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlConnectorState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/parrot/freeflight/home/HomeUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlConnectorState:I

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/DroneModel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;
    .param p2, "x2"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneStatusBar(Lcom/parrot/freeflight/core/model/DroneModel;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiDeviceProvider:Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/WifiDeviceProvider;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiDeviceProvider:Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->switchCardVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->createAskPasswordDialog(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onSecondCardClicked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->onThirdCardClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateRemoteCtrlStatusBar()V

    return-void
.end method

.method static synthetic access$3000(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startFlightPlanIfPossible()V

    return-void
.end method

.method static synthetic access$3100(Lcom/parrot/freeflight/home/HomeUIController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDroneSchoolUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/parrot/freeflight/home/HomeUIController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDroneStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/notification/InAppNotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mInAppNotificationManager:Lcom/parrot/freeflight/notification/InAppNotificationManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/NotificationBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationBar:Lcom/parrot/freeflight/view/NotificationBar;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/util/PermissionChecker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->onAppRedirectionClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateMyParrotHeaderView()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateThirdCard()V

    return-void
.end method

.method static synthetic access$4000(Lcom/parrot/freeflight/home/HomeUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->updateUnreadFlightCount(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/user/UserDrone;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserDrone;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->dismissWpa2Dialog()V

    return-void
.end method

.method static synthetic access$4400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mEphemerisUploadManager:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showLastMediasTakenSnackbar()V

    return-void
.end method

.method static synthetic access$4600(Lcom/parrot/freeflight/home/HomeUIController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->updateView(II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFirstCardSubTitle()V

    return-void
.end method

.method static synthetic access$5000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/parrot/freeflight/home/HomeUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlyingState:I

    return v0
.end method

.method static synthetic access$5102(Lcom/parrot/freeflight/home/HomeUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlyingState:I

    return p1
.end method

.method static synthetic access$5200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerAuthFailedListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteWifiChangeListener:Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mActivityWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneInfo()V

    return-void
.end method

.method static synthetic access$5900(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFwCompatInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/parrot/freeflight/home/HomeUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p1, "x1"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateRcController()V

    return-void
.end method

.method static synthetic access$6200(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateUnreadMediaCount()V

    return-void
.end method

.method static synthetic access$6300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->initVideoStream()V

    return-void
.end method

.method static synthetic access$6500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionInfoListSorter:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotAvatarImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showConnectToInternetSnackbar()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method private applyFontToMenu()V
    .locals 9

    .prologue
    .line 1277
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v5}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1278
    .local v1, "menu":Landroid/view/Menu;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1279
    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1280
    .local v2, "menuItem":Landroid/view/MenuItem;
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1281
    .local v3, "newTitle":Landroid/text/SpannableString;
    new-instance v5, Lcom/parrot/freeflight/util/ui/CustomTypefaceSpan;

    const-string v6, ""

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/parrot/freeflight/util/ui/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1282
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1284
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "newTitle":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method

.method private changeUpdateInfoDisplay(Landroid/widget/TextView;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "needed"    # Z
    .param p3, "mandatory"    # Z

    .prologue
    .line 1582
    if-eqz p2, :cond_1

    .line 1583
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const v0, 0x7f050103

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 1585
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1589
    :goto_1
    return-void

    .line 1584
    :cond_0
    const v0, 0x7f05013c

    goto :goto_0

    .line 1587
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private checkAppRedirection()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 1016
    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-string v9, "HomePref"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1018
    .local v1, "homePrefs":Landroid/content/SharedPreferences;
    const-string v8, "KEY_APP_REDIRECTION_DIALOG_TO_CHECK"

    const/4 v9, 0x1

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1019
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "KEY_APP_REDIRECTION_DIALOG_TO_CHECK"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1021
    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-string v9, "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1023
    .local v0, "deviceControllerPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 1025
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1026
    const/4 v4, 0x0

    .line 1027
    .local v4, "minidrone":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const/4 v2, 0x0

    .line 1028
    .local v2, "jumping":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1029
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 1030
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1031
    .local v6, "productId":I
    const-string v9, "FF4.Home"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAppRedirection: product  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-lez v6, :cond_0

    .line 1033
    invoke-static {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    .line 1034
    .local v5, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const-string v9, "FF4.Home"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAppRedirection: product "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v9, Lcom/parrot/freeflight/home/HomeUIController$40;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-static {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v10

    invoke-virtual {v10}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1039
    :pswitch_0
    move-object v2, v5

    .line 1040
    goto :goto_0

    .line 1047
    :pswitch_1
    move-object v4, v5

    goto :goto_0

    .line 1054
    .end local v5    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v6    # "productId":I
    :cond_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_3

    .line 1055
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/parrot/freeflight/home/HomeUIController;->showAppRedirectionDialog(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 1059
    .end local v0    # "deviceControllerPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "jumping":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "minidrone":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_3
    return-void

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private createAskPasswordDialog(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)V
    .locals 3
    .param p1, "device"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstTry"    # Z

    .prologue
    .line 996
    iget-boolean v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1000
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 1002
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1006
    :cond_1
    invoke-static {p1, p2}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->newDialog(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    move-result-object v0

    .line 1008
    .local v0, "dialogFragment":Lcom/parrot/freeflight/home/Wpa2DialogFragment;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2DialogListener:Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->setListener(Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;)V

    .line 1010
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    .line 1011
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroyVideoStream()V
    .locals 3

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 2111
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 2116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    .line 2118
    :cond_0
    return-void

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private dismissWpa2Dialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1789
    iput-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 1790
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1792
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1793
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1794
    iput-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mCurrentDialog:Ljava/lang/ref/WeakReference;

    .line 1797
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method private displayBatteryLevelIfAvailable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1691
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->hasBatteryLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1692
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v0

    .line 1693
    .local v0, "batteryLevel":I
    if-ltz v0, :cond_1

    .line 1694
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d %%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1700
    .end local v0    # "batteryLevel":I
    :cond_0
    return-void

    .line 1696
    .restart local v0    # "batteryLevel":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getDroneSchoolUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1138
    const-string v0, "http://www.parrot.com/%s/drones-tutorial/bebop/"

    invoke-static {v0}, Lcom/parrot/freeflight/util/WebUrlBuilder;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDroneStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1133
    const-string v0, "http://www.parrot.com/%s/buy/bebopdrone/"

    invoke-static {v0}, Lcom/parrot/freeflight/util/WebUrlBuilder;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleWifiSelectionClick()V
    .locals 3

    .prologue
    .line 1062
    iget v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlConnectorState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/home/WifiListView;->switchVisibility(Z)V

    .line 1069
    :goto_0
    return-void

    .line 1065
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1067
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private hideRemoteCtrStatus()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1703
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlCalibrationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1706
    return-void
.end method

.method private initVideoStream()V
    .locals 3

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->isDecoderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    new-instance v0, Lcom/parrot/freeflight/view/FixedRatioTextureView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/view/FixedRatioTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    .line 2100
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    new-instance v1, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;

    invoke-direct {v1}, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2101
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->addView(Landroid/view/View;I)V

    .line 2102
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->registerView(Landroid/view/View;)V

    .line 2104
    :cond_0
    return-void
.end method

.method private onAppRedirectionClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "appPackageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1125
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onFirstCardClicked()V
    .locals 4

    .prologue
    .line 1968
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    if-nez v0, :cond_0

    .line 1969
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on first card while state is UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1972
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on first card while state is NO_DRONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->getDroneStoreUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1975
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-nez v0, :cond_2

    .line 1977
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on first card while state is not NO_DRONE nor UNKNOWN but mUserDrone = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1980
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startFlightPlanIfPossible()V

    goto :goto_0
.end method

.method private onGamePadStatusBarClicked()V
    .locals 4

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-nez v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2060
    :goto_0
    return-void

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2056
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2045
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2046
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2040
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMyFlightsClicked()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2019
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104ef

    aput v3, v2, v4

    const v3, 0x7f1104f0

    new-instance v4, Lcom/parrot/freeflight/home/HomeUIController$34;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/home/HomeUIController$34;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 2034
    return-void
.end method

.method private onSecondCardClicked()V
    .locals 4

    .prologue
    .line 2063
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    if-nez v0, :cond_0

    .line 2064
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on second card while state is UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :goto_0
    return-void

    .line 2065
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2067
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on second card while state is NO_DRONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2070
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-nez v0, :cond_2

    .line 2072
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on second card while state is not NO_DRONE nor UNKNOWN but mUserDrone = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2075
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    goto :goto_0
.end method

.method private onStatusBarClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1934
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlConnectorState:I

    if-ne v0, v1, :cond_1

    .line 1935
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->handleWifiSelectionClick()V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    if-nez v0, :cond_2

    .line 1937
    const-string v0, "FF4.Home"

    const-string v1, "Clicked on start button while state is UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 1939
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneInfosActivity()V

    goto :goto_0
.end method

.method private onThirdCardClicked()V
    .locals 4

    .prologue
    .line 1985
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    packed-switch v2, :pswitch_data_0

    .line 1991
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/FollowMeManager;->isFollowMeAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->isFollowMeSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1993
    :cond_0
    const-string v2, "FF4.Home"

    const-string v3, "Clicked on third card while state is not NO_DRONE nor UNKNOWN but mUserDrone = null or not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :goto_0
    return-void

    .line 1988
    :pswitch_0
    const-string v2, "FF4.Home"

    const-string v3, "Clicked on third card while state is UNKNOWN or NO_DRONE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1996
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 1997
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1999
    const-string v2, "FF4.Home"

    const-string v3, "Clicked on third card while cpu id is invalid. This should not happen..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2002
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPurchased()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPromotionActivated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2003
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2004
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    goto :goto_0

    .line 2006
    :cond_4
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    goto :goto_0

    .line 2009
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2010
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDroneStatusAlert(Z)V
    .locals 4
    .param p1, "alert"    # Z

    .prologue
    .line 1627
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneInfoLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 1628
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    sget-object v3, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v0, v3, :cond_0

    const v0, 0x7f0500b5

    .line 1627
    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1632
    return-void

    .line 1628
    :cond_0
    const v0, 0x106000d

    goto :goto_0
.end method

.method private showAppRedirectionDialog(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 13
    .param p1, "jumping"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "minidrone"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    const v10, 0x7f0a0092

    const v9, 0x7f0a0081

    const/16 v8, 0x8

    const/4 v11, 0x1

    .line 1072
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v7, 0x7f120009

    invoke-direct {v1, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1074
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c007f

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1075
    .local v0, "body":Landroid/view/View;
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 1076
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1077
    const/4 v3, 0x0

    .line 1078
    .local v3, "jumpingButton":Landroid/widget/ImageButton;
    const/4 v4, 0x0

    .line 1080
    .local v4, "minidroneButton":Landroid/widget/ImageButton;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1081
    const v6, 0x7f110743

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1082
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "jumpingButton":Landroid/widget/ImageButton;
    check-cast v3, Landroid/widget/ImageButton;

    .line 1083
    .restart local v3    # "jumpingButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "minidroneButton":Landroid/widget/ImageButton;
    check-cast v4, Landroid/widget/ImageButton;

    .line 1098
    .restart local v4    # "minidroneButton":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {v1, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f1104d4

    .line 1099
    invoke-virtual {v6, v7, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1100
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 1102
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz v4, :cond_0

    .line 1103
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$25;

    invoke-direct {v6, p0, v2}, Lcom/parrot/freeflight/home/HomeUIController$25;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    :cond_0
    if-eqz v3, :cond_1

    .line 1113
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController$26;

    invoke-direct {v6, p0, v2}, Lcom/parrot/freeflight/home/HomeUIController$26;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    :cond_1
    return-void

    .line 1086
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_2
    if-eqz p1, :cond_3

    .line 1087
    move-object v5, p1

    .line 1088
    .local v5, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const v6, 0x7f0a02a5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "jumpingButton":Landroid/widget/ImageButton;
    check-cast v3, Landroid/widget/ImageButton;

    .line 1095
    .restart local v3    # "jumpingButton":Landroid/widget/ImageButton;
    :goto_1
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v7, 0x7f110742

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 1091
    .end local v5    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_3
    move-object v5, p2

    .line 1092
    .restart local v5    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const v6, 0x7f0a029a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "minidroneButton":Landroid/widget/ImageButton;
    check-cast v4, Landroid/widget/ImageButton;

    .restart local v4    # "minidroneButton":Landroid/widget/ImageButton;
    goto :goto_1
.end method

.method private showConnectToInternetSnackbar()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f110160

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f11068d

    new-instance v2, Lcom/parrot/freeflight/home/HomeUIController$23;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/home/HomeUIController$23;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 973
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 980
    return-void
.end method

.method private showDiscoveringTiles()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1396
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    const v1, 0x7f1100ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1397
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f070511

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1398
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v1, 0x7f07052a

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;)V

    .line 1399
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1401
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->destroyVideoStream()V

    .line 1402
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f07041c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1403
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v1, 0x7f07052b

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;)V

    .line 1412
    return-void
.end method

.method private showLastMediasTakenSnackbar()V
    .locals 19

    .prologue
    .line 2220
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    .line 2222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaCountTakenDuringRun()I

    move-result v14

    .line 2223
    .local v14, "mediasCountTakenDuringRun":I
    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRunId()Ljava/lang/String;

    move-result-object v15

    .line 2226
    .local v15, "runId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v3, 0x7f11022b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2227
    .local v17, "start":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f11022a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2228
    .local v9, "bestof":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v3, 0x7f110229

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2230
    .local v12, "end":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2232
    .local v6, "spannable":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2233
    .local v11, "d":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2234
    new-instance v13, Landroid/text/style/ImageSpan;

    const/4 v1, 0x1

    invoke-direct {v13, v11, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 2236
    .local v13, "imageSpan":Landroid/text/style/ImageSpan;
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xff0100

    invoke-direct {v10, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2238
    .local v10, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v16, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2239
    .local v16, "spannableBestOf":Landroid/text/SpannableString;
    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2240
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2242
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2243
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2244
    invoke-virtual {v6, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController;->mInAppNotificationManager:Lcom/parrot/freeflight/notification/InAppNotificationManager;

    move-object/from16 v18, v0

    new-instance v1, Lcom/parrot/freeflight/notification/InAppNotification;

    const-string v2, "new_media"

    sget-object v3, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MEDIA:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v5, 0x7f1104cc

    .line 2249
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v7, 0x7f0500da

    .line 2250
    invoke-static {v5, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    .line 2253
    invoke-static {v8, v15, v14}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getStartingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/parrot/freeflight/notification/InAppNotification;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/notification/InAppNotification$Type;Ljava/lang/String;ILandroid/text/Spannable;Landroid/text/Spannable;Landroid/content/Intent;)V

    .line 2245
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->addAndShowNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 2257
    .end local v6    # "spannable":Landroid/text/SpannableStringBuilder;
    .end local v9    # "bestof":Ljava/lang/String;
    .end local v10    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v11    # "d":Landroid/graphics/drawable/Drawable;
    .end local v12    # "end":Ljava/lang/String;
    .end local v13    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v14    # "mediasCountTakenDuringRun":I
    .end local v15    # "runId":Ljava/lang/String;
    .end local v16    # "spannableBestOf":Landroid/text/SpannableString;
    .end local v17    # "start":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showPilotingTiles()V
    .locals 3

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFirstCard()V

    .line 1385
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->destroyVideoStream()V

    .line 1386
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1387
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBitmapCache:Lcom/parrot/freeflight/core/BitmapCache;

    const v1, 0x7f07050e

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;)V

    .line 1388
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateThirdCard()V

    .line 1390
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardTextView:Landroid/widget/TextView;

    const v1, 0x7f110295

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1391
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardSubtitle:Landroid/widget/TextView;

    const v1, 0x7f110292

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1392
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f0703db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1393
    return-void
.end method

.method private showVideoStreaming()V
    .locals 2

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFirstCard()V

    .line 1417
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1418
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1419
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCardBackgroundView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->initVideoStream()V

    .line 1422
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateThirdCard()V

    .line 1423
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardTextView:Landroid/widget/TextView;

    const v1, 0x7f110295

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1424
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardSubtitle:Landroid/widget/TextView;

    const v1, 0x7f110292

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1425
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f0703db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1426
    return-void
.end method

.method private startDroneInfosActivity()V
    .locals 5

    .prologue
    .line 1944
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v2, :cond_0

    .line 1945
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v0

    .line 1946
    .local v0, "droneInfoIntent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1947
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    const-string v3, "DroneName"

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/view/UnclickableEditText;->setTransitionName(Ljava/lang/String;)V

    .line 1948
    const-string v2, "DroneNameText"

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v3}, Lcom/parrot/freeflight/view/UnclickableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    .line 1950
    invoke-virtual {v4}, Lcom/parrot/freeflight/view/UnclickableEditText;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    .line 1951
    .local v1, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1956
    .end local v0    # "droneInfoIntent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/support/v4/app/ActivityOptionsCompat;
    :cond_0
    :goto_0
    return-void

    .line 1953
    .restart local v0    # "droneInfoIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startDroneMemoryActivity()V
    .locals 2

    .prologue
    .line 2260
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity(Ljava/lang/String;I)V

    .line 2261
    return-void
.end method

.method private startDroneMemoryActivity(Ljava/lang/String;I)V
    .locals 5
    .param p1, "runId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediasCountTakenDuringRun"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2264
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104f6

    aput v3, v2, v4

    const v3, 0x7f1104f7

    new-instance v4, Lcom/parrot/freeflight/home/HomeUIController$37;

    invoke-direct {v4, p0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController$37;-><init>(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 2274
    return-void
.end method

.method private startFlightPlanIfPossible()V
    .locals 3

    .prologue
    .line 1959
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPurchased()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPromotionActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1960
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    .line 1965
    :goto_0
    return-void

    .line 1962
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1963
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startFwCompatInfoUpdate(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 5
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2163
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->isMassStorageContentCmdSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2164
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getMassStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 2165
    .local v1, "massStoragePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMassStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2166
    iput-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMassStoragePath:Ljava/lang/String;

    .line 2167
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    if-nez v2, :cond_0

    .line 2168
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/parrot/freeflight/media/DroneMemoryInitializationInfoBuilder;->build(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    move-result-object v0

    .line 2169
    .local v0, "droneMemoryInitializationInfo":Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    if-eqz v0, :cond_0

    .line 2170
    new-instance v2, Lcom/parrot/freeflight/media/MediaCountCompat;

    new-instance v3, Lcom/parrot/freeflight/home/HomeUIController$36;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/home/HomeUIController$36;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    invoke-direct {v2, v0, v3}, Lcom/parrot/freeflight/media/MediaCountCompat;-><init>(Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;Lcom/parrot/freeflight/media/MediaCountCompat$Listener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    .line 2187
    .end local v0    # "droneMemoryInitializationInfo":Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    if-eqz v2, :cond_1

    .line 2188
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMassStoragePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/media/MediaCountCompat;->getMediaCountAsync(Ljava/lang/String;Landroid/content/Context;)V

    .line 2192
    .end local v1    # "massStoragePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private startNotificationUpdate()V
    .locals 4

    .prologue
    .line 2336
    new-instance v0, Lcom/parrot/freeflight/home/HomeUIController$39;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/HomeUIController$39;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 2342
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationBar:Lcom/parrot/freeflight/view/NotificationBar;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mInAppNotificationManager:Lcom/parrot/freeflight/notification/InAppNotificationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->getNextNotification()Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/NotificationBar;->setNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 2343
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2344
    return-void
.end method

.method private startPiloting(I)V
    .locals 5
    .param p1, "launchMode"    # I

    .prologue
    .line 2080
    const/4 v2, 0x0

    .line 2081
    .local v2, "remoteCtrlProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v3, :cond_0

    .line 2082
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    .line 2084
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 2085
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v3, :cond_1

    .line 2086
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 2089
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4, p1}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZI)Landroid/content/Intent;

    move-result-object v0

    .line 2090
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "internet_needed"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/network/InternetStatusManager;->isInternetAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2091
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showConnectToInternetSnackbar()V

    .line 2095
    :goto_0
    return-void

    .line 2093
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private stopFwCompatInfoUpdate()V
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->destroy()V

    .line 2197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMediaCountCompat:Lcom/parrot/freeflight/media/MediaCountCompat;

    .line 2199
    :cond_0
    return-void
.end method

.method private stopNotificationUpdate()V
    .locals 2

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2348
    return-void
.end method

.method private static switchCardVisibility(Landroid/view/View;ZF)V
    .locals 2
    .param p0, "card"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "animated"    # Z
    .param p2, "endValue"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2132
    if-eqz p1, :cond_1

    .line 2133
    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 2134
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2136
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/home/HomeUIController$35;

    invoke-direct {v1, p2, p0}, Lcom/parrot/freeflight/home/HomeUIController$35;-><init>(FLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2149
    :goto_0
    return-void

    .line 2146
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 2147
    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchCardVisibility(ZZ)V
    .locals 3
    .param p1, "dropDownMenuOpening"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/16 v2, 0x8

    .line 2121
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v0, v1

    .line 2122
    .local v0, "endValue":F
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2123
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-static {v1, p2, v0}, Lcom/parrot/freeflight/home/HomeUIController;->switchCardVisibility(Landroid/view/View;ZF)V

    .line 2125
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-static {v1, p2, v0}, Lcom/parrot/freeflight/home/HomeUIController;->switchCardVisibility(Landroid/view/View;ZF)V

    .line 2126
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 2127
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-static {v1, p2, v0}, Lcom/parrot/freeflight/home/HomeUIController;->switchCardVisibility(Landroid/view/View;ZF)V

    .line 2129
    :cond_1
    return-void

    .line 2121
    .end local v0    # "endValue":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDroneDefaultInfo(ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "droneType"    # I
    .param p2, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "shouldBeCapitalize"    # Z
    .param p4, "textColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/view/UnclickableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/view/UnclickableEditText;->setAllCaps(Z)V

    .line 1490
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->setTextColor(I)V

    .line 1493
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1494
    packed-switch p1, :pswitch_data_0

    .line 1509
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1512
    :goto_0
    return-void

    .line 1496
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f0703ce

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1500
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f0703cf

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1503
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f0703d0

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1506
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f0703d1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateDroneInfo()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1515
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v7, :cond_0

    .line 1517
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getBatteryLevel()I

    move-result v0

    .line 1518
    .local v0, "batteryLevel":I
    const/16 v7, 0x14

    if-gt v0, v7, :cond_1

    move v1, v5

    .line 1520
    .local v1, "emptyBattery":Z
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryTextView:Landroid/widget/TextView;

    const-string v8, "%d %%"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1521
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->setDroneStatusAlert(Z)V

    .line 1522
    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneBatteryImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const v5, 0x7f0703bd

    :goto_1
    invoke-static {v7, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getMemorySizeInMByte()I

    move-result v2

    .line 1528
    .local v2, "memorySizeInMByte":I
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getUsedMemorySizeInMByte()I

    move-result v3

    .line 1529
    .local v3, "memoryUsedSizeInMByte":I
    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/home/HomeUIController;->updateStorageSizeInfo(II)V

    .line 1532
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getRssi()S

    move-result v4

    .line 1533
    .local v4, "rssi":S
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/home/HomeUIController;->updateRssiLevel(S)V

    .line 1535
    .end local v0    # "batteryLevel":I
    .end local v1    # "emptyBattery":Z
    .end local v2    # "memorySizeInMByte":I
    .end local v3    # "memoryUsedSizeInMByte":I
    .end local v4    # "rssi":S
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showLastMediasTakenSnackbar()V

    .line 1536
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateUnreadMediaCount()V

    .line 1537
    return-void

    .restart local v0    # "batteryLevel":I
    :cond_1
    move v1, v6

    .line 1518
    goto :goto_0

    .line 1522
    .restart local v1    # "emptyBattery":Z
    :cond_2
    const v5, 0x7f0703ab

    goto :goto_1
.end method

.method private updateDroneStatusBar(Lcom/parrot/freeflight/core/model/DroneModel;I)V
    .locals 10
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "state"    # I

    .prologue
    const v9, 0x7f0500b2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1435
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/home/HomeUIController;->setDroneStatusAlert(Z)V

    .line 1436
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneCalibrationImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1439
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;

    if-nez v3, :cond_2

    .line 1440
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProduct(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    .line 1441
    .local v1, "needUpdate":Z
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v2

    .line 1442
    .local v2, "updateMandatory":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v0

    .line 1444
    .local v0, "isCalibrated":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_5

    :cond_0
    move v3, v5

    :goto_0
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/home/HomeUIController;->setDroneStatusAlert(Z)V

    .line 1445
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneUpdateTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->changeUpdateInfoDisplay(Landroid/widget/TextView;ZZ)V

    .line 1446
    if-nez v0, :cond_1

    .line 1447
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneCalibrationImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1450
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneLastPositionImage:Landroid/widget/ImageView;

    .line 1451
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->isLocationWithGpsFixed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    .line 1450
    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1455
    .end local v0    # "isCalibrated":Z
    .end local v1    # "needUpdate":Z
    .end local v2    # "updateMandatory":Z
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFwCompatInfo()V

    .line 1456
    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    .line 1457
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneNameEditText:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-virtual {v3}, Lcom/parrot/freeflight/view/UnclickableEditText;->cancelEdition()V

    .line 1460
    :cond_3
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/home/HomeUIController;->updateInfoVisibility(I)V

    .line 1461
    packed-switch p2, :pswitch_data_0

    .line 1483
    :cond_4
    :goto_2
    :pswitch_0
    return-void

    .restart local v0    # "isCalibrated":Z
    .restart local v1    # "needUpdate":Z
    .restart local v2    # "updateMandatory":Z
    :cond_5
    move v3, v4

    .line 1444
    goto :goto_0

    :cond_6
    move v3, v6

    .line 1451
    goto :goto_1

    .line 1463
    .end local v0    # "isCalibrated":Z
    .end local v1    # "needUpdate":Z
    .end local v2    # "updateMandatory":Z
    :pswitch_1
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v6, 0x7f11015f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0500a3

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneDefaultInfo(ILjava/lang/String;ZI)V

    goto :goto_2

    .line 1466
    :pswitch_2
    if-eqz p1, :cond_4

    .line 1467
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4, v9}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneDefaultInfo(ILjava/lang/String;ZI)V

    goto :goto_2

    .line 1471
    :pswitch_3
    if-eqz p1, :cond_7

    .line 1472
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f050146

    invoke-direct {p0, v3, v5, v4, v6}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneDefaultInfo(ILjava/lang/String;ZI)V

    .line 1474
    :cond_7
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneInfo()V

    goto :goto_2

    .line 1477
    :pswitch_4
    if-eqz p1, :cond_8

    .line 1478
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4, v9}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneDefaultInfo(ILjava/lang/String;ZI)V

    .line 1480
    :cond_8
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectingStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateFirstCard()V
    .locals 3

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardTextView:Landroid/widget/TextView;

    const v1, 0x7f1101fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1289
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardImageView:Landroid/widget/ImageView;

    const v1, 0x7f0703c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1290
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f050130

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1291
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateFirstCardSubTitle()V

    .line 1299
    return-void
.end method

.method private updateFirstCardSubTitle()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    .line 1302
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v4, :cond_1

    .line 1303
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "cpuId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1309
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1313
    :cond_2
    const/16 v3, 0x8

    .line 1314
    .local v3, "subTitleVisibility":I
    const/4 v2, 0x0

    .line 1316
    .local v2, "subTitleText":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPurchased()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    .line 1317
    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPromotionActivated()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    .line 1318
    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isTrialValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1319
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->getTrialRemainingTime()I

    move-result v1

    .line 1321
    .local v1, "remainingDays":I
    if-lez v1, :cond_3

    .line 1322
    const/4 v3, 0x0

    .line 1323
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v1, v6}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    .end local v1    # "remainingDays":I
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1328
    if-eqz v2, :cond_0

    .line 1329
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFwCompatInfo()V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/HomeUIController;->startFwCompatInfoUpdate(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2156
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->stopFwCompatInfoUpdate()V

    goto :goto_0
.end method

.method private updateInfoVisibility(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1592
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneDisconnectedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1593
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1594
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStateInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1596
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneWifiSignalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1597
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectingStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1600
    packed-switch p1, :pswitch_data_0

    .line 1624
    :goto_0
    :pswitch_0
    return-void

    .line 1605
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1607
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneDisconnectedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1610
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1611
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneStateInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1614
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneWifiSignalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1618
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mConnectingStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateMyParrotHeaderView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1727
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotAvatarImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUsernameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 1731
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUserInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    :goto_0
    return-void

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1735
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mMyParrotUserInfo:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRcController()V
    .locals 2

    .prologue
    .line 1709
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getReceiverState()I

    move-result v0

    .line 1711
    .local v0, "rcReceiverState":I
    iget v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcReceiverState:I

    if-eq v1, v0, :cond_0

    .line 1712
    iput v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcReceiverState:I

    .line 1713
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateRemoteCtrlStatusBar()V

    .line 1716
    .end local v0    # "rcReceiverState":I
    :cond_0
    return-void
.end method

.method private updateRemoteCtrlStatusBar()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1641
    const v0, 0x7f0500ad

    .line 1642
    .local v0, "color":I
    const v3, 0x7f050146

    .line 1647
    .local v3, "textColor":I
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->hideRemoteCtrStatus()V

    .line 1649
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1650
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1651
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1652
    const v3, 0x7f050103

    .line 1686
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlInfosTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1687
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1688
    return-void

    .line 1653
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    if-eqz v5, :cond_9

    .line 1655
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v7, 0x7f0703d4

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1658
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v5, v5, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    if-eqz v5, :cond_7

    .line 1659
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v5, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    .line 1665
    .local v1, "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProduct(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v2

    .line 1666
    .local v2, "needUpdate":Z
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v4

    .line 1668
    .local v4, "updateMandatory":Z
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlUpdateTextView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v2, v4}, Lcom/parrot/freeflight/home/HomeUIController;->changeUpdateInfoDisplay(Landroid/widget/TextView;ZZ)V

    .line 1671
    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->isCalibrated()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1672
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlCalibrationImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1677
    :cond_4
    :goto_2
    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->isCalibrated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1678
    :cond_6
    const v0, 0x7f0500b5

    goto/16 :goto_0

    .line 1661
    .end local v1    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .end local v2    # "needUpdate":Z
    .end local v4    # "updateMandatory":Z
    :cond_7
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v5, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    .restart local v1    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    goto :goto_1

    .line 1673
    .restart local v2    # "needUpdate":Z
    .restart local v4    # "updateMandatory":Z
    :cond_8
    if-nez v2, :cond_4

    .line 1674
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->displayBatteryLevelIfAvailable()V

    goto :goto_2

    .line 1682
    .end local v1    # "model":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .end local v2    # "needUpdate":Z
    .end local v4    # "updateMandatory":Z
    :cond_9
    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRemoteCtrlImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v7, 0x7f0703d2

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1683
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->displayBatteryLevelIfAvailable()V

    goto/16 :goto_0
.end method

.method private updateRssiLevel(S)V
    .locals 1
    .param p1, "rssi"    # S

    .prologue
    .line 1575
    iget-short v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRssi:S

    if-eq p1, v0, :cond_0

    .line 1576
    iput-short p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRssi:S

    .line 1577
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneWifiSignalView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->updateRssiLevel(S)V

    .line 1579
    :cond_0
    return-void
.end method

.method private updateSecondCardWidth()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1375
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    .line 1376
    .local v1, "params":Landroid/support/percent/PercentRelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    .line 1377
    .local v0, "info":Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFirstCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1378
    .local v2, "secondCardOnly":Z
    :goto_0
    if-eqz v2, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    iput v3, v0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 1379
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSecondCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->requestLayout()V

    .line 1380
    return-void

    .line 1377
    .end local v2    # "secondCardOnly":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1378
    .restart local v2    # "secondCardOnly":Z
    :cond_1
    const v3, 0x3f266666    # 0.65f

    goto :goto_1
.end method

.method private updateStorageSizeInfo(II)V
    .locals 18
    .param p1, "totalSizeInMByte"    # I
    .param p2, "usedSizeInMByte"    # I

    .prologue
    .line 1541
    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mTotalSizeInMByte:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mUsedSizeInMByte:I

    move/from16 v0, p2

    if-eq v0, v13, :cond_3

    :cond_0
    if-lez p1, :cond_3

    .line 1542
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mTotalSizeInMByte:I

    .line 1543
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/home/HomeUIController;->mUsedSizeInMByte:I

    .line 1545
    sub-int v13, p1, p2

    if-gez v13, :cond_4

    const/4 v10, 0x0

    .line 1546
    .local v10, "remainingSizeInMb":F
    :goto_0
    const/high16 v13, 0x42c80000    # 100.0f

    cmpg-float v13, v10, v13

    if-gez v13, :cond_5

    const/4 v11, 0x1

    .line 1548
    .local v11, "shouldBeMegaByteDisplay":Z
    :goto_1
    if-eqz v11, :cond_6

    const v12, 0x7f1103f2

    .line 1549
    .local v12, "sizeUnit":I
    :goto_2
    if-eqz v11, :cond_7

    move v8, v10

    .line 1550
    .local v8, "remainingSize":F
    :goto_3
    if-nez v11, :cond_1

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v8, v13

    if-nez v13, :cond_8

    :cond_1
    const v9, 0x7f1103fa

    .line 1552
    .local v9, "remainingSizeFormatString":I
    :goto_4
    const/4 v13, 0x2

    new-array v6, v13, [F

    const/4 v13, 0x0

    move/from16 v0, p2

    int-to-float v14, v0

    aput v14, v6, v13

    const/4 v13, 0x1

    aput v10, v6, v13

    .line 1555
    .local v6, "data":[F
    const v7, 0x7f0500cf

    .line 1556
    .local v7, "pieColor":I
    const v2, 0x106000d

    .line 1557
    .local v2, "backgroundColor":I
    mul-int/lit8 v13, p2, 0x64

    div-int v13, v13, p1

    const/16 v14, 0x4b

    if-le v13, v14, :cond_9

    .line 1558
    const v7, 0x7f0500d0

    .line 1559
    const v2, 0x7f0500b5

    .line 1564
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v13, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 1565
    .local v4, "colorUsed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const v14, 0x7f0500cd

    invoke-static {v13, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 1566
    .local v3, "colorNonUsed":I
    const/4 v13, 0x2

    new-array v5, v13, [I

    const/4 v13, 0x0

    aput v4, v5, v13

    const/4 v13, 0x1

    aput v3, v5, v13

    .line 1568
    .local v5, "colors":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v14, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceImageView:Lcom/parrot/freeflight/view/PieChart;

    invoke-virtual {v13, v6, v5}, Lcom/parrot/freeflight/view/PieChart;->setData([F[I)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneMemorySpaceTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v9, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    .end local v2    # "backgroundColor":I
    .end local v3    # "colorNonUsed":I
    .end local v4    # "colorUsed":I
    .end local v5    # "colors":[I
    .end local v6    # "data":[F
    .end local v7    # "pieColor":I
    .end local v8    # "remainingSize":F
    .end local v9    # "remainingSizeFormatString":I
    .end local v10    # "remainingSizeInMb":F
    .end local v11    # "shouldBeMegaByteDisplay":Z
    .end local v12    # "sizeUnit":I
    :cond_3
    return-void

    .line 1545
    :cond_4
    sub-int v13, p1, p2

    int-to-float v10, v13

    goto/16 :goto_0

    .line 1546
    .restart local v10    # "remainingSizeInMb":F
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1548
    .restart local v11    # "shouldBeMegaByteDisplay":Z
    :cond_6
    const v12, 0x7f1103ef

    goto/16 :goto_2

    .line 1549
    .restart local v12    # "sizeUnit":I
    :cond_7
    const/high16 v13, 0x44800000    # 1024.0f

    div-float v8, v10, v13

    goto/16 :goto_3

    .line 1550
    .restart local v8    # "remainingSize":F
    :cond_8
    const v9, 0x7f1103f9

    goto/16 :goto_4

    .line 1560
    .restart local v2    # "backgroundColor":I
    .restart local v6    # "data":[F
    .restart local v7    # "pieColor":I
    .restart local v9    # "remainingSizeFormatString":I
    :cond_9
    mul-int/lit8 v13, p2, 0x64

    div-int v13, v13, p1

    const/16 v14, 0x19

    if-ge v13, v14, :cond_2

    .line 1561
    const v7, 0x7f0500ce

    goto :goto_5
.end method

.method private updateThirdCard()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 1334
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v4, :cond_1

    .line 1335
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 1336
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateSecondCardWidth()V

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "cpuId":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/FollowMeManager;->isFollowMeAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->isFollowMeSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1342
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 1343
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateSecondCardWidth()V

    goto :goto_0

    .line 1347
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/home/WifiListView;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1348
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 1352
    :goto_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateSecondCardWidth()V

    .line 1354
    const/16 v3, 0x8

    .line 1355
    .local v3, "subTitleVisibility":I
    const/4 v2, 0x0

    .line 1357
    .local v2, "subTitleText":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPurchased()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 1358
    invoke-virtual {v4}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPromotionActivated()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 1359
    invoke-virtual {v4}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isTrialValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1360
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->getTrialRemainingTime()I

    move-result v1

    .line 1362
    .local v1, "remainingDays":I
    if-lez v1, :cond_4

    .line 1363
    const/4 v3, 0x0

    .line 1364
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v1, v6}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1368
    .end local v1    # "remainingDays":I
    :cond_4
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    if-eqz v2, :cond_0

    .line 1370
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCardInappSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1350
    .end local v2    # "subTitleText":Ljava/lang/String;
    .end local v3    # "subTitleVisibility":I
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController;->mThirdCard:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v4, v8}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateUnreadFlightCount(I)V
    .locals 5
    .param p1, "unreadFlightCount"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2308
    iget-boolean v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPaused:Z

    if-eqz v2, :cond_1

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 2310
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightCount:I

    if-eq v2, p1, :cond_0

    .line 2311
    iput p1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightCount:I

    .line 2312
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightCount:I

    if-lez v2, :cond_3

    .line 2315
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightCount:I

    const/16 v3, 0x63

    if-le v2, v3, :cond_2

    .line 2317
    const-string v0, "+99"

    .line 2318
    .local v0, "displayedFlightCount":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06021f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2324
    .local v1, "textSize":F
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2326
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2327
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2320
    .end local v0    # "displayedFlightCount":Ljava/lang/String;
    .end local v1    # "textSize":F
    :cond_2
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2321
    .restart local v0    # "displayedFlightCount":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060220

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .restart local v1    # "textSize":F
    goto :goto_1

    .line 2330
    .end local v0    # "displayedFlightCount":Ljava/lang/String;
    .end local v1    # "textSize":F
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadFlightTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUnreadMediaCount()V
    .locals 4

    .prologue
    .line 2202
    iget-boolean v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPaused:Z

    if-eqz v2, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    const/16 v0, 0x8

    .line 2204
    .local v0, "newVisibility":I
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2205
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaCount()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-static {v3}, Lcom/parrot/freeflight/media/MediaCountCompat;->getReadMediaCount(Lcom/parrot/freeflight/core/model/DroneModel;)I

    move-result v3

    sub-int v1, v2, v3

    .line 2206
    .local v1, "unReadMediaCount":I
    if-lez v1, :cond_3

    .line 2207
    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaCount:I

    if-eq v1, v2, :cond_2

    .line 2208
    iput v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaCount:I

    .line 2209
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2211
    :cond_2
    const/4 v0, 0x0

    .line 2214
    .end local v1    # "unReadMediaCount":I
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2215
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mUnreadMediaTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateView(II)V
    .locals 1
    .param p1, "droneState"    # I
    .param p2, "remoteCtrlState"    # I

    .prologue
    const/4 v0, 0x1

    .line 1265
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showDiscoveringTiles()V

    .line 1272
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->updateDroneStatusBar(Lcom/parrot/freeflight/core/model/DroneModel;I)V

    .line 1273
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateRemoteCtrlStatusBar()V

    .line 1274
    return-void

    .line 1267
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1268
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showVideoStreaming()V

    goto :goto_0

    .line 1270
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->showPilotingTiles()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 1204
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSkyControllerAuthFailedListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeAuthFailedListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 1208
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelStoreListener:Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 1209
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiDeviceProvider:Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiDeviceProvider:Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    invoke-interface {v0}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->removeWifiListListener()V

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectionInfoListSorter:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->cancel()V

    .line 1214
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNotificationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1215
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x3

    .line 950
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 951
    packed-switch p1, :pswitch_data_0

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 953
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    goto :goto_0

    .line 956
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    goto :goto_0

    .line 960
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->startPiloting(I)V

    goto :goto_0

    .line 963
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 966
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const v2, 0x800003

    const/4 v0, 0x1

    .line 1218
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 1226
    :goto_0
    return v0

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/WifiListView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1223
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWifiListView:Lcom/parrot/freeflight/home/WifiListView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/home/WifiListView;->switchVisibility(Z)V

    goto :goto_0

    .line 1226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 9
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 946
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    if-eqz v0, :cond_0

    const-string v0, "SAVED_STATE_WPA2_DEVICE"

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mWpa2Device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 947
    :cond_0
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 1172
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 1174
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPaused:Z

    .line 1176
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->stopFwCompatInfoUpdate()V

    .line 1177
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->removeListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V

    .line 1178
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->destroyVideoStream()V

    .line 1180
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->stopNotificationUpdate()V

    .line 1181
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mPaused:Z

    .line 1156
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 1158
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->addListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V

    .line 1160
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->updateUnreadMediaCount()V

    .line 1162
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 1163
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mFlightPlanRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 1165
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mInAppNotificationManager:Lcom/parrot/freeflight/notification/InAppNotificationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->init()V

    .line 1166
    invoke-direct {p0}, Lcom/parrot/freeflight/home/HomeUIController;->startNotificationUpdate()V

    .line 1167
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 1143
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1145
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    .line 1146
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.parrot.freeflight3.blacklist_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1151
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 1152
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 1185
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->clear()V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1192
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_2

    .line 1193
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    if-eqz v0, :cond_3

    .line 1196
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mRcControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 1199
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController;->mEphemerisUploadManager:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->stop()V

    .line 1200
    return-void
.end method

.class public abstract Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.super Landroid/widget/RelativeLayout;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/HudView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;,
        Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;,
        Lcom/parrot/freeflight/piloting/ui/PilotingHudView$PilotingMode;,
        Lcom/parrot/freeflight/piloting/ui/PilotingHudView$CameraMode;
    }
.end annotation


# static fields
.field protected static final ANIM_STREAMING_MOVE_DURATION:I = 0x96

.field private static final CAMERA_SETTINGS_DISABLED:I = -0x1

.field private static final CAMERA_SETTINGS_STATE:Ljava/lang/String; = "camera_settings"

.field protected static final DEBUG_HUD_BUTTON:Z = true

.field private static final LAST_PICTURE_FORMAT_KEY:Ljava/lang/String; = "last_picture_format"

.field public static final MODE_PHOTO:I = 0x1

.field public static final MODE_TIME_LAPSE:I = 0x2

.field public static final MODE_UNKNOWN:I = -0x1

.field public static final MODE_VIDEO:I = 0x0

.field protected static final PHOTO_COUNTDOWN_DURATION:I = 0xbb8

.field protected static final PHOTO_COUNTDOWN_INTERVAL:I = 0x64

.field protected static final PHOTO_FLASH_DURATION:I = 0x1f4

.field public static final PILOTING_MODE_FLIGHTPLAN:I = 0x3

.field public static final PILOTING_MODE_FOLLOW_ME:I = 0x1

.field public static final PILOTING_MODE_MAP:I = 0x2

.field public static final PILOTING_MODE_STREAMING:I = 0x0

.field private static final SAVED_STATE_MAP_DATA:Ljava/lang/String; = "flight_plan_map_data"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "piloting_hud_pref"

.field private static final TAG:Ljava/lang/String; = "PilotingHudView"

.field protected static final VIBRATION_DURATION_TIME_MS:I = 0x64


# instance fields
.field protected final mAlertSound:Lcom/parrot/freeflight/util/AlertSound;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCameraMode:I

.field private final mCameraSettingsBackListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCameraSettingsModeChanged:Z

.field private final mCameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCameraSettingsState:I

.field private final mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mCoPilotingState:I

.field protected mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mCurrentStreamingLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanMavlinkState:I

.field protected final mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mFlyingState:I

.field protected mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mIsFirstLaunch:Z

.field protected final mJoysticksLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mLaunchMode:I

.field protected final mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMapButtonsLayerView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

.field private mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

.field private mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

.field protected final mMapOverlayButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mMapTinyView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapView:Lcom/parrot/freeflight/map/IMapView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mMiniStreamingLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mMiniStreamingNoSignalView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mPause:Z

.field private mPhotoCaptureState:I

.field protected mPilotingMode:I

.field protected final mPilotingToolbarView:Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRTHButtonOnClickListener:Landroid/view/View$OnClickListener;

.field protected final mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordingButtonsClickListener:Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordingModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

.field protected final mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReturnHomeStatus:I

.field protected final mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mSettingsButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mShouldHideFpvButton:Z

.field protected mShouldHideMapButton:Z

.field protected mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

.field protected final mStreamingLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mStreamingNoSignalView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mSwitchFpvButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

.field protected mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mThirdRulesView:Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

.field protected final mTimerCountdownView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mTinyLayout:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

.field private final mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

.field protected final mVibrator:Landroid/os/Vibrator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mVideoStreamingView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "switchFpvButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "launchMode"    # I

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlyingState:I

    .line 154
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeStatus:I

    .line 156
    const/4 v4, 0x0

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    .line 158
    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 177
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mIsFirstLaunch:Z

    .line 178
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCoPilotingState:I

    .line 182
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraMode:I

    .line 184
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPhotoCaptureState:I

    .line 186
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    .line 201
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanMavlinkState:I

    .line 211
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShouldHideFpvButton:Z

    .line 319
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    .line 328
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsBackListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    .line 335
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;

    .line 345
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    .line 361
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    .line 395
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$6;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$6;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRTHButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 902
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$21;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$21;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingButtonsClickListener:Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;

    .line 1872
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    .line 2013
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$26;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

    .line 436
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    .line 437
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanRegistrationManager()Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    .line 438
    iput-object p8, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .line 439
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanManager()Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    .line 440
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 442
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 443
    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 444
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    .line 446
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    invoke-static {p1, p2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 449
    new-instance v4, Lcom/parrot/freeflight/util/AlertSound;

    invoke-direct {v4, p1}, Lcom/parrot/freeflight/util/AlertSound;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    .line 450
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVibrator:Landroid/os/Vibrator;

    .line 452
    const v4, 0x7f0a0053

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mBackButton:Landroid/widget/ImageButton;

    .line 453
    const v4, 0x7f0a01a0

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    .line 454
    const v4, 0x7f0a01a8

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    .line 455
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const v5, 0x7f07025b

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageResource(I)V

    .line 456
    const v4, 0x7f0a00ba

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    .line 457
    const v4, 0x7f0a00b6

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    .line 458
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const v5, 0x7f07027b

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageResource(I)V

    .line 459
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const v5, 0x7f110515

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setContentDescription(I)V

    .line 460
    const v4, 0x7f0a03b4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .line 461
    const v4, 0x7f0a03b1

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    .line 462
    const v4, 0x7f0a03b0

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    .line 463
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const v5, 0x7f070274

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageResource(I)V

    .line 464
    const v4, 0x7f0a01bc

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTimerCountdownView:Landroid/widget/ImageView;

    .line 465
    const v4, 0x7f0a00bf

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    .line 466
    const v4, 0x7f0a001f

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/AlertView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    .line 467
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    const v5, 0x7f0c0061

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setItemLayout(I)V

    .line 468
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    const v5, 0x7f0a0430

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setItemTextId(I)V

    .line 469
    const v4, 0x7f0a01af

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mJoysticksLayout:Landroid/view/View;

    .line 470
    const v4, 0x7f0a01a2

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/map/CircularMapView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    .line 471
    const v4, 0x7f0a01b0

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapOverlayButton:Landroid/view/View;

    .line 472
    const v4, 0x7f0a01a1

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingToolbarView:Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    .line 473
    const v4, 0x7f0a0169

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    .line 474
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    new-instance v5, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$7;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$7;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v4, 0x7f0a01b6

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingLayout:Landroid/view/ViewGroup;

    .line 481
    const v4, 0x7f0a01b2

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    .line 482
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    new-instance v5, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$8;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$8;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    const v4, 0x7f0a01ae

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mThirdRulesView:Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;

    .line 489
    const v4, 0x7f0a0365

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTinyLayout:Landroid/widget/FrameLayout;

    .line 491
    const v4, 0x7f0a01b7

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingNoSignalView:Landroid/widget/ImageView;

    .line 492
    const v4, 0x7f0a01b3

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingNoSignalView:Landroid/widget/ImageView;

    .line 493
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const v5, 0x7f0a01b8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p4}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v6

    invoke-direct {v4, p1, v5, v6, p5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    .line 494
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryListener:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setTelemetryListener(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;)V

    .line 496
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingLayout:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    .line 497
    const v4, 0x7f0a0127

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapTinyView:Landroid/widget/ImageView;

    .line 498
    const v4, 0x7f0a01b1

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/map/GLMapLayout;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    .line 499
    const v4, 0x7f0a01b4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/map/RadarMapView;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    .line 500
    const v4, 0x7f0a019e

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapButtonsLayerView:Landroid/view/ViewGroup;

    .line 501
    const v4, 0x7f0a01b5

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/view/CheckableImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    .line 502
    const v4, 0x7f0a0126

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    .line 504
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 506
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    .line 507
    .local v3, "googleApi":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShouldHideMapButton:Z

    .line 511
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingButtonsClickListener:Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->addListener(Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;)V

    .line 512
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setRecordingVideoButtonView(Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;)V

    .line 513
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setRecordingModeListener(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;)V

    .line 515
    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initButtonsOnClickListeners(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;)V

    .line 517
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRootView:Landroid/view/ViewGroup;

    .line 519
    iput-object p6, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 520
    iput-object p7, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 521
    const-string/jumbo v4, "piloting_hud_pref"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferences:Landroid/content/SharedPreferences;

    .line 522
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    const v5, 0x7f0a01a0

    invoke-direct {v4, p0, v5}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;-><init>(Landroid/view/View;I)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    .line 524
    move/from16 v0, p13

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mLaunchMode:I

    .line 526
    if-eqz p9, :cond_1

    .line 527
    const-string v4, "camera_settings"

    const/4 v5, -0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    .line 528
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 529
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setVisibility(I)V

    .line 531
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showCameraSettingsHud(I)V

    .line 535
    :cond_1
    new-instance v4, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-direct {v4, p1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    .line 536
    new-instance v4, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-direct {v4, p1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    .line 537
    new-instance v4, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-direct {v4, p1}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    .line 538
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    .line 540
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updatePresetMode(I)V

    .line 541
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initMap()V

    .line 542
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showOrHideGrid()V

    .line 545
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isFpvSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/parrot/freeflight/util/Screen;->isLargeScreen(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isControllerConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 546
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideFPVButton()V

    .line 547
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShouldHideFpvButton:Z

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showFPVButton()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setCameraMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->returnFromCameraSettingsHud()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->changeMapType()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showOrHideGrid()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->onMaxAltitudeChanged()V

    return-void
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Lcom/parrot/freeflight/map/IMap;)Lcom/parrot/freeflight/map/IMap;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
    .param p1, "x1"    # Lcom/parrot/freeflight/map/IMap;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMap:Lcom/parrot/freeflight/map/IMap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/map/GLMapLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initMapUiController()V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsModeChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->removeCameraSettingsHud()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showCameraSettingsHud(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideMiniMap()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideTinyMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMiniOrTinyMap()V

    return-void
.end method

.method private changeMapType()V
    .locals 3

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v1, :cond_0

    .line 1402
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getMapType()I

    move-result v0

    .line 1391
    .local v0, "mapType":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1396
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/map/IMap;->setMapType(I)V

    goto :goto_0

    .line 1393
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/map/IMap;->setMapType(I)V

    goto :goto_0

    .line 1399
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/map/IMap;->setMapType(I)V

    goto :goto_0

    .line 1391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1264
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1269
    :cond_0
    return-void
.end method

.method private getNoSignalView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingNoSignalView:Landroid/widget/ImageView;

    .line 1982
    .local v0, "noSignalView":Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 1980
    .end local v0    # "noSignalView":Landroid/widget/ImageView;
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingNoSignalView:Landroid/widget/ImageView;

    .restart local v0    # "noSignalView":Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private hideArtificialHorizon()V
    .locals 4

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1563
    :goto_0
    return-void

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onPause()V

    .line 1562
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/view/AnimationHelper;->hideWithFadeOut(Landroid/view/View;J)V

    goto :goto_0
.end method

.method private hideMapCenterOn()V
    .locals 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setVisibility(I)V

    .line 1814
    return-void
.end method

.method private hideMapCenterOnButton()V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1782
    return-void
.end method

.method private hideMapLayer()V
    .locals 2

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapButtonsLayerView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1728
    return-void
.end method

.method private hideMiniMap()V
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/RadarMapView;->setVisibility(I)V

    .line 1823
    return-void
.end method

.method private hideRecordingPhotoButton()V
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1774
    return-void
.end method

.method private hideRecordingVideoButton()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1766
    return-void
.end method

.method private hideTinyMap()V
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapTinyView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1831
    return-void
.end method

.method private initButtonsOnClickListeners(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;)V
    .locals 3
    .param p1, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "switchFpvButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 710
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$9;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$9;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x1

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$10;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$10;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 734
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x2

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$11;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$11;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 744
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0xa

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$12;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$12;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 751
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0xb

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$13;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$13;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 758
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$14;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$14;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRTHButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$17;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$17;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 838
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 839
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$18;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$18;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$19;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$20;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$20;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    return-void
.end method

.method private initMap()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/MapViewFactory;->create(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    .line 1353
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 1354
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 1355
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMapView;->getMapAsync(Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V

    .line 1386
    return-void
.end method

.method private initMapUiController()V
    .locals 17

    .prologue
    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v6

    .line 1445
    .local v6, "flightPlanDataCenter":Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v16

    .line 1446
    .local v16, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v3

    .line 1447
    .local v3, "modelStore":Lcom/parrot/freeflight/core/model/ModelStore;
    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v4

    .line 1449
    .local v4, "smartLocationManager":Lcom/parrot/freeflight/location/SmartLocationManager;
    new-instance v1, Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 1450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/map/CircularMapView;->addView(Landroid/view/View;)V

    .line 1451
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlightPlanPathVisibility()V

    .line 1453
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 1464
    .local v7, "onBackButtonClickListener":Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isSkyControllerMandatory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isSkycontrollerConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v15, 0x1

    .line 1465
    .local v15, "flightPlanPlayable":Z
    :goto_0
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMap:Lcom/parrot/freeflight/map/IMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v15}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/view/View;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;Lcom/parrot/freeflight/map/RadarMapView;Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;ZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .line 1468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->loadSavedPlan()V

    .line 1471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMustRenderFlightPlan(Z)V

    .line 1473
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateMapNavigationMode()V

    .line 1474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->start()V

    .line 1475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->resume()V

    .line 1476
    return-void

    .line 1464
    .end local v15    # "flightPlanPlayable":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_0
.end method

.method private onMaxAltitudeChanged()V
    .locals 4

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getMaxAltitude()F

    move-result v0

    .line 1413
    .local v0, "maxAltitude":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel;->setMaxAltitude(D)V

    .line 1414
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->enableAltitudeSeekBarIfNeeded()V

    .line 1416
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMaxAltitude(F)V

    .line 1418
    :cond_0
    return-void
.end method

.method private removeCameraSettingsHud()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->pause()V

    .line 968
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->stop()V

    .line 969
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->destroy()V

    .line 970
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .line 972
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    .line 974
    :cond_0
    return-void
.end method

.method private returnFromCameraSettingsHud()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->setEnabledBackButton(Z)V

    .line 961
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->startExitTransition()V

    .line 963
    :cond_0
    return-void
.end method

.method private setCameraMode(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 977
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getPictureFormat()I

    move-result v1

    .line 980
    .local v1, "pictureFormat":I
    packed-switch p1, :pswitch_data_0

    .line 1009
    :goto_0
    return-void

    .line 982
    :pswitch_0
    if-eq v1, v6, :cond_0

    .line 983
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_picture_format"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 985
    :cond_0
    invoke-direct {p0, v7, v5, v6}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setCameraMode(ZZI)V

    goto :goto_0

    .line 989
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_picture_format"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 990
    .local v0, "lastPictureFormat":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_picture_format"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 991
    if-ne v0, v4, :cond_1

    if-ne v1, v6, :cond_1

    .line 992
    const/4 v0, 0x0

    .line 994
    :cond_1
    invoke-direct {p0, v5, v5, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setCameraMode(ZZI)V

    goto :goto_0

    .line 998
    .end local v0    # "lastPictureFormat":I
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_picture_format"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 999
    .restart local v0    # "lastPictureFormat":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_picture_format"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1000
    if-ne v0, v4, :cond_2

    if-ne v1, v6, :cond_2

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :cond_2
    invoke-direct {p0, v5, v7, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setCameraMode(ZZI)V

    goto :goto_0

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCameraMode(ZZI)V
    .locals 1
    .param p1, "autoRecordEnabled"    # Z
    .param p2, "timeLapseEnabled"    # Z
    .param p3, "pictureFormat"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->stopMediaRecording()V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->setAutoRecord(Z)V

    .line 1016
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/core/model/DroneModel;->setTimeLapse(Z)V

    .line 1017
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/core/model/DroneModel;->setPictureFormat(I)V

    .line 1020
    :cond_1
    return-void
.end method

.method private setPilotingMode(I)V
    .locals 0
    .param p1, "pilotingMode"    # I

    .prologue
    .line 2044
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    .line 2045
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateMapNavigationMode()V

    .line 2046
    return-void
.end method

.method private showArtificialHorizon()V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    :goto_0
    return-void

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setVisibility(I)V

    .line 1555
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onResume()V

    .line 1556
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showCameraSettingsHud(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 930
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    .line 931
    packed-switch p1, :pswitch_data_0

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .line 944
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->setTransitionListener(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;)V

    .line 946
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->start()V

    .line 947
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->resume()V

    .line 948
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsModeChanged:Z

    if-nez v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->startEnterTransition()V

    .line 954
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 956
    :cond_0
    return-void

    .line 934
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsBackListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    goto :goto_0

    .line 937
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsBackListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    goto :goto_0

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;)V

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsModeChanged:Z

    goto :goto_1

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFlightplanButton()V
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private showJoysticksInMapMode()V
    .locals 2

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isGamepadConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamLeft()V

    .line 1690
    :goto_0
    return-void

    .line 1672
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isSkycontrollerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1674
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCoPilotingState:I

    packed-switch v0, :pswitch_data_0

    .line 1686
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksSwitch()V

    goto :goto_0

    .line 1676
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamCenter()V

    .line 1677
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticks()V

    .line 1678
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    goto :goto_1

    .line 1681
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamLeft()V

    .line 1682
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 1683
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    goto :goto_1

    .line 1688
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksInMapModeWithoutGamepadConnected()V

    goto :goto_0

    .line 1674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showJoysticksInStreamingMode()V
    .locals 2

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isGamepadConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    :goto_0
    return-void

    .line 1600
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isSkycontrollerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksSwitch()V

    .line 1602
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCoPilotingState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1604
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticks()V

    .line 1605
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    goto :goto_0

    .line 1608
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 1609
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    goto :goto_0

    .line 1613
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksInStreamingModeWithoutGamepadConnected()V

    goto :goto_0

    .line 1602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMapCenterOn()V
    .locals 2

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setVisibility(I)V

    .line 1810
    return-void
.end method

.method private showMapCenterOnButton()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1786
    return-void
.end method

.method private showMapLayer()V
    .locals 2

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapButtonsLayerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1724
    return-void
.end method

.method private showMiniMap()V
    .locals 2

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/RadarMapView;->setVisibility(I)V

    .line 1818
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/RadarMapView;->mini()V

    .line 1819
    return-void
.end method

.method private showMiniOrTinyMap()V
    .locals 2

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getMiniMapVisibility()I

    move-result v0

    .line 1423
    .local v0, "visibility":I
    packed-switch v0, :pswitch_data_0

    .line 1438
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showTinyMap()V

    .line 1441
    :goto_0
    return-void

    .line 1425
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMiniMap()V

    goto :goto_0

    .line 1428
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showTinyMap()V

    goto :goto_0

    .line 1431
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isControllerConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMiniMap()V

    goto :goto_0

    .line 1434
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showTinyMap()V

    goto :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showOrHideGrid()V
    .locals 3

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFollowMe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getFramingGridEnabled()Z

    move-result v0

    .line 1407
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mThirdRulesView:Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/widget/ThirdRulesView;->setVisibility(I)V

    .line 1409
    .end local v0    # "visible":Z
    :cond_1
    return-void

    .line 1407
    .restart local v0    # "visible":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showRecordingPhotoButton()V
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1778
    return-void
.end method

.method private showRecordingVideoButton()V
    .locals 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1770
    return-void
.end method

.method private showTinyMap()V
    .locals 2

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapTinyView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1827
    return-void
.end method

.method private startStreamingNoSignalAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1986
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getNoSignalView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1987
    .local v1, "noSignalView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1988
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1989
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1992
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingNoSignalView:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_1

    .line 1993
    const v2, 0x7f070256

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1997
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1998
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1999
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 2000
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2001
    return-void

    .line 1995
    .end local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    const v2, 0x7f070255

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private stopStreamingNoSignalAnimation()V
    .locals 3

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getNoSignalView()Landroid/widget/ImageView;

    move-result-object v1

    .line 2005
    .local v1, "noSignalView":Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2006
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 2007
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2009
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2011
    :cond_0
    return-void
.end method

.method private switchVideoStreamingLayout(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "streamingLayout"    # Landroid/view/ViewGroup;

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->destroyVideoStream()V

    .line 1923
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->stopStreamingNoSignalAnimation()V

    .line 1924
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    .line 1925
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1926
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1927
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initVideoStreaming()V

    .line 1931
    :goto_0
    return-void

    .line 1929
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->startStreamingNoSignalAnimation()V

    goto :goto_0
.end method

.method private updateCameraMode(ZI)V
    .locals 3
    .param p1, "autoRecordEnabled"    # Z
    .param p2, "mediaRecordingState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1164
    if-nez p2, :cond_3

    move v1, v0

    .line 1165
    .local v1, "isRecording":Z
    :goto_0
    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 1166
    .local v0, "cameraMode":I
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraMode:I

    if-eq v2, v0, :cond_2

    .line 1167
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraMode:I

    .line 1168
    packed-switch v0, :pswitch_data_0

    .line 1178
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateCameraMode(I)V

    .line 1180
    :cond_2
    return-void

    .end local v0    # "cameraMode":I
    .end local v1    # "isRecording":Z
    :cond_3
    move v1, v2

    .line 1164
    goto :goto_0

    .line 1170
    .restart local v0    # "cameraMode":I
    .restart local v1    # "isRecording":Z
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideRecordingPhotoButton()V

    .line 1171
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showRecordingVideoButton()V

    goto :goto_1

    .line 1174
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showRecordingPhotoButton()V

    .line 1175
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideRecordingVideoButton()V

    goto :goto_1

    .line 1168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCoPilotingDisabled()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 1301
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 1302
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamLeft()V

    .line 1305
    :cond_0
    return-void
.end method

.method private updateCoPilotingEnabled()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 1293
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticks()V

    .line 1294
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamCenter()V

    .line 1297
    :cond_0
    return-void
.end method

.method private updateDroneStatus()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneOnTheGround()V

    .line 1161
    :goto_0
    return-void

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneInTheAir()V

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0
.end method

.method private updateFlightPlanMavlinkState(IZ)V
    .locals 3
    .param p1, "mavlinkState"    # I
    .param p2, "forceRefresh"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1205
    if-nez p2, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanMavlinkState:I

    if-eq p1, v1, :cond_2

    .line 1206
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanMavlinkState:I

    .line 1208
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 1210
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 1216
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlightPlanPathVisibility()V

    .line 1218
    :cond_2
    return-void

    .line 1212
    :cond_3
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateDroneStatus()V

    .line 1213
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    goto :goto_0
.end method

.method private updateFlightPlanPathVisibility()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    if-nez v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setMustRenderFlightPlan(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateMapNavigationMode()V
    .locals 2

    .prologue
    .line 2049
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-nez v1, :cond_0

    .line 2072
    :goto_0
    return-void

    .line 2053
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    packed-switch v1, :pswitch_data_0

    .line 2067
    const/4 v0, -0x1

    .line 2068
    .local v0, "navigationMode":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->disableFlightPlanNavigation()V

    .line 2071
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setNavigationMode(I)V

    goto :goto_0

    .line 2055
    .end local v0    # "navigationMode":I
    :pswitch_0
    const/4 v0, 0x0

    .line 2056
    .restart local v0    # "navigationMode":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->enableFlightPlanNavigation()V

    goto :goto_1

    .line 2059
    .end local v0    # "navigationMode":I
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v1, v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v1, :cond_1

    .line 2060
    const/4 v0, 0x1

    .line 2064
    .restart local v0    # "navigationMode":I
    :goto_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->disableFlightPlanNavigation()V

    goto :goto_1

    .line 2062
    .end local v0    # "navigationMode":I
    :cond_1
    const/4 v0, -0x1

    .restart local v0    # "navigationMode":I
    goto :goto_2

    .line 2053
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePhotoCaptureState(I)V
    .locals 3
    .param p1, "photoCaptureState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1183
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPhotoCaptureState:I

    if-eq v0, p1, :cond_0

    .line 1184
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPhotoCaptureState:I

    .line 1185
    packed-switch p1, :pswitch_data_0

    .line 1197
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 1198
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1187
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 1188
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    goto :goto_0

    .line 1191
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 1192
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateReturnHomeStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1125
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeStatus:I

    if-eq v0, p1, :cond_0

    .line 1126
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeStatus:I

    .line 1127
    packed-switch p1, :pswitch_data_0

    .line 1143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 1144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 1145
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateDroneStatus()V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1129
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 1130
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 1131
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateDroneStatus()V

    goto :goto_0

    .line 1135
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 1136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 1137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0

    .line 1127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onDestroyView()V

    .line 651
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeView(Landroid/view/View;)V

    .line 654
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onDestroy()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->destroy()V

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->destroy()V

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->destroy()V

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingButtonsClickListener:Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->removeListener(Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;)V

    .line 666
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->cancelRecordTimer()V

    .line 667
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/AlertSound;->release()V

    .line 668
    invoke-static {}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->destroy()V

    .line 669
    return-void
.end method

.method protected destroyVideoStream()V
    .locals 3

    .prologue
    .line 1908
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 1912
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 1917
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    .line 1919
    :cond_0
    return-void

    .line 1913
    :catch_0
    move-exception v0

    .line 1914
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected disableTapMode()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method protected enableTapMode()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method

.method protected enterCameraSettings()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1480
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setEnabledVideoSettingsView(Z)V

    .line 1482
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->switchVideoStreamingLayout(Landroid/view/ViewGroup;)V

    .line 1484
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1486
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1487
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideRecording()V

    .line 1490
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1491
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->getTelemetryLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1493
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1496
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1507
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideTinyMap()V

    .line 1508
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideMap()V

    .line 1509
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hidePilotingTopToolbar()V

    .line 1510
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideArtificialHorizon()V

    .line 1511
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideMapCenterOnButton()V

    .line 1514
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 1515
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticksSwitch()V

    .line 1516
    return-void
.end method

.method protected enterFlightPlanMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1695
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showProductSelectionDialogIfNeeded()V

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hidePilotingTopToolbar()V

    .line 1699
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticks()V

    .line 1700
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideRecording()V

    .line 1701
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->moveVideoStreamLeft()V

    .line 1702
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 1703
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideJoysticksSwitch()V

    .line 1704
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideArtificialHorizon()V

    .line 1705
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setVisibility(I)V

    .line 1706
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideFPVButton()V

    .line 1708
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setPilotingMode(I)V

    .line 1711
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setAltitudeSeekBarEnabled(Z)V

    .line 1713
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setFlightPlanEditionEnabled(Z)V

    .line 1714
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->loadSavedPlan()V

    .line 1715
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showFlightPlan()V

    .line 1716
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMustRenderFlightPlan(Z)V

    .line 1717
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    .line 1718
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnUser()V

    .line 1720
    :cond_1
    return-void
.end method

.method protected enterMapMode()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1620
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFollowMe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/CircularMapView;->setVisibility(I)V

    .line 1622
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/RadarMapView;->fullScreen()V

    .line 1623
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->switchVideoStreamingLayout(Landroid/view/ViewGroup;)V

    .line 1624
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideArtificialHorizon()V

    .line 1625
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showFlightPlan()V

    .line 1630
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideFPVButton()V

    .line 1637
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1638
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_3

    .line 1639
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMustRenderFlightPlan(Z)V

    .line 1641
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 1647
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_4

    .line 1648
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapCenterOnButtonView:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setVisibility(I)V

    .line 1649
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapTinyView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1650
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMap()V

    .line 1651
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMapLayer()V

    .line 1652
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMinified(Z)V

    .line 1653
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setFlightPlanEditionEnabled(Z)V

    .line 1654
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    .line 1657
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideFPVButton()V

    .line 1658
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapOverlayButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showFlightplanButton()V

    .line 1660
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setVisibility(I)V

    .line 1662
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setPilotingMode(I)V

    .line 1665
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksInMapMode()V

    .line 1666
    return-void

    .line 1631
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1632
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showRecording()V

    .line 1633
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showPilotingTopToolbar()V

    .line 1634
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    goto :goto_0

    .line 1643
    :cond_6
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    goto :goto_1
.end method

.method protected enterStreamingMode()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1566
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1567
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanModeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setVisibility(I)V

    .line 1573
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_1

    .line 1574
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideMap()V

    .line 1575
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMiniOrTinyMap()V

    .line 1576
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMinified(Z)V

    .line 1577
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setMustRenderFlightPlan(Z)V

    .line 1578
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    .line 1581
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showArtificialHorizon()V

    .line 1582
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksInStreamingMode()V

    .line 1584
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShouldHideFpvButton:Z

    if-eqz v0, :cond_3

    .line 1585
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->hideFPVButton()V

    .line 1589
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1590
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapOverlayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mStreamingLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->switchVideoStreamingLayout(Landroid/view/ViewGroup;)V

    .line 1594
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setPilotingMode(I)V

    .line 1595
    return-void

    .line 1568
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showPilotingTopToolbar()V

    .line 1570
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showRecording()V

    goto :goto_0

    .line 1587
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showFPVButton()V

    goto :goto_1
.end method

.method protected exitCameraSettings()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1520
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->switchVideoStreamingLayout(Landroid/view/ViewGroup;)V

    .line 1523
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showRecording()V

    .line 1524
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showFlightplanButton()V

    .line 1525
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMap()V

    .line 1534
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMapCenterOnButton()V

    .line 1536
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->getTelemetryLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1539
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1540
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->getTelemetryLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1542
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showPilotingTopToolbar()V

    .line 1545
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeStreaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1546
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksInStreamingMode()V

    .line 1550
    :cond_1
    :goto_1
    return-void

    .line 1526
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeStreaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1527
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showRecording()V

    .line 1528
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showArtificialHorizon()V

    .line 1529
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showMiniOrTinyMap()V

    goto :goto_0

    .line 1530
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1547
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->showJoysticksInMapMode()V

    goto :goto_1
.end method

.method protected hideFPVButton()V
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1800
    :cond_0
    return-void
.end method

.method protected hideJoysticks()V
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mJoysticksLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mJoysticksLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AnimationHelper;->hideWithFadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected hideJoysticksSwitch()V
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1790
    return-void
.end method

.method protected hideMap()V
    .locals 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/RadarMapView;->setVisibility(I)V

    .line 1737
    return-void
.end method

.method protected hidePilotingTopToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1852
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingToolbarView:Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1853
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1857
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1859
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1860
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1862
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1863
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1865
    :cond_3
    return-void
.end method

.method protected hideRecording()V
    .locals 2

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1762
    return-void
.end method

.method protected initVideoStreaming()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1889
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1891
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 1894
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1897
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/view/FixedRatioTextureView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/view/FixedRatioTextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    .line 1898
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    new-instance v2, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;

    invoke-direct {v2}, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1899
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCurrentStreamingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1900
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->registerView(Landroid/view/View;)V

    .line 1901
    return-void
.end method

.method protected isControllerConnected()Z
    .locals 1

    .prologue
    .line 2075
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isSkycontrollerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isGamepadConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isFpvSupported()Z
.end method

.method protected isGamepadConnected()Z
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->isASkyController()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPilotingModeFlightPlan()Z
    .locals 2

    .prologue
    .line 2028
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPilotingModeFollowMe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2032
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPilotingModeMap()Z
    .locals 2

    .prologue
    .line 2036
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPilotingModeStreaming()Z
    .locals 1

    .prologue
    .line 2040
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isSkyControllerMandatory()Z
.end method

.method protected isSkycontrollerConnected()Z
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lowMemory()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onLowMemory()V

    .line 688
    :cond_0
    return-void
.end method

.method protected moveVideoStreamCenter()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 1934
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    .line 1935
    .local v0, "autoTransition":Landroid/support/transition/AutoTransition;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/support/transition/AutoTransition;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 1936
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 1937
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1938
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v6

    if-eqz v3, :cond_0

    .line 1939
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1940
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1941
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1942
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1944
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTinyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1945
    .local v1, "centerMapLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1946
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1947
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTinyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1949
    .end local v1    # "centerMapLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v3, :cond_1

    .line 1950
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->onVideoStreamCenter()V

    .line 1952
    :cond_1
    return-void
.end method

.method protected moveVideoStreamLeft()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0x9

    .line 1955
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    .line 1956
    .local v0, "autoTransition":Landroid/support/transition/AutoTransition;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/support/transition/AutoTransition;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 1957
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 1958
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1959
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v7

    if-eqz v3, :cond_0

    .line 1960
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1961
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1962
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1963
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1965
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTinyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1966
    .local v1, "centerMapLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1967
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMiniStreamingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1968
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTinyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1970
    .end local v1    # "centerMapLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v3, :cond_1

    .line 1971
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->onVideoStreamLeft()V

    .line 1973
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .line 702
    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "shouldStayInHud":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v1, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->returnFromCameraSettingsHud()V

    .line 677
    const/4 v0, 0x1

    .line 679
    :cond_0
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 636
    const-string v1, "camera_settings"

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v1, :cond_0

    .line 638
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 639
    .local v0, "mapState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/map/IMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 640
    const-string v1, "flight_plan_map_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 642
    .end local v0    # "mapState":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 645
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPause:Z

    .line 597
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/AlertSound;->stopRepeatSound()V

    .line 599
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 600
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 601
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 603
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->removeListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V

    .line 609
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->pause()V

    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->pause()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onPause()V

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->pause()V

    .line 619
    :cond_2
    return-void
.end method

.method public resetArtificialHorizonControllerView()V
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->initViews(Landroid/view/View;)V

    .line 1310
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->resume()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->resume()V

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeFlightPlan()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanRegistrationManager:Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 580
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterMapMode()V

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->resume()V

    .line 587
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->addListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V

    .line 588
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 589
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 590
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPreferenceChangeListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 591
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    .line 693
    .local v0, "visibilityChanged":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 697
    return-void

    .line 692
    .end local v0    # "visibilityChanged":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showFPVButton()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1806
    :cond_0
    return-void
.end method

.method protected showJoysticks()V
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mJoysticksLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1743
    :goto_0
    return-void

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mJoysticksLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mJoysticksLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract showJoysticksInMapModeWithoutGamepadConnected()V
.end method

.method protected abstract showJoysticksInStreamingModeWithoutGamepadConnected()V
.end method

.method protected showJoysticksSwitch()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mShowJoysticksSwitchView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1794
    return-void
.end method

.method protected showMap()V
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/RadarMapView;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;)V

    .line 1733
    return-void
.end method

.method protected showPilotingTopToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1835
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPilotingToolbarView:Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1836
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeButton:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    .line 1837
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1841
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingVideoButtonView:Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSwitchFpvButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1846
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapOverlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1847
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapOverlayButton:Landroid/view/View;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 1849
    :cond_3
    return-void
.end method

.method protected showRecording()V
    .locals 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1758
    :goto_0
    return-void

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public showUi(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 923
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->setVisibility(I)V

    .line 927
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 923
    goto :goto_0

    :cond_2
    move v1, v2

    .line 925
    goto :goto_1
.end method

.method public start()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mPause:Z

    .line 557
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->start()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->start()V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->setTimeElaspedListener(Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;)V

    .line 564
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->stop()V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->setTimeElaspedListener(Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;)V

    .line 628
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->stop()V

    .line 631
    :cond_1
    return-void
.end method

.method protected abstract updateAlertMessage()V
.end method

.method protected updateCoPiloting()V
    .locals 2

    .prologue
    .line 1278
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCoPilotingState()I

    move-result v0

    .line 1280
    .local v0, "coPilotingState":I
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCoPilotingState:I

    if-eq v0, v1, :cond_0

    .line 1281
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCoPilotingState:I

    .line 1282
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCoPilotingState:I

    if-nez v1, :cond_1

    .line 1283
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateCoPilotingEnabled()V

    .line 1289
    .end local v0    # "coPilotingState":I
    :cond_0
    :goto_0
    return-void

    .line 1285
    .restart local v0    # "coPilotingState":I
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateCoPilotingDisabled()V

    goto :goto_0
.end method

.method public updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 4
    .param p1, "connectionState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 1227
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v2, p1, :cond_3

    .line 1228
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    .line 1229
    .local v1, "wasConnected":Z
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 1230
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    .line 1232
    .local v0, "isConnectedNow":Z
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 1233
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->destroyVideoStream()V

    .line 1234
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->startStreamingNoSignalAnimation()V

    .line 1242
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 1243
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    .line 1244
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 1249
    :cond_1
    :goto_1
    if-eq v1, v0, :cond_2

    .line 1250
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateDroneConnected(Z)V

    .line 1253
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateConnectionState(ZZ)V

    .line 1255
    .end local v0    # "isConnectedNow":Z
    .end local v1    # "wasConnected":Z
    :cond_3
    return-void

    .line 1235
    .restart local v0    # "isConnectedNow":Z
    .restart local v1    # "wasConnected":Z
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 1236
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initVideoStreaming()V

    .line 1237
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->stopStreamingNoSignalAnimation()V

    goto :goto_0

    .line 1238
    :cond_5
    if-nez v0, :cond_0

    .line 1239
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->startStreamingNoSignalAnimation()V

    goto :goto_0

    .line 1245
    :cond_6
    if-nez v1, :cond_1

    .line 1246
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlyingState()V

    goto :goto_1
.end method

.method protected updateConnectionState(ZZ)V
    .locals 0
    .param p1, "isConnectedNow"    # Z
    .param p2, "wasConnected"    # Z

    .prologue
    .line 1259
    return-void
.end method

.method protected updateFlyingState()V
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlyingState:I

    packed-switch v0, :pswitch_data_0

    .line 1082
    :goto_0
    return-void

    .line 1057
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiWaitingUserTakeOffAction()V

    goto :goto_0

    .line 1062
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneOnTheGround()V

    goto :goto_0

    .line 1066
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneLanding()V

    goto :goto_0

    .line 1071
    :pswitch_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneInTheAir()V

    goto :goto_0

    .line 1076
    :pswitch_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneTakingOff()V

    goto :goto_0

    .line 1055
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected updateFlyingState(I)V
    .locals 1
    .param p1, "flyingState"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1045
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlyingState:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mFlyingState:I

    .line 1047
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlyingState()V

    .line 1049
    :cond_0
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2
    .param p1, "distance"    # F
    .param p2, "bearing"    # F

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isLocationWithGpsFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateDistance(ZF)V

    .line 1315
    return-void

    .line 1314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateScreenRotation()V
    .locals 0

    .prologue
    .line 1318
    return-void
.end method

.method protected updateUiOnDroneInTheAir()V
    .locals 2

    .prologue
    .line 1115
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mReturnHomeStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 1122
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    goto :goto_0
.end method

.method protected updateUiOnDroneLanding()V
    .locals 0

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneOnTheGround()V

    .line 1102
    return-void
.end method

.method protected updateUiOnDroneOnTheGround()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 1095
    return-void
.end method

.method protected updateUiOnDroneTakingOff()V
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 1109
    return-void
.end method

.method protected updateUiWaitingUserTakeOffAction()V
    .locals 0

    .prologue
    .line 1088
    return-void
.end method

.method public updateView()V
    .locals 6

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-nez v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlyingState(I)V

    .line 1026
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getReturnHomeStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateReturnHomeStatus(I)V

    .line 1027
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSpeed()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateSpeed(D)V

    .line 1028
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isAutoRecordEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateCameraMode(ZI)V

    .line 1029
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getVideoResolutionsWithDefault()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateVideoResolutions(I)V

    .line 1030
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPictureFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePictureFormat(I)V

    .line 1031
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateRecordingState(I)V

    .line 1032
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRecordingStartTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastRecordingDuration()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateRecordStartTime(JJ)V

    .line 1033
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPhotoCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->updatePhotoCount(I)V

    .line 1034
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPhotoCaptureState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updatePhotoCaptureState(I)V

    .line 1035
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateAlertMessage()V

    .line 1036
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlightPlanMavlinkPlayingState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateFlightPlanMavlinkState(IZ)V

    .line 1037
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->updateView()V

    goto :goto_0
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    .line 1274
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateCoPiloting()V

    .line 1275
    return-void
.end method

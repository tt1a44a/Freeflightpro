.class public Lcom/parrot/freeflight/flightplan/ui/MapUIController;
.super Ljava/lang/Object;
.source "MapUIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;,
        Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;,
        Lcom/parrot/freeflight/flightplan/ui/MapUIController$NavigationMode;,
        Lcom/parrot/freeflight/flightplan/ui/MapUIController$PointType;
    }
.end annotation


# static fields
.field private static final DRAWABLE_LEVEL_PAUSE:I = 0x1

.field private static final DRAWABLE_LEVEL_PLAY:I = 0x0

.field private static final FIRMWARE_POI_VERSION:Lcom/parrot/freeflight/util/Version;

.field public static final FLIGHTPLAN:I = 0x0

.field public static final NB_BUTTONS_TOP_SIDE:I = 0x3

.field public static final NONE:I = -0x1

.field public static final POINT_POI:I = 0x1

.field public static final POINT_UNKNOWN:I = -0x1

.field public static final POINT_WAY:I = 0x0

.field public static final TAPMODE:I = 0x1


# instance fields
.field private mAlertDialogs:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mAltitudeOnStartTracking:I

.field private final mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAltitudeSeekBarLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAltitudeValue:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mButtonsFadeInAnimation:Landroid/view/animation/Animation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mButtonsFadeOutAnimation:Landroid/view/animation/Animation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mButtonsHidden:Z

.field private mCenterOn:I

.field private mCenterOnImageButton:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

.field private mComponentsErrorsContainer:Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDestroyed:Z

.field protected mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
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

.field private mEditionEnabled:Z

.field private final mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanMavlinkPlayingState:I

.field private final mFlightPlanPlayable:Z

.field protected final mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlyingState:I

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHomeLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsMapAlreadyDisplayed:Z

.field private final mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMapController:Lcom/parrot/freeflight/flightplan/MapController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

.field private mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

.field private mMavlinkLocked:Z

.field private final mMavlinkStateListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMoveToPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private mMoveToStatus:I

.field private mNavigationMode:I

.field private final mOnMapMovedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

.field private mOpeningPiloting:Z

.field private mPilotedPOIPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private mPilotedPOIStatus:I

.field private mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlayButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPoiEditionStarted:Z

.field private mPointIndex:I

.field private mPointType:I

.field private final mProductTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRedoButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRedoButtonEnabled:Z

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResumed:Z

.field private final mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShouldUpdateUiSnapshotReady:Z

.field private mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSnackbar:Landroid/support/design/widget/Snackbar;

.field private final mSnapshotListener:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSnapshotTaker:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSpeedBridleEventReceiver:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSpeedOnStartTracking:I

.field private final mSpeedSeekBar:Landroid/widget/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedSeekBarLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedValue:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStarted:Z

.field private mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTimelineButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUndoButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUndoButtonEnabled:Z

.field private mUserLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    const-string v1, "3.2.0"

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->FIRMWARE_POI_VERSION:Lcom/parrot/freeflight/util/Version;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/view/View;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;Lcom/parrot/freeflight/map/RadarMapView;Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;ZZ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "dataCenter"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "onButtonClickListener"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "glRenderingView"    # Lcom/parrot/freeflight/map/MapGLRenderingView;
    .param p8, "mapLayout"    # Lcom/parrot/freeflight/map/GLMapLayout;
    .param p9, "iMap"    # Lcom/parrot/freeflight/map/IMap;
    .param p10, "iMapView"    # Lcom/parrot/freeflight/map/IMapView;
    .param p11, "radarMapView"    # Lcom/parrot/freeflight/map/RadarMapView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "centerOnImageButton"    # Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;
    .param p13, "isMinified"    # Z
    .param p14, "flightPlanPlayable"    # Z

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v2, Landroid/os/Handler;

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHandler:Landroid/os/Handler;

    .line 123
    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 125
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAlertDialogs:Landroid/util/SparseArray;

    .line 130
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlyingState:I

    .line 134
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    .line 153
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 155
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPointType:I

    .line 157
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPointIndex:I

    .line 158
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMavlinkPlayingState:I

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mEditionEnabled:Z

    .line 167
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsHidden:Z

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButtonEnabled:Z

    .line 169
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButtonEnabled:Z

    .line 170
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPoiEditionStarted:Z

    .line 173
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkLocked:Z

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDestroyed:Z

    .line 180
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToStatus:I

    .line 183
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIStatus:I

    .line 192
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mIsMapAlreadyDisplayed:Z

    .line 956
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    .line 983
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$18;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$18;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mOnMapMovedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    .line 1001
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    .line 1211
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 1233
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$21;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$21;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 1243
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$22;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$22;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 1251
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$23;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$23;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 1413
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$24;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkStateListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .line 1448
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedBridleEventReceiver:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    .line 250
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    .line 251
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    .line 252
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 253
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 254
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 255
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 256
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 257
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getFlightPlanManager()Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    .line 258
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->setSkyControllerModel(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 259
    new-instance v2, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mComponentsErrorsContainer:Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;

    .line 260
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    .line 261
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    .line 262
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 263
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanPlayable:Z

    .line 265
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 266
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 268
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnapshotListener:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;

    .line 288
    const v2, 0x7f0a04a4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mProductTextView:Landroid/widget/TextView;

    .line 289
    const v2, 0x7f0a04c8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTitleView:Landroid/widget/TextView;

    .line 290
    const v2, 0x7f0a02cd

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBarLayout:Landroid/widget/RelativeLayout;

    .line 291
    const v2, 0x7f0a03f4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeValue:Landroid/widget/TextView;

    .line 292
    const v2, 0x7f0a03f2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/view/VerticalSlider;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;

    .line 293
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/view/VerticalSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 327
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 329
    const v2, 0x7f0a02ce

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBarLayout:Landroid/widget/RelativeLayout;

    .line 330
    const v2, 0x7f0a03f9

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedValue:Landroid/widget/TextView;

    .line 331
    const v2, 0x7f0a03f7

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBar:Landroid/widget/SeekBar;

    .line 332
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$3;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 352
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSpeedSeekBarEnabled(Z)V

    .line 354
    const v2, 0x7f0a0168

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    .line 355
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v2, 0x7f0a00c2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    .line 364
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$5;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v2, 0x7f0a00b3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    .line 372
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$6;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$6;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v2, 0x7f0a0072

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightsView:Landroid/view/View;

    .line 380
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightsView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v2, 0x7f0a0169

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    .line 393
    const v2, 0x7f0a00ac

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    .line 394
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$8;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$8;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeInAnimation:Landroid/view/animation/Animation;

    .line 402
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 403
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$9;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$9;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeOutAnimation:Landroid/view/animation/Animation;

    .line 411
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 412
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$10;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$10;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUserLocation:Landroid/location/Location;

    .line 420
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateFlyingState()V

    .line 421
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateHomeLocation()V

    .line 423
    new-instance v2, Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move/from16 v7, p13

    invoke-direct/range {v2 .. v7}, Lcom/parrot/freeflight/flightplan/MapController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;Z)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    .line 424
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/MapController;->setUserLocation(Landroid/location/Location;)V

    .line 426
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/MapController;->setHomeLocation(Landroid/location/Location;)V

    .line 427
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->setMap(Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;)V

    .line 428
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/MapController;->initMapParams()V

    .line 429
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateGeofence()V

    .line 431
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/map/GLMapLayout;->addSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V

    .line 441
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/MapController;->getFlightPlanGlScene()Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v5

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPlanProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v10

    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-object/from16 v4, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v11}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 442
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v2, v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v2, :cond_0

    .line 443
    new-instance v2, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v5, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/MapController;->getTapModeGlScene()Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    move-result-object v8

    move-object/from16 v4, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/tapmode/TapModeGlScene;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .line 446
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    sget-object v3, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TEMP_SNAPSHOT:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnapshotListener:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;

    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnapshotTaker:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    .line 448
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v12, 0x1

    .line 449
    .local v12, "droneConnected":Z
    :goto_0
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOnImageButton:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    .line 450
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOnImageButton:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, v12}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setData(Landroid/location/Location;Z)V

    .line 452
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setupMapPadding()V

    .line 454
    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-nez v2, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->loadSavedPlan()V

    .line 456
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->resetUiForNewPlan()V

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->fixPreLollipopTheme(Landroid/content/Context;Landroid/view/View;)V

    .line 460
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTitleView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 461
    return-void

    .line 448
    .end local v12    # "droneConnected":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mResumed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPointType:I

    return v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPointType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPointIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPointIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeOnStartTracking:I

    return v0
.end method

.method static synthetic access$1402(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeOnStartTracking:I

    return p1
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedOnStartTracking:I

    return v0
.end method

.method static synthetic access$1602(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedOnStartTracking:I

    return p1
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnapshotTaker:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->changeButtonsVisibility(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mIsMapAlreadyDisplayed:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mIsMapAlreadyDisplayed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateUiTakingSnapshot(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/FlightPlanManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUserLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOnImageButton:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/map/RadarMapView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRadarMapView:Lcom/parrot/freeflight/map/RadarMapView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPoiEditionStarted:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPoiEditionStarted:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/view/VerticalSlider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setSpeedProgress(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanPlayable:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButtonEnabled:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButtonEnabled:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButtonEnabled:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButtonEnabled:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsHidden:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsHidden:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mShouldUpdateUiSnapshotReady:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Landroid/view/animation/Animation;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->startButtonsAnimations(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mButtonsFadeOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mEditionEnabled:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateFlightPlanComponents(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mStarted:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedBridleEventReceiver:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateView(Z)V

    return-void
.end method

.method static synthetic access$5102(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMavlinkPlayingState:I

    return p1
.end method

.method static synthetic access$5200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setAltitudeProgress(I)V

    return-void
.end method

.method private changeButtonsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 925
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 930
    return-void
.end method

.method private chargeNewMavLinkFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 865
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->refreshPlanWithSavedPlan(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->clear()V

    .line 867
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->clear()V

    .line 868
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->loadSavedPlan()V

    .line 869
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->resetUiForNewPlan()V

    .line 871
    :cond_0
    return-void
.end method

.method private createNewFlightPlan()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->clear()V

    .line 857
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->clear()V

    .line 858
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->clear()V

    .line 859
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->resetUiForNewPlan()V

    .line 861
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->resetController()V

    .line 862
    return-void
.end method

.method private dismissSnackbar()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSnackbar:Landroid/support/design/widget/Snackbar;

    .line 1308
    :cond_0
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1199
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1201
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    const v2, 0x7f0a03f3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1205
    .local v0, "altitudeSeekBarIcon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    const v2, 0x7f0a03f8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1207
    .local v1, "speedSeekBarIcon":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1209
    .end local v0    # "altitudeSeekBarIcon":Landroid/widget/ImageView;
    .end local v1    # "speedSeekBarIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 636
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v2, 0x7f1104b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private hideComponentErrorDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 761
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAlertDialogs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    .line 762
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAlertDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 766
    return-void
.end method

.method private isMoveToRunning()Z
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPilotedPOIRunning()Z
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetUiForNewPlan()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateLayerButtons(Z)V

    .line 911
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, v2, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSeekBarEnabled(ZZ)V

    .line 912
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setRedoButtonEnabled(Z)V

    .line 913
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setUndoButtonEnabled(Z)V

    .line 914
    return-void
.end method

.method private setAltitudeProgress(I)V
    .locals 2
    .param p1, "altitude"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/VerticalSlider;->setProgress(I)V

    .line 994
    return-void
.end method

.method private setSpeedProgress(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 997
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedValue:Landroid/widget/TextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 999
    return-void
.end method

.method private setupMapPadding()V
    .locals 5

    .prologue
    .line 1402
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1403
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f06024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 1404
    .local v0, "mapInteractionPadding":I
    const v3, 0x7f06024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1405
    .local v1, "mapInteractionPaddingBottom":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v3, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->updateMapInteractionPadding(II)V

    .line 1406
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    if-eqz v3, :cond_0

    .line 1407
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {v3, v0, v1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->updateMapInteractionPadding(II)V

    .line 1410
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    const v4, 0x7f060251

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/MapController;->setMapLogoPaddingVertical(I)V

    .line 1411
    return-void
.end method

.method private showComponentErrorDialog(Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;)V
    .locals 6
    .param p1, "componentError"    # Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 740
    iget-boolean v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 758
    :goto_0
    return-void

    .line 744
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v5, 0x7f120009

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f1107a7

    .line 745
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 746
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getMessage()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 747
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getPositiveActionButtonText()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getPositiveActionButtonOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 749
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getNegativeActionButtonText()I

    move-result v2

    .line 750
    .local v2, "negativeActionButtonText":I
    if-eqz v2, :cond_1

    .line 751
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getNegativeActionButtonOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 754
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 755
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAlertDialogs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getComponent()Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->getType()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 757
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showPoiNotSupportedWarningDialog()V
    .locals 5

    .prologue
    .line 714
    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 737
    :goto_0
    return-void

    .line 718
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$14;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    .line 724
    .local v0, "onContinueClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/MapUIController$15;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$15;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    .line 730
    .local v1, "onUpdateClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v4, 0x7f120008

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1107a7

    .line 731
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110259

    .line 732
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110171

    .line 733
    invoke-virtual {v2, v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f11075f

    .line 734
    invoke-virtual {v2, v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f11012c

    const/4 v4, 0x0

    .line 735
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 736
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private startButtonsAnimations(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTimelineButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 918
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 919
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 920
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 921
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 922
    return-void
.end method

.method private updateConnectionState()V
    .locals 3

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 1359
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v2, v0, :cond_1

    .line 1360
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 1361
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    .line 1362
    .local v1, "droneConnected":Z
    if-nez v1, :cond_0

    .line 1363
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->resetController()V

    .line 1364
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->dismissSnackbar()V

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOnImageButton:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setDroneLocationKnown(Z)V

    .line 1368
    .end local v1    # "droneConnected":Z
    :cond_1
    return-void

    .line 1358
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    :cond_2
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    goto :goto_0
.end method

.method private updateFlightPlanComponents(Z)V
    .locals 11
    .param p1, "displayError"    # Z

    .prologue
    .line 1371
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v9, :cond_3

    .line 1372
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlightPlanComponents()Ljava/util/Map;

    move-result-object v8

    .line 1373
    .local v8, "modelComponents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mComponentsErrorsContainer:Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;->getComponentsErrors()Ljava/util/Map;

    move-result-object v4

    .line 1375
    .local v4, "localComponentsError":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;>;"
    const/4 v0, 0x0

    .line 1376
    .local v0, "firstError":Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1377
    .local v6, "modelComponentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    .line 1379
    .local v2, "localComponentError":Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
    if-eqz v2, :cond_0

    .line 1380
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    .line 1381
    .local v5, "modelComponent":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getComponent()Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    move-result-object v1

    .line 1382
    .local v1, "localComponent":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->getState()Z

    move-result v7

    .line 1383
    .local v7, "modelComponentState":Z
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->getState()Z

    move-result v3

    .line 1384
    .local v3, "localComponentState":Z
    if-eq v7, v3, :cond_0

    .line 1385
    invoke-virtual {v1, v7}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->setState(Z)V

    .line 1386
    if-eqz v7, :cond_1

    .line 1387
    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->getType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->hideComponentErrorDialog(I)V

    goto :goto_0

    .line 1388
    :cond_1
    if-nez v0, :cond_0

    .line 1389
    move-object v0, v2

    goto :goto_0

    .line 1394
    .end local v1    # "localComponent":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    .end local v2    # "localComponentError":Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
    .end local v3    # "localComponentState":Z
    .end local v5    # "modelComponent":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    .end local v6    # "modelComponentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    .end local v7    # "modelComponentState":Z
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1395
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updatePlayButton(Z)V

    .line 1396
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showComponentErrorDialog(Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;)V

    .line 1399
    .end local v0    # "firstError":Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
    .end local v4    # "localComponentsError":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;>;"
    .end local v8    # "modelComponents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    :cond_3
    return-void
.end method

.method private updateFlightPlanLockState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1311
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 1312
    .local v0, "locked":Z
    :goto_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkLocked:Z

    if-eq v3, v0, :cond_0

    .line 1313
    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkLocked:Z

    .line 1315
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1316
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    iget-boolean v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkLocked:Z

    if-nez v4, :cond_2

    :goto_1
    invoke-interface {v3, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updatePlayButton(Z)V

    .line 1319
    :cond_0
    return-void

    .end local v0    # "locked":Z
    :cond_1
    move v0, v2

    .line 1311
    goto :goto_0

    .restart local v0    # "locked":Z
    :cond_2
    move v1, v2

    .line 1316
    goto :goto_1
.end method

.method private updateFlyingState()V
    .locals 2

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v0

    .line 1298
    .local v0, "currentFlyingState":I
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlyingState:I

    if-eq v1, v0, :cond_0

    .line 1299
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlyingState:I

    .line 1301
    :cond_0
    return-void

    .line 1297
    .end local v0    # "currentFlyingState":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateGeofence()V
    .locals 4

    .prologue
    .line 1322
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getDistanceRestrictionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 1324
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1326
    .local v0, "isActivated":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 1327
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    .line 1326
    invoke-virtual {v1, v2, v3, v0}, Lcom/parrot/freeflight/flightplan/MapController;->setGeofence(DZ)V

    .line 1331
    .end local v0    # "isActivated":Z
    :cond_0
    return-void

    .line 1324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHomeLocation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1286
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlyingState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlyingState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getHomePosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 1291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    .line 1293
    :cond_1
    return-void
.end method

.method private updateMavlinkState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1335
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlightPlanMavlinkPlayingState()I

    move-result v0

    .line 1337
    .local v0, "flightPlanMavlinkPlayingState":I
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMavlinkPlayingState:I

    if-eq v0, v1, :cond_0

    .line 1338
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMavlinkPlayingState:I

    .line 1340
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMavlinkPlayingState:I

    packed-switch v1, :pswitch_data_0

    .line 1352
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkLocked:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updatePlayButton(Z)V

    .line 1353
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMavlinkPlayingState:I

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1355
    :cond_0
    return-void

    .line 1335
    .end local v0    # "flightPlanMavlinkPlayingState":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1342
    .restart local v0    # "flightPlanMavlinkPlayingState":I
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->goToMavlinkState(I)V

    goto :goto_1

    .line 1345
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->goToMavlinkState(I)V

    goto :goto_1

    .line 1348
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->goToMavlinkState(I)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1352
    goto :goto_2

    :cond_3
    move v2, v3

    .line 1353
    goto :goto_3

    .line 1340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateUiTakingSnapshot(Z)V
    .locals 1
    .param p1, "snapshotReady"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateLayerButtons(Z)V

    .line 953
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->enableGestures(Z)V

    .line 954
    return-void
.end method

.method private updateView(Z)V
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 1261
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateFlyingState()V

    .line 1262
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 1263
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateHomeLocation()V

    .line 1264
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mHomeLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->setHomeLocation(Landroid/location/Location;)V

    .line 1267
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateMavlinkState()V

    .line 1268
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateConnectionState()V

    .line 1269
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateFlightPlanComponents(Z)V

    .line 1270
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateGeofence()V

    .line 1272
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v0, v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_1

    .line 1273
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateFlyingState()V

    .line 1274
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateFlightPlanLockState()V

    .line 1277
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v0, v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMoveToStatus()I

    move-result v1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 1279
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMoveToLocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    .line 1278
    invoke-virtual {p0, v1, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateMoveTo(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 1280
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOIStatus()I

    move-result v1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 1281
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOILocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    .line 1280
    invoke-virtual {p0, v1, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updatePilotedPOI(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 1283
    :cond_2
    return-void

    .line 1269
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearMap()V
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->clear()V

    .line 1516
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDestroyed:Z

    .line 829
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->destroy()V

    .line 830
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 831
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 832
    return-void
.end method

.method public enableAltitudeSeekBarIfNeeded()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->shouldDisplaySeekBar()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 890
    return-void
.end method

.method public forceRefreshMap()V
    .locals 2

    .prologue
    .line 1478
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/MapUIController$26;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$26;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1484
    return-void
.end method

.method public hideFlightPlanWidgets()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 630
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->setVisibility(I)V

    .line 633
    return-void
.end method

.method public loadSavedPlan()V
    .locals 3

    .prologue
    .line 657
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 658
    .local v0, "planProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 660
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$12;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/MapController;->setOnCameraLoadedListener(Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;)V

    .line 668
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/MapController;->initCameraFromMapInfo(Ljava/util/List;)V

    .line 669
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 842
    packed-switch p2, :pswitch_data_0

    .line 852
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 844
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->createNewFlightPlan()V

    .line 845
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showProductSelectionDialog()V

    goto :goto_0

    .line 848
    :pswitch_1
    const-string v2, "KEY_EXTRA_UUID"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "uuid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->chargeNewMavLinkFile(Ljava/lang/String;)V

    goto :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCalibrationClicked()V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->reset()V

    .line 709
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 711
    :cond_0
    return-void
.end method

.method public onCenterOnButtonClicked()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 468
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUserLocation:Landroid/location/Location;

    if-eqz v4, :cond_1

    move v1, v2

    .line 469
    .local v1, "enableCenterOnUser":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 471
    .local v0, "enableCenterOnDrone":Z
    :goto_1
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-nez v3, :cond_3

    .line 473
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    .line 507
    :cond_0
    :goto_2
    return-void

    .end local v0    # "enableCenterOnDrone":Z
    .end local v1    # "enableCenterOnUser":Z
    :cond_1
    move v1, v3

    .line 468
    goto :goto_0

    .restart local v1    # "enableCenterOnUser":Z
    :cond_2
    move v0, v3

    .line 469
    goto :goto_1

    .line 477
    .restart local v0    # "enableCenterOnDrone":Z
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/MapController;->getCurrentCentering()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 480
    :pswitch_0
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOn:I

    if-ne v3, v5, :cond_4

    if-eqz v1, :cond_4

    .line 481
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 482
    :cond_4
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOn:I

    if-ne v3, v2, :cond_5

    if-eqz v0, :cond_5

    .line 483
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 486
    :cond_5
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 492
    :pswitch_1
    if-eqz v1, :cond_6

    .line 493
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 494
    :cond_6
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 500
    :pswitch_2
    if-eqz v0, :cond_7

    .line 501
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 502
    :cond_7
    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    goto :goto_2

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoStreamCenter()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    const v1, 0x7f060250

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->setMapLogoPaddingVertical(I)V

    .line 1530
    return-void
.end method

.method public onVideoStreamLeft()V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    const v1, 0x7f060251

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->setMapLogoPaddingVertical(I)V

    .line 1538
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mResumed:Z

    .line 802
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->pause()V

    .line 803
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removeUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 804
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setOnSpeedBridleListener(Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;)V

    .line 807
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->dismissSnackbar()V

    .line 808
    return-void
.end method

.method public playFlightPlan()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    .line 672
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 673
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 674
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v4, 0x7f11015e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    .line 704
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlightPlanSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 677
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v4, 0x7f110258

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 679
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 680
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v4, 0x7f11024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 681
    .local v0, "calibrationSnackBar":Landroid/support/design/widget/Snackbar;
    const v2, 0x7f1100ec

    new-instance v3, Lcom/parrot/freeflight/flightplan/ui/MapUIController$13;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$13;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 687
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 688
    .end local v0    # "calibrationSnackBar":Landroid/support/design/widget/Snackbar;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 689
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->hasFixedWingLanding()Z

    move-result v2

    if-nez v2, :cond_4

    .line 690
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v4, 0x7f110391

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 691
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 692
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    const v4, 0x7f11024e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    goto/16 :goto_0

    .line 694
    :cond_5
    new-instance v1, Lcom/parrot/freeflight/util/Version;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, "droneFwVersion":Lcom/parrot/freeflight/util/Version;
    sget-object v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->FIRMWARE_POI_VERSION:Lcom/parrot/freeflight/util/Version;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v2

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isPoiContinueModeUsed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 696
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showPoiNotSupportedWarningDialog()V

    goto/16 :goto_0

    .line 698
    :cond_6
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 699
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->resetComponentsState()V

    .line 700
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mComponentsErrorsContainer:Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;->resetComponentsErrorState()V

    .line 701
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->requestPlayOrPause(Lcom/parrot/freeflight/core/model/DroneModel;)V

    goto/16 :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 788
    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mResumed:Z

    .line 789
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->requestLocationUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 790
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedBridleEventReceiver:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setOnSpeedBridleListener(Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;)V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mShouldUpdateUiSnapshotReady:Z

    if-eqz v0, :cond_1

    .line 795
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateUiTakingSnapshot(Z)V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mShouldUpdateUiSnapshotReady:Z

    .line 798
    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 835
    return-void
.end method

.method public setAltitudeSeekBarEnabled(Z)V
    .locals 1
    .param p1, "seekBarUiEnabled"    # Z

    .prologue
    .line 893
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 894
    return-void
.end method

.method public setCenterOn(I)V
    .locals 1
    .param p1, "centerOn"    # I

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setCenterOn(I)V

    .line 1469
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOnImageButton:Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setCenterOn(I)V

    .line 1472
    if-eqz p1, :cond_0

    .line 1473
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mCenterOn:I

    .line 1475
    :cond_0
    return-void
.end method

.method public setFlightPlanEditionEnabled(Z)V
    .locals 0
    .param p1, "editionEnabled"    # Z

    .prologue
    .line 1464
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mEditionEnabled:Z

    .line 1465
    return-void
.end method

.method public setMaxAltitude(F)V
    .locals 2
    .param p1, "maxAltitude"    # F

    .prologue
    .line 897
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/VerticalSlider;->setMax(I)V

    .line 900
    :cond_0
    return-void
.end method

.method public setMinified(Z)V
    .locals 1
    .param p1, "minified"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setMinified(Z)V

    .line 465
    return-void
.end method

.method public setMustRenderFlightPlan(Z)V
    .locals 1
    .param p1, "mustRenderFlightPlan"    # Z

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setMustRenderFlightPlan(Z)V

    .line 1508
    return-void
.end method

.method public setMustRenderTapMode(Z)V
    .locals 1
    .param p1, "mustRenderTapMode"    # Z

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setMustRenderTapMode(Z)V

    .line 1512
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 579
    packed-switch p1, :pswitch_data_0

    .line 608
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->stop()V

    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->clearGeofenceAlerts()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->stop()V

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 616
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->hideFlightPlanWidgets()V

    .line 620
    :cond_2
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    .line 621
    return-void

    .line 581
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->stop()V

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->start()V

    .line 586
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->initCameraFromMapInfo(Ljava/util/List;)V

    .line 587
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showFlightPlanWidgets()V

    goto :goto_0

    .line 591
    :pswitch_1
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-nez v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->stop()V

    .line 593
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->clearGeofenceAlerts()V

    .line 595
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    if-eqz v0, :cond_5

    .line 596
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->start()V

    .line 598
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->hideFlightPlanWidgets()V

    .line 599
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->shouldDisplaySeekBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    .line 602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateView(Z)V

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 2
    .param p1, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 934
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 935
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 936
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 938
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 939
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/MapController;->setPlanProductInfos(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 941
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mAltitudeSeekBar:Lcom/parrot/freeflight/view/VerticalSlider;

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/VerticalSlider;->setMax(I)V

    .line 942
    invoke-static {p1}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBarLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mSpeedSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxHorizontalSpeed()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public setTapModeEditionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTapModeMapActionController:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->setEditionEnabled(Z)V

    .line 1522
    :cond_0
    return-void
.end method

.method public shouldDisplaySeekBar()Z
    .locals 2

    .prologue
    .line 641
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v1, v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 644
    .local v0, "bebopModel":Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getCurrentAnimation()I

    move-result v1

    if-nez v1, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInMoveToMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInPilotedPOIMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    const/4 v1, 0x1

    .line 649
    .end local v0    # "bebopModel":Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showElementsOnMap(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapGLRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setMustRender(Z)V

    .line 1493
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->shouldDisplaySeekBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateView(Z)V

    .line 1496
    :cond_0
    return-void
.end method

.method public showFlightPlan()V
    .locals 4

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->clear()V

    .line 1488
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPois()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/MapController;->displayFlightPlan(Ljava/util/List;Ljava/util/List;Z)V

    .line 1489
    return-void
.end method

.method public showFlightPlanWidgets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->setVisibility(I)V

    .line 627
    return-void
.end method

.method public showProductSelectionDialog()V
    .locals 3

    .prologue
    .line 874
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 886
    :goto_0
    return-void

    .line 878
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$16;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$16;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog$OnProductSelectedListener;)V

    .line 885
    .local v0, "selectProductDialog":Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/SelectProductDialog;->show()V

    goto :goto_0
.end method

.method public showProductSelectionDialogIfNeeded()V
    .locals 2

    .prologue
    .line 1499
    new-instance v0, Lcom/parrot/freeflight/flightplan/utils/LoadState;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightplan/utils/LoadState;-><init>(Landroid/content/Context;)V

    .line 1500
    .local v0, "loadState":Lcom/parrot/freeflight/flightplan/utils/LoadState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/utils/LoadState;->isFirstLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/utils/LoadState;->setLoadedOnce()V

    .line 1502
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->showProductSelectionDialog()V

    .line 1504
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mStarted:Z

    .line 773
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 779
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-nez v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->start()V

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkStateListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->addMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V

    .line 783
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mOnMapMovedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;I)V

    .line 784
    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mOpeningPiloting:Z

    .line 785
    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mStarted:Z

    .line 812
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->getMap()Lcom/parrot/freeflight/map/IMap;

    move-result-object v6

    .line 813
    .local v6, "map":Lcom/parrot/freeflight/map/IMap;
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mOpeningPiloting:Z

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->buildFromMap(Lcom/parrot/freeflight/map/IMap;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->saveCurrentState(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/util/Date;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mOnMapMovedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;)V

    .line 823
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanManager:Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMavlinkStateListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->removeMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V

    .line 824
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mFlightPlanMapActionController:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->stop()V

    .line 825
    return-void
.end method

.method public updateMoveTo(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "moveToPosition"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .param p3, "forced"    # Z

    .prologue
    .line 511
    if-nez p3, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToStatus:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 514
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 515
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToStatus:I

    .line 519
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMoveToPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 520
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 522
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/MapController;->addMoveToWayPoint(Lcom/parrot/freeflight/core/model/DroneModel$Position;)V

    .line 523
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 525
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setAltitudeProgress(I)V

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->removeMoveToWayPoint()V

    .line 532
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->isPilotedPOIRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updatePilotedPOI(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "pilotedPOIPosition"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .param p3, "forced"    # Z

    .prologue
    .line 541
    if-nez p3, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIStatus:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 544
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 545
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIStatus:I

    .line 549
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mPilotedPOIPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 550
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/MapController;->removePilotedPOI()V

    .line 562
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->isMoveToRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    goto :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mMapController:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/MapController;->addPilotedPOI(Lcom/parrot/freeflight/core/model/DroneModel$Position;)V

    .line 554
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mNavigationMode:I

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeSeekBarEnabled(Z)V

    .line 556
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setAltitudeProgress(I)V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

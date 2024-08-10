.class public Lcom/parrot/freeflight/infos/DroneInfosUiController;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;,
        Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;,
        Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;,
        Lcom/parrot/freeflight/infos/DroneInfosUiController$MotorDrawableLevel;
    }
.end annotation


# static fields
.field private static final DRONE_INFO_OTHER:I = 0x0

.field private static final DRONE_INFO_SOFTWARE_VERSION:I = 0x1

.field private static final EMPTY_COLOR:I

.field private static final FULL_COLOR:I

.field private static final FULL_THRESHOLD:I = 0x28

.field private static final GOOGLE_MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final LOCATION_ITEM_SOFTWARE_VERSION:I = 0x1

.field private static final MEDIUM_COLOR:I

.field private static final MEDIUM_THRESHOLD:I = 0x14

.field protected static final MOTOR_ERROR_DRAWABLE_LEVEL:I = 0x1

.field protected static final MOTOR_OK_DRAWABLE_LEVEL:I = 0x0

.field protected static final MOTOR_UNKNOWN_DRAWABLE_LEVEL:I = 0x2

.field private static final URI_GEO:Ljava/lang/String; = "geo"

.field private static final URI_QUERY:Ljava/lang/String; = "q"


# instance fields
.field private mAlertSoundState:I

.field private final mBatteryProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBeepDroneButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
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

.field private final mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

.field private mDeviceConnectorState:I

.field private final mDroneCalibrationButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneFlatTrimButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneInfosTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneNotConnectedTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDronePositionLayout:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneTitleTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneWifiSignal:Lcom/parrot/freeflight/home/widget/WifiSignalView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneWifiSignalLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneWifiSignalText:Landroid/widget/TextView;
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

.field private final mLastKnownPositionStatus:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLastKnownPositionText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLastTimeUsedText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMapLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

.field private final mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

.field private final mStopBeepDroneButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWindow:Landroid/view/Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 87
    const/16 v0, 0x8a

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->FULL_COLOR:I

    .line 89
    const/16 v0, 0xc2

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->MEDIUM_COLOR:I

    .line 90
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->EMPTY_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "window"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "smartLocation"    # Lcom/parrot/freeflight/location/SmartLocationManager;
    .param p7, "droneLayoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnectorState:I

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mAlertSoundState:I

    .line 169
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$1;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 183
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$2;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 191
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 615
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$9;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 208
    iput-object p3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mWindow:Landroid/view/Window;

    .line 209
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 211
    iput-object p4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 212
    iput-object p5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 215
    const v1, 0x7f0a0272

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 216
    .local v0, "droneLayout":Landroid/widget/FrameLayout;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 219
    const v1, 0x7f0a02c1

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRootLayout:Landroid/view/View;

    .line 220
    const v1, 0x7f0a012a

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapLayout:Landroid/widget/RelativeLayout;

    .line 221
    const v1, 0x7f0a0381

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    .line 222
    const v1, 0x7f0a0435

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f0a0502

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneTitleTextView:Landroid/widget/TextView;

    .line 224
    const v1, 0x7f0a049c

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneNotConnectedTextView:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f0a0279

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneWifiSignalLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    .line 226
    const v1, 0x7f0a0134

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/home/widget/WifiSignalView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneWifiSignal:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    .line 227
    const v1, 0x7f0a0457

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneWifiSignalText:Landroid/widget/TextView;

    .line 228
    const v1, 0x7f0a0054

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBeepDroneButton:Landroid/widget/ImageView;

    .line 229
    const v1, 0x7f0a00bd

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    .line 230
    const v1, 0x7f0a0068

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    .line 231
    const v1, 0x7f0a0069

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneFlatTrimButton:Landroid/widget/Button;

    .line 232
    const v1, 0x7f0a0131

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastTimeUsedText:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f0a0132

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDronePositionLayout:Landroid/widget/FrameLayout;

    .line 234
    const v1, 0x7f0a0130

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastKnownPositionText:Landroid/widget/TextView;

    .line 235
    const v1, 0x7f0a03b7

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 236
    const v1, 0x7f0a0133

    invoke-virtual {p3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastKnownPositionStatus:Landroid/widget/TextView;

    .line 239
    iput-object p6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 240
    new-instance v1, Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    invoke-direct {v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/RelativePositionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 241
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapLayout:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lcom/parrot/freeflight/map/MapViewFactory;->create(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/map/IMapView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;-><init>(Lcom/parrot/freeflight/map/IMapView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    .line 242
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/map/IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 243
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->init(Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 246
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->beepMyDrone()V

    .line 247
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->flatTrim()V

    .line 248
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->calibrateDrone()V

    .line 249
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->seeDroneLocation()V

    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->initView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 253
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneTitleTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneNotConnectedTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneWifiSignalText:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 257
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneFlatTrimButton:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastTimeUsedText:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastKnownPositionText:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastKnownPositionStatus:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/infos/DroneInfosUiController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 76
    iget v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnectorState:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/infos/DroneInfosUiController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnectorState:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->initView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRootLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method private beepMyDrone()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBeepDroneButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$5;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    return-void
.end method

.method private calibrateDrone()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$6;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    return-void
.end method

.method private flatTrim()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneFlatTrimButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$7;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-void
.end method

.method private getDMSLocation(DZ)Ljava/lang/String;
    .locals 13
    .param p1, "latlng"    # D
    .param p3, "lattitude"    # Z

    .prologue
    .line 578
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 579
    .local v0, "degrees":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double v8, v0, v8

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double v4, v8, v10

    .line 580
    .local v4, "minute":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double v8, v4, v8

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double v6, v8, v10

    .line 583
    .local v6, "seconds":D
    if-eqz p3, :cond_1

    .line 584
    const-wide/16 v8, 0x0

    cmpl-double v3, p1, v8

    if-ltz v3, :cond_0

    const-string v2, "N"

    .line 589
    .local v2, "direction":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v8, "%d\u00b0%2d\'%.2f\'\'%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    double-to-int v11, v0

    .line 590
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    double-to-int v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    .line 589
    invoke-static {v3, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 584
    .end local v2    # "direction":Ljava/lang/String;
    :cond_0
    const-string v2, "S"

    goto :goto_0

    .line 586
    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v3, p1, v8

    if-ltz v3, :cond_2

    const-string v2, "E"

    .restart local v2    # "direction":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v2    # "direction":Ljava/lang/String;
    :cond_2
    const-string v2, "W"

    goto :goto_1
.end method

.method private getReadableDuration(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 11
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "totalSeconds"    # I

    .prologue
    .line 595
    if-gtz p2, :cond_0

    .line 596
    const v6, 0x7f11034b

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 602
    :goto_0
    return-object v6

    .line 598
    :cond_0
    rem-int/lit8 v6, p2, 0x3c

    int-to-long v4, v6

    .line 599
    .local v4, "second":J
    div-int/lit8 v6, p2, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    int-to-long v2, v6

    .line 600
    .local v2, "minute":J
    div-int/lit16 v6, p2, 0xe10

    rem-int/lit8 v6, v6, 0x18

    int-to-long v0, v6

    .line 602
    .local v0, "hour":J
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v7, "%02d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getReadableError(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastMotorError"    # I

    .prologue
    .line 606
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/core/model/DroneModel;->getMotorErrorStringId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 7
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 419
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 421
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 422
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 423
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneInfosTitle:Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v0, "droneInfosList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f1105d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f1106c0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f11033e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f11032f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f11068c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f11025d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlightNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f110394

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastFlightDuration()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->getReadableDuration(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f110747

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getTotalFlightsDuration()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->getReadableDuration(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f110396

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastMotorError()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->getReadableError(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneTitleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneInfosTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getWifiBandState()Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 456
    const v2, 0x7f110606

    .line 460
    .local v2, "wifiBandRes":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneWifiSignalText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 463
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 464
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 465
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Ljava/util/List;Lcom/parrot/freeflight/infos/DroneInfosUiController$1;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 467
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneNotConnectedTextView:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 469
    .end local v0    # "droneInfosList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "wifiBandRes":I
    :cond_0
    return-void

    .line 443
    .restart local v0    # "droneInfosList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :pswitch_0
    const v2, 0x7f11056f

    .line 444
    .restart local v2    # "wifiBandRes":I
    goto :goto_0

    .line 446
    .end local v2    # "wifiBandRes":I
    :pswitch_1
    const v2, 0x7f110570

    .line 447
    .restart local v2    # "wifiBandRes":I
    goto :goto_0

    .line 449
    .end local v2    # "wifiBandRes":I
    :pswitch_2
    const v2, 0x7f110571

    .line 450
    .restart local v2    # "wifiBandRes":I
    goto :goto_0

    .line 452
    .end local v2    # "wifiBandRes":I
    :pswitch_3
    const v2, 0x7f110576

    .line 453
    .restart local v2    # "wifiBandRes":I
    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private seeDroneLocation()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDronePositionLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void
.end method

.method private updateAlertSoundState(I)V
    .locals 4
    .param p1, "alertSoundState"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 525
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    .line 527
    .local v0, "isConnected":Z
    if-nez v0, :cond_1

    .line 528
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mAlertSoundState:I

    .line 552
    .end local v0    # "isConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 532
    .restart local v0    # "isConnected":Z
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mAlertSoundState:I

    if-eq p1, v1, :cond_0

    .line 533
    iput p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mAlertSoundState:I

    .line 534
    packed-switch p1, :pswitch_data_0

    .line 546
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 536
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 540
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mStopBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBeepDroneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->stop()V

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onDestroy()V

    .line 307
    return-void
.end method

.method public lowMemory()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onLowMemory()V

    .line 312
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 653
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 659
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
    .line 636
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .line 641
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 317
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 297
    return-void
.end method

.method public onSettingsPressed()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 665
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onPause()V

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->pause()V

    .line 286
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->resume()V

    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mMapManager:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 280
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 274
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 292
    return-void
.end method

.method protected updateConnectionState()Z
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "isConnected":Z
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v4, :cond_2

    .line 557
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    .line 558
    if-eqz v0, :cond_3

    move v1, v2

    .line 560
    .local v1, "visibilityConnected":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneWifiSignalLayout:Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 561
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 562
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneNotConnectedTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 565
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneFlatTrimButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlatTrimAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    .end local v1    # "visibilityConnected":I
    :cond_2
    return v0

    :cond_3
    move v1, v3

    .line 558
    goto :goto_0
.end method

.method protected updateView()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 472
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v5, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->updateConnectionState()Z

    .line 475
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getBatteryLevel()I

    move-result v3

    .line 476
    .local v3, "level":I
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 477
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1104e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 479
    const/16 v5, 0x28

    if-le v3, v5, :cond_2

    .line 480
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/parrot/freeflight/infos/DroneInfosUiController;->FULL_COLOR:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 481
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    sget v6, Lcom/parrot/freeflight/infos/DroneInfosUiController;->FULL_COLOR:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 492
    .local v4, "location":Landroid/location/Location;
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    cmpl-double v5, v6, v12

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    cmpl-double v5, v6, v12

    if-eqz v5, :cond_5

    .line 493
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    .local v2, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 496
    .local v1, "date":Ljava/util/Date;
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastTimeUsedText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastKnownPositionText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-direct {p0, v8, v9, v11}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->getDMSLocation(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {p0, v8, v9, v10}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->getDMSLocation(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 500
    const v0, 0x7f1101c7

    .line 504
    .local v0, "currentPositionResId":I
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mLastKnownPositionStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 505
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDronePositionLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 506
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateDroneLocation(Landroid/location/Location;)V

    .line 512
    .end local v0    # "currentPositionResId":I
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :goto_2
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v5

    if-nez v5, :cond_6

    .line 513
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    const v7, 0x7f0700d6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    const v7, 0x7f050036

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 520
    :goto_3
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertSoundState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->updateAlertSoundState(I)V

    .line 522
    .end local v3    # "level":I
    .end local v4    # "location":Landroid/location/Location;
    :cond_1
    return-void

    .line 482
    .restart local v3    # "level":I
    :cond_2
    const/16 v5, 0x14

    if-le v3, v5, :cond_3

    .line 483
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/parrot/freeflight/infos/DroneInfosUiController;->MEDIUM_COLOR:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 484
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    sget v6, Lcom/parrot/freeflight/infos/DroneInfosUiController;->MEDIUM_COLOR:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 486
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/parrot/freeflight/infos/DroneInfosUiController;->EMPTY_COLOR:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 487
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mBatteryTextView:Landroid/widget/TextView;

    sget v6, Lcom/parrot/freeflight/infos/DroneInfosUiController;->EMPTY_COLOR:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 502
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v2    # "dateFormat":Ljava/text/DateFormat;
    .restart local v4    # "location":Landroid/location/Location;
    :cond_4
    const v0, 0x7f1101c8

    .restart local v0    # "currentPositionResId":I
    goto :goto_1

    .line 508
    .end local v0    # "currentPositionResId":I
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_5
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDronePositionLayout:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 516
    :cond_6
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    const v7, 0x7f0700d5

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v5, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mDroneCalibrationButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3
.end method

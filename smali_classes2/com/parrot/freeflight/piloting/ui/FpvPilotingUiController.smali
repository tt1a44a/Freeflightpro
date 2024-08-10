.class public Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;
.super Ljava/lang/Object;
.source "FpvPilotingUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;
.implements Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;


# instance fields
.field private mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRelativePositionControllerListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRootLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
            "<***>;"
        }
    .end annotation
.end field

.field private mSettingsVisible:Z

.field private final mStopFpvButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionControllerListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 105
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    .line 131
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 132
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 133
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 134
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 135
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    .line 137
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 138
    new-instance v3, Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionControllerListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    move-object/from16 v0, p4

    invoke-direct {v3, v4, v0, v5}, Lcom/parrot/freeflight/piloting/RelativePositionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 140
    const v3, 0x7f0a02c0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRootLayout:Landroid/view/ViewGroup;

    .line 141
    const v3, 0x7f0a00be

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->createSettingsView(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    if-eqz v3, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->setVisibility(I)V

    .line 154
    :cond_0
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRootLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    const/4 v14, 0x0

    new-instance v15, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$4;

    invoke-direct/range {v15 .. v16}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)V

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v15}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/ui/radar/Radar;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;ZLcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->fixPreLollipopTheme()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/RelativePositionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    return-object v0
.end method

.method private createSettingsView(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
    .locals 2
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ")",
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 167
    instance-of v0, p1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;-><init>(Landroid/content/Context;)V

    .line 172
    :goto_0
    return-object v0

    .line 169
    :cond_0
    instance-of v0, p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_0
    return-void
.end method

.method private updateGamePadMode()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->clear()V

    .line 239
    :cond_1
    return-void

    .line 234
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionControllerListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->unregisterListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onDestroy()V

    .line 212
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onSettingsPressed()V

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
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
    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
    .line 271
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->refreshSettings()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
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
    .line 279
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->refreshSettings()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
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
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 221
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    return-void
.end method

.method public onSettingsPressed()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->showSettings()V

    .line 253
    :goto_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    .line 254
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->updateGamePadMode()V

    .line 255
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->hideSettings()V

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->pause()V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->pause()V

    .line 196
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->resume()V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->resume()V

    .line 190
    return-void
.end method

.method public setGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 243
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->updateGamePadMode()V

    .line 244
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setFpvEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v0, v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->initController(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    instance-of v0, v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView;->initController(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setFpvEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 202
    return-void
.end method

.method public switchFpvContent()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mSettingsVisible:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->switchFpvContent()V

    .line 262
    :cond_0
    return-void
.end method

.method public switchFpvViewModeCommand()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->switchMode()V

    .line 267
    return-void
.end method

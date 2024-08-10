.class public Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;
.super Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.source "ChimeraHudView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContentView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanClosePanel:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanOptionsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/JoystickController",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveToStatus:I

.field private mPilotedPOIStatus:I

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "chimeraModel"    # Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "fpvStatePreference"    # Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
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
    .param p12, "launchMode"    # I

    .prologue
    .line 86
    const v5, 0x7f0c003f

    new-instance v9, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v9, v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V

    .line 44
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mPilotedPOIStatus:I

    .line 47
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mMoveToStatus:I

    .line 147
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 92
    const v3, 0x7f0a01a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mContentView:Landroid/view/ViewGroup;

    .line 93
    const v3, 0x7f0a00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    .line 94
    const v3, 0x7f0a0508

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    .line 95
    const v3, 0x7f0a01a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mFlightPlanClosePanel:Landroid/view/View;

    .line 96
    const v3, 0x7f0a01a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mFlightPlanOptionsView:Landroid/view/View;

    .line 97
    const v3, 0x7f0a047d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 100
    .local v17, "infoTextView":Landroid/widget/TextView;
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v6, v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V

    .line 101
    .local v6, "joystickHandler":Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/piloting/ui/JoystickController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setTwoFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setTwoFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->setCameraListener(Lcom/parrot/freeflight/piloting/ui/CameraListener;)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->initChimeraButtonsOnClickListeners()V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->isSkycontrollerConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->showJoysticksSwitch()V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mFlightPlanClosePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mFlightPlanOptionsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private initChimeraButtonsOnClickListeners()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x3

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0x8

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0x9

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mFlightPlanToolbarView:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;-><init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->setOptionsClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mFlightPlanClosePanel:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;-><init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void
.end method

.method private updateCameraControllerView(Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;)V
    .locals 1
    .param p1, "chimeraModel"    # Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->update(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 274
    return-void
.end method

.method private updatePoiTapMode(II)V
    .locals 1
    .param p1, "pilotedPOIStatus"    # I
    .param p2, "moveToStatus"    # I

    .prologue
    .line 277
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mPilotedPOIStatus:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mMoveToStatus:I

    if-eq v0, p2, :cond_1

    .line 278
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mPilotedPOIStatus:I

    .line 279
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mMoveToStatus:I

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->updateUiOnDroneInTheAir()V

    .line 284
    :cond_1
    return-void
.end method


# virtual methods
.method protected isFpvSupported()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected isSkyControllerMandatory()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->pause()V

    .line 138
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->pause()V

    .line 139
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->resume()V

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected showJoysticksInMapModeWithoutGamepadConnected()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method protected showJoysticksInStreamingModeWithoutGamepadConnected()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->start()V

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->start()V

    .line 122
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->stop()V

    .line 144
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->stop()V

    .line 145
    return-void
.end method

.method protected updateAlertMessage()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getGenericAlerts(Z)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "genericAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->refresh(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 293
    .end local v0    # "genericAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mPause:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/AlertSound;->startRepeatSound()V

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/AlertSound;->stopRepeatSound()V

    goto :goto_0
.end method

.method protected updateUiOnDroneInTheAir()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneInTheAir()V

    .line 267
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->isSkycontrollerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    .line 270
    :cond_0
    return-void
.end method

.method protected updateUiOnDroneOnTheGround()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->isSkycontrollerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateUiOnDroneOnTheGround()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    goto :goto_0
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 6
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 231
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    move-object v0, p1

    .line 233
    check-cast v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;

    .line 235
    .local v0, "chimeraModel":Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateAltitude(DZ)V

    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getBatteryLevel()I

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->hasOneAlert([I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateBatteryLevel(IZ)V

    .line 238
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getGpsFixStatus()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateGpsFixedStatus(IZ)V

    .line 239
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getRssi()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRssiLevel(S)V

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteCtrl(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->updateCameraControllerView(Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;)V

    .line 247
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getPilotedPOIStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getMoveToStatus()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->updatePoiTapMode(II)V

    .line 249
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getMoveToStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getMoveToLocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updateMoveTo(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mMapUIController:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getPilotedPOIStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;->getPilotedPOILocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->updatePilotedPOI(ILcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 253
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setDisconnectedValues()V

    .line 242
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->onDroneDisconnected()V

    goto :goto_0

    .line 237
    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

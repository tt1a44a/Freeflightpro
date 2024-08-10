.class public Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;
.super Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;
.source "SkyControllerFixedWingHudView.java"


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

.field private mCirclingDirection:I

.field private final mInfoTextView:Landroid/widget/TextView;
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
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
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
    .param p12, "switchFpvButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "launchMode"    # I

    .prologue
    .line 62
    const v5, 0x7f0c0040

    move-object/from16 v8, p4

    check-cast v8, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    new-instance v9, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v9, v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    invoke-direct/range {v3 .. v16}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V

    .line 51
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCirclingDirection:I

    .line 66
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;

    check-cast p3, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .end local p3    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 67
    .local v6, "joystickHandler":Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/piloting/ui/JoystickController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .line 68
    const v3, 0x7f0a00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    .line 70
    const v3, 0x7f0a0508

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setOneFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setTwoFingerDoubleTabListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerDoubleTabListener;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTouchController:Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setTwoFingerTouchListener(Lcom/parrot/freeflight/piloting/ui/TouchController$TwoFingerTouchListener;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->setCameraListener(Lcom/parrot/freeflight/piloting/ui/CameraListener;)V

    .line 76
    const v3, 0x7f0a0416

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    .line 77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    new-instance v5, Lcom/parrot/freeflight/piloting/ui/fixedwing/LoiterSwitchButtonValueChangedListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v3, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-direct {v5, v3}, Lcom/parrot/freeflight/piloting/ui/fixedwing/LoiterSwitchButtonValueChangedListener;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->setOnSwitchValueChangedListener(Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;)V

    .line 79
    const v3, 0x7f0a047d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->initFixedWingButtonsOnClickListeners()V

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->isSkycontrollerConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->showJoysticksSwitch()V

    .line 91
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->created()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method private initFixedWingButtonsOnClickListeners()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x3

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;)V

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->attachAction(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V

    .line 105
    return-void
.end method

.method private updateCameraControllerView(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 1
    .param p1, "fixedWingModel"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCameraTouchView:Lcom/parrot/freeflight/piloting/ui/CameraTouchView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/CameraTouchView;->update(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 213
    return-void
.end method

.method private updateLoiter(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 3
    .param p1, "fixedWingModel"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingDirectionState()Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->getCirclingDirection()I

    move-result v0

    .line 218
    .local v0, "circlingDirection":I
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCirclingDirection:I

    if-eq v0, v1, :cond_0

    .line 219
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCirclingDirection:I

    .line 220
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCirclingDirection:I

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->changeSwitchButtonImage(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mCirclingDirection:I

    if-ne v1, v2, :cond_0

    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->changeSwitchButtonImage(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeJoystickVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisible(Z)V

    .line 244
    return-void
.end method

.method protected enterCameraSettings()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 273
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->enterCameraSettings()V

    .line 274
    return-void
.end method

.method protected exitCameraSettings()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->exitCameraSettings()V

    .line 252
    return-void
.end method

.method protected hideJoysticks()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->hideJoysticks()V

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoysticks()V

    .line 258
    return-void
.end method

.method protected isFpvSupported()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected isSkyControllerMandatory()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->pause()V

    .line 116
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->pause()V

    .line 117
    return-void
.end method

.method protected showJoysticksInMapModeWithoutGamepadConnected()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected showJoysticksInStreamingModeWithoutGamepadConnected()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->start()V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->start()V

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->stop()V

    .line 122
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->stop()V

    .line 123
    return-void
.end method

.method protected updateAlertMessage()V
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getGenericAlerts(Z)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "genericAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->refresh(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 207
    .end local v0    # "genericAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mPause:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/AlertSound;->startRepeatSound()V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mAlertSound:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/AlertSound;->stopRepeatSound()V

    goto :goto_0
.end method

.method protected updateFlyingState(I)V
    .locals 3
    .param p1, "flyingState"    # I

    .prologue
    .line 230
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mFlyingState:I

    if-eq v0, p1, :cond_0

    .line 232
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->setButtonImageTint(I)V

    .line 238
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->updateFlyingState(I)V

    .line 239
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mLoiterSwitchButton:Lcom/parrot/freeflight/piloting/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->clearButtonImageTint()V

    goto :goto_0
.end method

.method public updateScreenRotation()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mJoystickController:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->sendCurrentRotation()V

    .line 279
    return-void
.end method

.method protected updateUiOnDroneInTheAir()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->updateUiOnDroneInTheAir()V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    return-void
.end method

.method protected updateUiOnDroneLanding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingState(I)V

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getLandingState()I

    move-result v0

    .line 154
    .local v0, "landingState":I
    if-nez v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const v2, 0x7f1103a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const v2, 0x7f110141

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateUiOnDroneOnTheGround()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method protected updateUiWaitingUserTakeOffAction()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setFlyingButtonVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const v1, 0x7f11059c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 6
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 174
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    move-object v0, p1

    .line 175
    check-cast v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .line 177
    .local v0, "fixedWingModel":Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->isSkycontrollerConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mContext:Landroid/content/Context;

    const v3, 0x7f0500e8

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    const v2, 0x7f110528

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateAltitude(DZ)V

    .line 185
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getBatteryLevel()I

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->hasOneAlert([I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateBatteryLevel(IZ)V

    .line 186
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsFixStatus()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateGpsFixedStatus(IZ)V

    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getRssi()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRssiLevel(S)V

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updateRemoteCtrl(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->updateCameraControllerView(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 196
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->updateCoPiloting()V

    .line 197
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->updateLoiter(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 198
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->setDisconnectedValues()V

    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->onDroneDisconnected()V

    goto :goto_0

    .line 185
    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.class public Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;
.super Lcom/parrot/freeflight/piloting/FullScreenActivity;
.source "FpvEyesCalibrationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# instance fields
.field private mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;-><init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    return-object v0
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->dispatchMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;->getOrientation(Landroid/content/Context;ZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->setRequestedOrientation(I)V

    .line 59
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->setContentView(I)V

    .line 61
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v8

    .line 62
    .local v8, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    new-instance v9, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;

    invoke-direct {v9}, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;-><init>()V

    .line 63
    .local v9, "joystickPreferences":Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    new-instance v5, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v1

    invoke-direct {v5, v0, v9, v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V

    .line 64
    .local v5, "localSettingsModel":Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 65
    .local v6, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    new-instance v3, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    .line 66
    .local v3, "permissionChecker":Lcom/parrot/freeflight/util/PermissionChecker;
    new-instance v7, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$2;-><init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)V

    .line 72
    .local v7, "onBackButtonClickListener":Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 73
    new-instance v0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 74
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    .line 75
    return-void
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
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->onJoystickEvent(FFFFFFFF)Z

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
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->pause()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 103
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onPause()V

    .line 104
    return-void
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
    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 119
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->resume()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 92
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onStart()V

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->start()V

    .line 83
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->mFpvEyesCalibrationUiController:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->stop()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onStop()V

    .line 112
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

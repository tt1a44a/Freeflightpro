.class public Lcom/parrot/freeflight/piloting/FpvPilotingActivity;
.super Lcom/parrot/freeflight/piloting/FullScreenActivity;
.source "FpvPilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final GLASSES_CHOICE_DONE_KEY:Ljava/lang/String; = "glasses_choice_done"

.field private static final GLASSES_CHOICE_REQUEST_CODE:I


# instance fields
.field private mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;-><init>()V

    return-void
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
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glasses_choice_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onBackPressed()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v11

    .line 47
    .local v11, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    new-instance v12, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;

    invoke-direct {v12}, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;-><init>()V

    .line 48
    .local v12, "joystickPreferences":Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    new-instance v7, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v11}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v1

    invoke-direct {v7, v0, v12, v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V

    .line 49
    .local v7, "localSettingsModel":Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    invoke-virtual {v11}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v13

    .line 50
    .local v13, "modelStore":Lcom/parrot/freeflight/core/model/ModelStore;
    new-instance v3, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    .line 51
    .local v3, "permissionChecker":Lcom/parrot/freeflight/util/PermissionChecker;
    new-instance v10, Lcom/parrot/freeflight/piloting/FpvPilotingActivity$1;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity$1;-><init>(Lcom/parrot/freeflight/piloting/FpvPilotingActivity;)V

    .line 59
    .local v10, "onBackButtonClickListener":Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 60
    invoke-virtual {v11}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v4

    invoke-virtual {v11}, Lcom/parrot/freeflight/core/CoreManager;->getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v5

    .line 61
    invoke-virtual {v11}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v6

    invoke-virtual {v13}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 62
    invoke-virtual {v13}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "glasses_choice_done"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->destroy()V

    .line 97
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->pause()V

    .line 85
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onPause()V

    .line 86
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
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->resume()V

    .line 80
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->start()V

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->stop()V

    .line 91
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onStop()V

    .line 92
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->mFpvPilotingUiController:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->onTriggerEvent(FF)Z

    move-result v0

    return v0
.end method

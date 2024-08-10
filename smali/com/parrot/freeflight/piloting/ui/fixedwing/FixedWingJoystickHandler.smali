.class public Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;
.super Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
.source "FixedWingJoystickHandler.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/CameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler$PilotingControllerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        ">;",
        "Lcom/parrot/freeflight/piloting/ui/CameraListener;"
    }
.end annotation


# static fields
.field public static final CONTROLLER_TYPE_ACE:I = 0x0

.field public static final CONTROLLER_TYPE_JOYPAD:I = 0x2

.field public static final CONTROLLER_TYPE_NORMAL:I = 0x1

.field public static final DEFAULT_CONTROLLER_TYPE:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mJoysticksInitialized:Z

.field private mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fixedWingModel"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;-><init>()V

    .line 24
    const-class v0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .line 55
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->updateFixedWingJoystickGraphics()V

    .line 56
    return-void
.end method

.method private resetCameraJoystick()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getDefaultCameraTilt()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->onCameraMove(FF)V

    .line 202
    :cond_0
    return-void
.end method

.method private resetGaz()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->throttleAt(F)V

    .line 213
    :cond_0
    return-void
.end method

.method private resetPitchRoll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 206
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 207
    return-void
.end method

.method private updateFixedWingJoystickGraphics()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 91
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mJoysticksInitialized:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v4, 0x7f070416

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 93
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v4, 0x7f070417

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 94
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f06023a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 96
    .local v0, "foregroundSize":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v1, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    .local v1, "newLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getForegroundImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 99
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    .line 101
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v4, 0x7f070235

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 102
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v4, 0x7f070239

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 103
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 104
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    .line 106
    iput-boolean v5, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mJoysticksInitialized:Z

    .line 108
    .end local v0    # "foregroundSize":I
    .end local v1    # "newLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCameraDoubleTap()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->resetCameraJoystick()V

    .line 235
    return-void
.end method

.method public onCameraMove(FF)V
    .locals 0
    .param p1, "tilt"    # F
    .param p2, "pan"    # F

    .prologue
    .line 230
    return-void
.end method

.method public onDoubleTap(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 0
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 226
    return-void
.end method

.method public onMotionManagerHeadingChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "heading"    # F

    .prologue
    .line 140
    return-void
.end method

.method public onMotionManagerHorizonChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "horizonAngle"    # F

    .prologue
    .line 144
    return-void
.end method

.method public onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "pitch"    # F

    .prologue
    .line 129
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->requestPitch(F)V

    .line 130
    return-void
.end method

.method public onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "roll"    # F

    .prologue
    .line 134
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->requestRoll(F)V

    .line 135
    return-void
.end method

.method public onMotionManagerShakeDetection(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 148
    return-void
.end method

.method public onPressed(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)V
    .locals 2
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p2, "pressed"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_1

    .line 185
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 186
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    .line 187
    if-nez p2, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->resetPitchRoll()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_0

    .line 191
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    .line 192
    if-nez p2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->resetGaz()V

    goto :goto_0
.end method

.method public onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V
    .locals 1
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p2, "value"    # F
    .param p3, "direction"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_1

    .line 161
    packed-switch p3, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->requestGaz(F)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_0

    .line 169
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->requestPitch(F)V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->requestRoll(F)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 83
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requestCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->requestCommandsActivationChanged(Z)V

    .line 261
    :cond_0
    return-void
.end method

.method public requestGaz(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->throttleAt(F)V

    .line 255
    :cond_0
    return-void
.end method

.method public requestPitch(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->pitchAt(F)V

    .line 242
    :cond_0
    return-void
.end method

.method public requestRoll(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->rollAt(F)V

    .line 249
    :cond_0
    return-void
.end method

.method public setJoysticks(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 2
    .param p1, "leftJoystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rightJoystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 61
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mMovementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mAccelerationJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setNeutralRatio(F)V

    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->updateFixedWingJoystickGraphics()V

    .line 64
    return-void
.end method

.method public setOnlineMode(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public shouldImplementDoubleTap()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public updateModel(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .line 69
    return-void
.end method

.method public bridge synthetic updateModel(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingJoystickHandler;->updateModel(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    return-void
.end method

.method public updatePilotingControllerType(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    return-void
.end method

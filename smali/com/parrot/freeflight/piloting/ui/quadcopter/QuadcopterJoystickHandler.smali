.class public Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;
.super Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
.source "QuadcopterJoystickHandler.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/CameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$PilotingControllerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
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
.field private cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field private final mAppContext:Landroid/content/Context;

.field private mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPilotingControllerType:I

.field private mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "quadcopterModel"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;-><init>()V

    .line 36
    const/4 v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    .line 106
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$1;-><init>(Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mAppContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 56
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;)Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    return-object v0
.end method

.method private resetCameraJoystick()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getDefaultCameraTilt()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->onCameraMove(FF)V

    .line 314
    :cond_0
    return-void
.end method

.method private resetPitchRoll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 318
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 319
    return-void
.end method


# virtual methods
.method public getPilotingControllerType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    return v0
.end method

.method public onCameraDoubleTap()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->resetCameraJoystick()V

    .line 352
    return-void
.end method

.method public onCameraMove(FF)V
    .locals 3
    .param p1, "tilt"    # F
    .param p2, "pan"    # F

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 338
    mul-float/2addr p1, v2

    .line 339
    mul-float/2addr p2, v2

    .line 340
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->panHundredPercentInDeg()F

    move-result v2

    div-float v2, p2, v2

    neg-float v0, v2

    .line 344
    .local v0, "panInPercent":F
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->tiltHundredPercentInDeg()F

    move-result v2

    div-float v1, p1, v2

    .line 345
    .local v1, "tiltInPercent":F
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setPercent(FF)V

    .line 347
    .end local v0    # "panInPercent":F
    .end local v1    # "tiltInPercent":F
    :cond_0
    return-void
.end method

.method public onDoubleTap(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 1
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->requestFlip()V

    .line 333
    :cond_0
    return-void
.end method

.method public onMotionManagerHeadingChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "heading"    # F

    .prologue
    .line 188
    return-void
.end method

.method public onMotionManagerHorizonChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "horizonAngle"    # F

    .prologue
    .line 192
    return-void
.end method

.method public onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "pitch"    # F

    .prologue
    .line 177
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestPitch(F)V

    .line 178
    return-void
.end method

.method public onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "roll"    # F

    .prologue
    .line 182
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestRoll(F)V

    .line 183
    return-void
.end method

.method public onMotionManagerShakeDetection(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 196
    return-void
.end method

.method public onPressed(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)V
    .locals 2
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p2, "pressed"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_2

    .line 272
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    packed-switch v0, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 275
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    .line 276
    if-nez p2, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->resetPitchRoll()V

    goto :goto_0

    .line 275
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_0

    .line 288
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 291
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v1

    if-eqz p2, :cond_3

    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    .line 292
    if-nez p2, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->resetPitchRoll()V

    goto :goto_0

    .line 291
    :cond_3
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    goto :goto_2

    .line 298
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 299
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V
    .locals 3
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p2, "value"    # F
    .param p3, "direction"    # I

    .prologue
    .line 208
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v2, :cond_1

    .line 209
    packed-switch p3, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestGaz(F)V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestYaw(F)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v2, :cond_0

    .line 223
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 240
    :pswitch_3
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 242
    :pswitch_4
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->tiltHundredPercentInDeg()F

    move-result v2

    mul-float v1, p2, v2

    .line 244
    .local v1, "tilt":F
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestCameraTilt(F)V

    goto :goto_0

    .line 225
    .end local v1    # "tilt":F
    :pswitch_5
    packed-switch p3, :pswitch_data_3

    goto :goto_0

    .line 227
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestPitch(F)V

    goto :goto_0

    .line 231
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestRoll(F)V

    goto :goto_0

    .line 249
    :pswitch_8
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->panHundredPercentInDeg()F

    move-result v2

    mul-float v0, p2, v2

    .line 251
    .local v0, "pan":F
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->requestCameraPan(F)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 240
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 225
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 94
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requestCameraPan(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->panCameraAt(F)V

    .line 395
    :cond_0
    return-void
.end method

.method public requestCameraTilt(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->tiltCameraAt(F)V

    .line 389
    :cond_0
    return-void
.end method

.method public requestCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->requestCommandsActivationChanged(Z)V

    .line 383
    :cond_0
    return-void
.end method

.method public requestGaz(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 374
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->throttleAt(F)V

    .line 377
    :cond_0
    return-void
.end method

.method public requestPitch(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->pitchAt(F)V

    .line 358
    :cond_0
    return-void
.end method

.method public requestRoll(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 362
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->rollAt(F)V

    .line 365
    :cond_0
    return-void
.end method

.method public requestYaw(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->yawTo(F)V

    .line 371
    :cond_0
    return-void
.end method

.method public setJoysticks(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 4
    .param p1, "leftJoystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rightJoystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 65
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setNeutralRatio(F)V

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 70
    return-void
.end method

.method public setOnlineMode(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 166
    return-void
.end method

.method public shouldImplementDoubleTap()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public updateModel(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mQuadcopterModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    goto :goto_0
.end method

.method public bridge synthetic updateModel(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->updateModel(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    return-void
.end method

.method public updatePilotingControllerType(Landroid/content/SharedPreferences;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f070238

    const v4, 0x7f070239

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->mPilotingControllerType:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v1, 0x7f070524

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v1, 0x7f07023a

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v1, 0x7f070236

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    .line 141
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->resetCameraJoystick()V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const v1, 0x7f070235

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->cameraJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setResetOnRelease(Z)V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

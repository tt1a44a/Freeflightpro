.class public abstract Lcom/parrot/freeflight/gamepad/GamePad;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;,
        Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;,
        Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;,
        Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;,
        Lcom/parrot/freeflight/gamepad/GamePad$Input;,
        Lcom/parrot/freeflight/gamepad/GamePad$TriggerState;,
        Lcom/parrot/freeflight/gamepad/GamePad$Directions;,
        Lcom/parrot/freeflight/gamepad/GamePad$ControlType;,
        Lcom/parrot/freeflight/gamepad/GamePad$TriggerType;,
        Lcom/parrot/freeflight/gamepad/GamePad$JoystickType;,
        Lcom/parrot/freeflight/gamepad/GamePad$State;,
        Lcom/parrot/freeflight/gamepad/GamePad$Mode;,
        Lcom/parrot/freeflight/gamepad/GamePad$ConnectivityType;,
        Lcom/parrot/freeflight/gamepad/GamePad$Type;,
        Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;,
        Lcom/parrot/freeflight/gamepad/GamePad$EventListener;,
        Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    }
.end annotation


# static fields
.field public static final ANDROID_INPUT_DEVICE:I = 0x0

.field public static final BLE:I = 0x0

.field public static final BUTTON:I = 0x0

.field public static final DIRECTION_CENTER:I = 0x6

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_MAX:I = 0x7

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UP:I = 0x0

.field public static final DIRECTION_VERTICAL:I = 0x5

.field public static final DPAD:I = 0x1

.field public static final JOYSTICK:I = 0x2

.field public static final JOYSTICK_LEFT:I = 0x0

.field public static final JOYSTICK_RIGHT:I = 0x1

.field public static final MODE_LOCKED:I = 0x4

.field public static final MODE_MAPPING:I = 0x3

.field public static final MODE_NAVIGATION:I = 0x1

.field public static final MODE_NAVIGATION_SETTINGS:I = 0x2

.field public static final MODE_PILOTING:I = 0x0

.field private static final NEUTRAL_JOYSTICK_VALUE:I = 0x0

.field public static final PRESSED:I = 0x1

.field public static final PUSHED_MIN_VALUE:F = 0.8f

.field public static final RADIO:I = 0x3

.field public static final RC_CONTROLLER:I = 0x5

.field public static final RELEASED:I = 0x0

.field public static final SKYCONTROLLER:I = 0x2

.field public static final SKYCONTROLLER_2:I = 0x3

.field public static final SKYCONTROLLER_2P:I = 0x6

.field public static final SKYCONTROLLER_NG:I = 0x4

.field public static final STATE_CONNECTED:I = 0x4

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x1

.field public static final STATE_DISCONNECTING:I = 0x2

.field public static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GamePad"

.field public static final TINOS:I = 0x1

.field public static final TRIGGER:I = 0x3

.field public static final TRIGGER_LEFT:I = 0x0

.field public static final TRIGGER_RIGHT:I = 0x1

.field public static final UNDEFINED:I = -0x1

.field public static final UNKNOWN:I = 0x4

.field public static final USB:I = 0x1

.field public static final WIFI:I = 0x2


# instance fields
.field protected final KEYCODE:Ljava/lang/String;

.field protected final MEDIA:Ljava/lang/String;

.field protected final UNKNOW:Ljava/lang/String;

.field protected final VOLUME:Ljava/lang/String;

.field protected mBatteryLevel:I

.field private mConnectivityType:I

.field private final mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGamePadLocked:Z

.field protected mMode:I

.field private mModeBeforeLock:I

.field private mSelected:Z

.field private final mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:I

.field private final mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "connectivityType"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "UNKNOW"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->UNKNOW:Ljava/lang/String;

    .line 47
    const-string v0, "KEYCODE_"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->KEYCODE:Ljava/lang/String;

    .line 48
    const-string v0, "MEDIA"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->MEDIA:Ljava/lang/String;

    .line 49
    const-string v0, "VOLUME"

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->VOLUME:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 183
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 184
    iput p1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    .line 185
    iput p2, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mConnectivityType:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mState:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mMode:I

    .line 188
    return-void
.end method

.method public static getDirectionPadControl(Landroid/view/MotionEvent;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 5
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz p1, :cond_0

    .line 508
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->getDirectionPressed(Landroid/view/InputEvent;)I

    move-result v1

    .line 509
    .local v1, "directionPressed":I
    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getDpadName()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "directionPadName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    new-instance v2, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v2    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 516
    .end local v0    # "directionPadName":Ljava/lang/String;
    .end local v1    # "directionPressed":I
    .restart local v2    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    return-object v2
.end method

.method public static getDirectionPressed(Landroid/view/InputEvent;)I
    .locals 7
    .param p0, "event"    # Landroid/view/InputEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 483
    const/4 v0, 0x7

    .line 485
    .local v0, "directionPressed":I
    instance-of v4, p0, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 486
    check-cast v1, Landroid/view/MotionEvent;

    .line 487
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 488
    .local v2, "xAxis":F
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 490
    .local v3, "yAxis":F
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    .line 491
    const/4 v0, 0x1

    .line 501
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "xAxis":F
    .end local v3    # "yAxis":F
    :cond_0
    :goto_0
    return v0

    .line 492
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v2    # "xAxis":F
    .restart local v3    # "yAxis":F
    :cond_1
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_2

    .line 493
    const/4 v0, 0x2

    goto :goto_0

    .line 494
    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_3

    .line 495
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :cond_3
    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    .line 497
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getJoystickControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 4
    .param p0, "joystickType"    # I
    .param p1, "directionPressed"    # I
    .param p2, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz p2, :cond_0

    .line 427
    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    .line 429
    if-nez p0, :cond_1

    .line 430
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftJoystickName()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "joystickName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 439
    .end local v1    # "joystickName":Ljava/lang/String;
    .restart local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    return-object v0

    .line 432
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightJoystickName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "joystickName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getJoystickState(FF)I
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    const v1, -0x40b33333    # -0.8f

    .line 409
    cmpl-float v0, p0, v2

    if-ltz v0, :cond_0

    .line 410
    const/4 v0, 0x2

    .line 418
    :goto_0
    return v0

    .line 411
    :cond_0
    cmpg-float v0, p0, v1

    if-gtz v0, :cond_1

    .line 412
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    .line 414
    const/4 v0, 0x3

    goto :goto_0

    .line 415
    :cond_2
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_3

    .line 416
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getTriggerControl(IILcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 5
    .param p0, "triggerType"    # I
    .param p1, "triggerState"    # I
    .param p2, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz p2, :cond_0

    .line 461
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 463
    if-nez p0, :cond_1

    .line 464
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftTriggerName()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "triggerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v2, 0x3

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 473
    .end local v1    # "triggerName":Ljava/lang/String;
    .restart local v0    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    return-object v0

    .line 466
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightTriggerName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "triggerName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTriggerState(F)I
    .locals 1
    .param p0, "triggerValue"    # F

    .prologue
    .line 448
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public final addSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 305
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public final addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/gamepad/GamePad$StateListener;->onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 315
    return-void
.end method

.method public close()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 333
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mBatteryLevel:I

    return v0
.end method

.method public abstract getButtonName(I)Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getConnectivityType()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mConnectivityType:I

    return v0
.end method

.method public abstract getDpadName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getHardware()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getKeyCodeFromAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)I
    .locals 2
    .param p1, "appEvent"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    sget-object v0, Lcom/parrot/freeflight/gamepad/GamePad$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 263
    :pswitch_0
    const/16 v0, 0x65

    goto :goto_0

    .line 266
    :pswitch_1
    const/16 v0, 0x67

    goto :goto_0

    .line 269
    :pswitch_2
    const/16 v0, 0x66

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract getLeftJoystickName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLeftTriggerName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMappingImageId()I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected getResourceForName(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 200
    .local v0, "buttonResId":I
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    :cond_0
    return v0
.end method

.method public abstract getRightJoystickName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRightTriggerName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mState:I

    return v0
.end method

.method public abstract getTopLeftJoystickName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTopRightJoystickName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    return v0
.end method

.method public abstract getUid()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract hasBatteryLevel()Z
.end method

.method public final isASkyController()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isConnected()Z
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelected:Z

    return v0
.end method

.method public loadFromStore()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 338
    return-void
.end method

.method public lockGamePadMode()V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    if-nez v0, :cond_0

    .line 278
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mMode:I

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mModeBeforeLock:I

    .line 279
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    .line 282
    :cond_0
    return-void
.end method

.method protected final notifyJoystickEvent(FFFF)Z
    .locals 9
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    const/4 v5, 0x0

    .line 238
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/GamePad;->notifyJoystickEvent(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method protected final notifyJoystickEvent(FFFFFFFF)Z
    .locals 10
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 245
    invoke-interface/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;->onJoystickEvent(FFFFFFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x1

    .line 250
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final notifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 220
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 221
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 225
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final notifySelectedChange()V
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    .line 208
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    iget-boolean v2, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelected:Z

    invoke-interface {v0, p0, v2}, Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;->onSelectedChange(Lcom/parrot/freeflight/gamepad/GamePad;Z)V

    goto :goto_0

    .line 210
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    :cond_0
    return-void
.end method

.method protected final notifyStateChange()V
    .locals 4

    .prologue
    .line 213
    const-string v1, "GamePad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStateChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 215
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    invoke-interface {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePad$StateListener;->onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    .line 217
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    :cond_0
    return-void
.end method

.method protected final notifyTriggerEvent(FF)Z
    .locals 3
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 230
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/GamePad$EventListener;->onTriggerEvent(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v1, 0x1

    .line 234
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final removeEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public final removeSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelectedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public final removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public saveToStore()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 343
    return-void
.end method

.method protected setConnectivityType(I)V
    .locals 0
    .param p1, "connectivityType"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mConnectivityType:I

    .line 368
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 382
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mSelected:Z

    .line 301
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->notifySelectedChange()V

    .line 302
    return-void
.end method

.method public unlockGamePadMode()V
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mGamePadLocked:Z

    .line 287
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePad;->mModeBeforeLock:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 289
    :cond_0
    return-void
.end method

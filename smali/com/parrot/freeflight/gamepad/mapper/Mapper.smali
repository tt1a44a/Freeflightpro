.class public abstract Lcom/parrot/freeflight/gamepad/mapper/Mapper;
.super Ljava/lang/Object;
.source "Mapper.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;
    }
.end annotation


# static fields
.field static final DEBUG_MAPPER:Z = false

.field public static final NEUTRAL_JOYSTICK_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mapper"


# instance fields
.field final mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMotionEventProcessor:Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;-><init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;Lcom/parrot/freeflight/gamepad/mapper/Mapper$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mMotionEventProcessor:Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;

    .line 29
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->clear()V

    .line 90
    return-void
.end method

.method public onDpadEvent(I)Z
    .locals 1
    .param p1, "direction"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getDirection()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onDpadEvent(I)V

    .line 76
    const/4 v0, 0x1

    .line 78
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mMotionEventProcessor:Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 58
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 59
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 60
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 61
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 62
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p6, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 63
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p7, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 64
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p8, v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onJoystickEvent(FFFFFFFF)V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_1
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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .line 46
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->mGamePadInputState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onTriggerEvent(FF)V

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

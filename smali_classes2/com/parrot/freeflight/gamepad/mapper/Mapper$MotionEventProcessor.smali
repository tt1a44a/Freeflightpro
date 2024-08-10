.class Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;
.super Ljava/lang/Object;
.source "Mapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/Mapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionEventProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;Lcom/parrot/freeflight/gamepad/mapper/Mapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/Mapper;
    .param p2, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/Mapper$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;-><init>(Lcom/parrot/freeflight/gamepad/mapper/Mapper;)V

    return-void
.end method

.method private getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "device"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "axis"    # I

    .prologue
    const/4 v3, 0x0

    .line 166
    if-nez p2, :cond_1

    move v2, v3

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 169
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 171
    .local v0, "flat":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 173
    .local v2, "value":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_0

    .end local v0    # "flat":F
    .end local v2    # "value":F
    :cond_2
    move v2, v3

    .line 177
    goto :goto_0
.end method

.method private processDirectionPadEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 120
    const/4 v0, 0x6

    .line 122
    .local v0, "directionPressed":I
    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 123
    .local v1, "xAxis":F
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 125
    .local v2, "yAxis":F
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    .line 126
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onDpadEvent(I)Z

    move-result v3

    return v3

    .line 127
    :cond_1
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 128
    const/4 v0, 0x2

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private processJoystickEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputDevice"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v1

    .line 141
    .local v1, "leftJoystickX":F
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    neg-float v2, v0

    .line 142
    .local v2, "leftJoystickY":F
    const/16 v0, 0xb

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v3

    .line 143
    .local v3, "rightJoystickX":F
    const/16 v0, 0xe

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    neg-float v4, v0

    .line 145
    .local v4, "rightJoystickY":F
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method private processTriggerEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputDevice"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 154
    const/16 v2, 0x17

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    .line 155
    .local v0, "leftTriggerValue":F
    const/16 v2, 0x16

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v1

    .line 161
    .local v1, "rightTriggerValue":F
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->this$0:Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->onTriggerEvent(FF)Z

    move-result v2

    return v2

    .line 157
    .end local v0    # "leftTriggerValue":F
    .end local v1    # "rightTriggerValue":F
    :cond_0
    const/16 v2, 0x11

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v0

    .line 158
    .restart local v0    # "leftTriggerValue":F
    const/16 v2, 0x12

    invoke-direct {p0, p1, p2, v2}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v1

    .restart local v1    # "rightTriggerValue":F
    goto :goto_0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0x1000010

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    .line 98
    .local v1, "inputDevice":Landroid/view/InputDevice;
    const/4 v0, 0x0

    .line 100
    .local v0, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit16 v2, v2, 0x201

    const/16 v3, 0x201

    if-eq v2, v3, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->processDirectionPadEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 106
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->processTriggerEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const/4 v0, 0x1

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 112
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper$MotionEventProcessor;->processJoystickEvent(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const/4 v0, 0x1

    .line 116
    :cond_2
    return v0
.end method

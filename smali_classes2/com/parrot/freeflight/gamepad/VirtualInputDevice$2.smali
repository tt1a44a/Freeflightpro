.class Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/EventSender;->sendJoystick(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/EventSender;->sendKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/EventSender;->sendTrigger(FF)Z

    move-result v0

    return v0
.end method

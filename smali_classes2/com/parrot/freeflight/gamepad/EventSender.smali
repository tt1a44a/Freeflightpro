.class public Lcom/parrot/freeflight/gamepad/EventSender;
.super Ljava/lang/Object;
.source "EventSender.java"


# instance fields
.field private mActivityInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCurrentActivityListener:Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

.field private mDialogInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/parrot/freeflight/gamepad/EventSender$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/EventSender$1;-><init>(Lcom/parrot/freeflight/gamepad/EventSender;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivityListener:Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivityListener:Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addCurrentWindowListener(Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/EventSender;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/EventSender;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/EventSender;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/EventSender;
    .param p1, "x1"    # Landroid/view/inputmethod/BaseInputConnection;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mActivityInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    return-object p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/EventSender;
    .param p1, "x1"    # Landroid/view/inputmethod/BaseInputConnection;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mDialogInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivityListener:Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeCurrentWindowListener(Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;)V

    .line 31
    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    .line 32
    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mActivityInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    .line 33
    return-void
.end method

.method public sendJoystick(FFFFFFFF)Z
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
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$JoystickEventListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$JoystickEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$JoystickEventListener;->onJoystickEvent(FFFFFFFF)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mDialogInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mDialogInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mActivityInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mActivityInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendTrigger(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$TriggerEventListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender;->mCurrentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$TriggerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$TriggerEventListener;->onTriggerEvent(FF)Z

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/parrot/freeflight/piloting/ui/JoystickController;
.super Ljava/lang/Object;
.source "JoystickController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerTouchListener;",
        "Lcom/parrot/freeflight/piloting/ui/TouchController$OneFingerDoubleTabListener;"
    }
.end annotation


# static fields
.field public static final JOYSTICK_NEUTRAL_RATIO_DEFAULT:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "JoystickController"


# instance fields
.field protected alreadyLoaded:Z

.field protected doubleTapDetector:Landroid/view/GestureDetector;

.field protected joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

.field protected lastLeftDownTouchPoint:Landroid/graphics/Point;

.field protected lastRightDownTouchPoint:Landroid/graphics/Point;

.field private leftFrameCurrentTouchPointerId:I

.field protected leftHandedMode:Z

.field protected leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field protected leftJoystickBottomMargin:I

.field private leftJoystickEnabled:Z

.field protected leftJoystickLeftMargin:I

.field protected leftTouchFrame:Landroid/widget/FrameLayout;

.field private mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field private final mContext:Landroid/content/Context;

.field private mGamePadMode:Z

.field private final mHudView:Landroid/view/View;

.field private mIsJsFixed:Z

.field private final mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mLastLeftThumbOffset:Landroid/graphics/Point;

.field protected mLastRightThumbOffset:Landroid/graphics/Point;

.field private final mMotionManager:Lcom/parrot/freeflight/piloting/motion/MotionManager;

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mVisible:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private rightFrameCurrentTouchPointerId:I

.field protected rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

.field protected rightJoystickBottomMargin:I

.field private rightJoystickEnabled:Z

.field protected rightJoystickRightMargin:I

.field protected rightTouchFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "gamePadMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
            "<TT;>;",
            "Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    .local p3, "joystickHandler":Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;, "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler<TT;>;"
    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    .line 43
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftHandedMode:Z

    .line 54
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickEnabled:Z

    .line 56
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickEnabled:Z

    .line 58
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    .line 59
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    .line 65
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    .line 67
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    .line 90
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 91
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mMotionManager:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .line 92
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    iput-boolean p5, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/Joystick;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/Joystick;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    .line 100
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisible(Z)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setup()V

    .line 104
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickEnabled:Z

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setLeftJoystickEnabled(Z)V

    .line 105
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickEnabled:Z

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setRightJoystickEnabled(Z)V

    .line 107
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->setJoysticks(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setJoysticksListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/JoystickController;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onDoubleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/JoystickController;)Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/JoystickController;Landroid/view/View;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onTouch(Landroid/view/View;IFF)V

    return-void
.end method

.method private onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 529
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 535
    .local v0, "joystickTapped":Lcom/parrot/freeflight/piloting/widget/Joystick;
    :goto_0
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->onDoubleTap()V

    .line 538
    :cond_0
    return-void

    .line 532
    .end local v0    # "joystickTapped":Lcom/parrot/freeflight/piloting/widget/Joystick;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .restart local v0    # "joystickTapped":Lcom/parrot/freeflight/piloting/widget/Joystick;
    goto :goto_0
.end method

.method private onTouch(Landroid/view/View;IFF)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 380
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v11, 0x0

    .line 381
    .local v11, "touchedJoystick":Lcom/parrot/freeflight/piloting/widget/Joystick;
    const/4 v1, 0x0

    .line 382
    .local v1, "lastDownTouchPoint":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 384
    .local v2, "lastThumbOffset":Landroid/graphics/Point;
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    if-ne p1, v12, :cond_1

    .line 385
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 386
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastLeftDownTouchPoint:Landroid/graphics/Point;

    .line 387
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastLeftThumbOffset:Landroid/graphics/Point;

    .line 396
    :goto_0
    if-eqz v11, :cond_0

    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v12, :cond_0

    .line 397
    packed-switch p2, :pswitch_data_0

    .line 472
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 388
    :cond_1
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    if-ne p1, v12, :cond_2

    .line 389
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 390
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastRightDownTouchPoint:Landroid/graphics/Point;

    .line 391
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastRightThumbOffset:Landroid/graphics/Point;

    goto :goto_0

    .line 393
    :cond_2
    const-string v12, "JoystickController"

    const-string v13, "Invalid touch !"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :pswitch_1
    iget v12, v1, Landroid/graphics/Point;->x:I

    if-nez v12, :cond_0

    iget v12, v1, Landroid/graphics/Point;->y:I

    if-nez v12, :cond_0

    .line 401
    move/from16 v0, p3

    float-to-int v12, v0

    move/from16 v0, p4

    float-to-int v13, v0

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 402
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v11, v12, :cond_3

    .line 403
    iget v12, v1, Landroid/graphics/Point;->x:I

    iget-object v13, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iput v12, v1, Landroid/graphics/Point;->x:I

    .line 407
    :cond_3
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getThumbRelativePosition()Landroid/graphics/Point;

    move-result-object v10

    .line 408
    .local v10, "thumbOffset":Landroid/graphics/Point;
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isResetOnRelease()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 409
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 414
    :goto_2
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    iget v13, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/graphics/Point;->y:I

    add-int v3, v12, v13

    .line 415
    .local v3, "newMarginBottom":I
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v12

    neg-int v6, v12

    .line 417
    .local v6, "newMarginTop":I
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v11, v12, :cond_7

    .line 419
    iget v12, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/graphics/Point;->x:I

    sub-int v4, v12, v13

    .line 420
    .local v4, "newMarginLeft":I
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v12, v11, :cond_4

    if-gez v4, :cond_4

    .line 421
    iget v12, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v4

    iput v12, v1, Landroid/graphics/Point;->x:I

    .line 422
    const/4 v4, 0x0

    .line 424
    :cond_4
    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    if-nez v12, :cond_5

    .line 425
    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    const/4 v12, 0x0

    invoke-virtual {v7, v4, v6, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    .end local v4    # "newMarginLeft":I
    :cond_5
    :goto_3
    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    if-nez v12, :cond_0

    invoke-virtual {v11, v7}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 411
    .end local v3    # "newMarginBottom":I
    .end local v6    # "newMarginTop":I
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    .line 430
    .restart local v3    # "newMarginBottom":I
    .restart local v6    # "newMarginTop":I
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    iget v13, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/graphics/Point;->x:I

    add-int v5, v12, v13

    .line 431
    .local v5, "newMarginRight":I
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v12, v11, :cond_8

    if-gez v5, :cond_8

    .line 432
    iget v12, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v12, v5

    iput v12, v1, Landroid/graphics/Point;->x:I

    .line 433
    const/4 v5, 0x0

    .line 435
    :cond_8
    iget-boolean v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    if-nez v12, :cond_5

    .line 436
    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 437
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v6, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 447
    .end local v3    # "newMarginBottom":I
    .end local v5    # "newMarginRight":I
    .end local v6    # "newMarginTop":I
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "thumbOffset":Landroid/graphics/Point;
    :pswitch_2
    move/from16 v0, p4

    float-to-int v12, v0

    iget v13, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Point;->y:I

    add-int v9, v12, v13

    .line 448
    .local v9, "relativeMoveY":I
    move/from16 v0, p3

    float-to-int v12, v0

    iget v13, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Point;->x:I

    add-int v8, v12, v13

    .line 449
    .local v8, "relativeMoveX":I
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne v11, v12, :cond_9

    .line 450
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mHudView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v8, v12

    .line 454
    :cond_9
    invoke-virtual {v11, v8, v9}, Lcom/parrot/freeflight/piloting/widget/Joystick;->updateThumb(II)V

    goto/16 :goto_1

    .line 461
    .end local v8    # "relativeMoveX":I
    .end local v9    # "relativeMoveY":I
    :pswitch_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 462
    invoke-direct {p0, v11}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 463
    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    goto/16 :goto_1

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 7
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 354
    if-eqz p1, :cond_0

    .line 355
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 357
    .local v0, "leftJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 358
    .local v1, "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 359
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .end local v0    # "leftJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .local v2, "rightJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .restart local v1    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 366
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 367
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 370
    .end local v1    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rightJoystickParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string v3, "JoystickController"

    const-string v4, "The considered joystick is not part of this joystick controller"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetJoysticksMargins()V
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 347
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 348
    return-void
.end method

.method private resetListener(Z)V
    .locals 5
    .param p1, "start"    # Z

    .prologue
    .line 182
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v3}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_3

    .line 184
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 185
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->start()V

    .line 191
    :goto_0
    if-eqz p1, :cond_0

    .line 192
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->updateLeftHandedMode(Landroid/content/SharedPreferences;)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    .line 198
    .local v0, "motionManager":Lcom/parrot/freeflight/piloting/motion/MotionManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->stop()V

    .line 199
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->start(Landroid/content/Context;Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;)V

    .line 200
    :cond_2
    return-void

    .line 187
    .end local v0    # "motionManager":Lcom/parrot/freeflight/piloting/motion/MotionManager;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 188
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->stop()V

    goto :goto_0
.end method

.method private setLeftJoystickVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 590
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(Z)V

    .line 593
    :cond_0
    return-void
.end method

.method private setRightJoystickVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 599
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(Z)V

    .line 602
    :cond_0
    return-void
.end method


# virtual methods
.method public fixJoystick(Z)V
    .locals 0
    .param p1, "isFixed"    # Z

    .prologue
    .line 479
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mIsJsFixed:Z

    .line 480
    return-void
.end method

.method public getLeftJoystick()Lcom/parrot/freeflight/piloting/widget/Joystick;
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    return-object v0
.end method

.method public getRightJoystick()Lcom/parrot/freeflight/piloting/widget/Joystick;
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    return-object v0
.end method

.method protected getValueWithNeutralRatio(FF)F
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "value"    # F

    .prologue
    .line 255
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 256
    .local v1, "negative":Z
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 257
    .local v0, "effectiveValue":F
    cmpg-float v2, v0, p1

    if-gez v2, :cond_2

    .line 258
    const/4 v0, 0x0

    .line 263
    :goto_1
    if-eqz v1, :cond_0

    .line 264
    neg-float v0, v0

    .line 267
    :cond_0
    return v0

    .line 255
    .end local v0    # "effectiveValue":F
    .end local v1    # "negative":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    .restart local v0    # "effectiveValue":F
    .restart local v1    # "negative":Z
    :cond_2
    sub-float v2, v0, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    div-float v0, v2, v3

    goto :goto_1
.end method

.method public onOneFingerDoubleTap(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 542
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mVisible:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onDoubleTap(Landroid/view/MotionEvent;)V

    .line 545
    :cond_0
    return-void
.end method

.method public onOneFingerTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pointerId"    # I
    .param p3, "m"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v5, -0x1

    .line 484
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mVisible:Z

    if-nez v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 503
    :cond_2
    :goto_1
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-ne v1, p2, :cond_6

    .line 504
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onTouch(Landroid/view/View;IFF)V

    .line 509
    :cond_3
    :goto_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 513
    :pswitch_1
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-ne p2, v1, :cond_4

    .line 514
    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    .line 516
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-ne p2, v1, :cond_0

    .line 517
    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    goto :goto_0

    .line 490
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 493
    .local v0, "width2":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-eq p2, v1, :cond_5

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-ne v1, v5, :cond_5

    .line 494
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    goto :goto_1

    .line 497
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftFrameCurrentTouchPointerId:I

    if-eq p2, v1, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-ne v1, v5, :cond_2

    .line 498
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    goto :goto_1

    .line 505
    .end local v0    # "width2":I
    :cond_6
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightFrameCurrentTouchPointerId:I

    if-ne v1, p2, :cond_3

    .line 506
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->onTouch(Landroid/view/View;IFF)V

    goto :goto_2

    .line 487
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->pause()Z

    .line 133
    return-void
.end method

.method public resetJoysticks()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastLeftDownTouchPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastRightDownTouchPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoystickMargins(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 167
    return-void
.end method

.method public sendCurrentRotation()V
    .locals 3

    .prologue
    .line 121
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 122
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mMotionManager:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->onDisplayRotationChange(I)V

    .line 123
    return-void
.end method

.method public setBoundedJoystick(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 0
    .param p1, "js"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 475
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mBoundedJs:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 476
    return-void
.end method

.method public setGamePadMode(ZZ)V
    .locals 3
    .param p1, "isGamePadMode"    # Z
    .param p2, "showUI"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-eq v0, p1, :cond_1

    .line 141
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    .line 142
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-eqz v0, :cond_2

    .line 143
    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisible(Z)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetThumbPosition()V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetThumbPosition()V

    .line 148
    :cond_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setVisible(Z)V

    .line 151
    :cond_3
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->sendCurrentRotation()V

    goto :goto_0
.end method

.method public setJoysticksListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    .prologue
    .line 281
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V

    .line 285
    return-void
.end method

.method public setLeftHandedMode(Z)V
    .locals 1
    .param p1, "leftHanded"    # Z

    .prologue
    .line 329
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftHandedMode:Z

    if-eq v0, p1, :cond_0

    .line 330
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftHandedMode:Z

    .line 331
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->swapJoysticks()V

    .line 333
    :cond_0
    return-void
.end method

.method public setLeftJoystickEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 303
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickEnabled:Z

    .line 304
    const-string v0, "JoystickController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeftJoystickEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public setOnlineMode(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 117
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->setOnlineMode(Z)V

    .line 118
    return-void
.end method

.method public setRightJoystickEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 312
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickEnabled:Z

    .line 313
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 204
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mVisible:Z

    .line 205
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setLeftJoystickVisible(Z)V

    .line 206
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setRightJoystickVisible(Z)V

    .line 207
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 210
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 207
    goto :goto_0

    :cond_2
    move v1, v2

    .line 208
    goto :goto_1
.end method

.method protected setup()V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastLeftDownTouchPoint:Landroid/graphics/Point;

    .line 218
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->lastRightDownTouchPoint:Landroid/graphics/Point;

    .line 219
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastLeftThumbOffset:Landroid/graphics/Point;

    .line 220
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mLastRightThumbOffset:Landroid/graphics/Point;

    .line 222
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;Lcom/parrot/freeflight/piloting/ui/JoystickController$1;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->doubleTapDetector:Landroid/view/GestureDetector;

    .line 224
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    .local v0, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    .line 244
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    .line 246
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    .local v1, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    .line 248
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    .line 250
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->alreadyLoaded:Z

    .line 251
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoysticksMargins()V

    .line 252
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->sendCurrentRotation()V

    .line 129
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mGamePadMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetListener(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method protected swapJoysticks()V
    .locals 5

    .prologue
    .line 560
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 561
    .local v0, "temporaryLeftJoystick":Lcom/parrot/freeflight/piloting/widget/Joystick;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 562
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 565
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    .line 566
    .local v1, "temporaryLeftJoystickBottomMargin":I
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickBottomMargin:I

    .line 567
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickBottomMargin:I

    .line 570
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    .line 571
    .local v2, "temporaryLeftJoystickLeftMargin":I
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystickLeftMargin:I

    .line 572
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystickRightMargin:I

    .line 575
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->resetJoysticksMargins()V

    .line 578
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 579
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftTouchFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->leftJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 581
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 582
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightTouchFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->rightJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 584
    :cond_1
    return-void
.end method

.method protected updateLeftHandedMode(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 320
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 321
    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultLeftHandness()Z

    move-result v2

    .line 320
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 322
    .local v0, "leftHanded":Z
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->setLeftHandedMode(Z)V

    .line 323
    return-void
.end method

.method public updateModel(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->mJoystickHandler:Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;->updateModel(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

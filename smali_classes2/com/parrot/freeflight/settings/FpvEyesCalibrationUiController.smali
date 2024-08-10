.class public Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
.super Ljava/lang/Object;
.source "FpvEyesCalibrationUiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;,
        Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;
    }
.end annotation


# static fields
.field private static final EVENT_DELAY:J = 0xfL

.field private static final JOYSTICK_EVENT:I = 0x1

.field private static final MOTION_EVENT:I


# instance fields
.field private mActivityWindow:Landroid/view/Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStopFpvButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;-><init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mContext:Landroid/content/Context;

    .line 74
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mActivityWindow:Landroid/view/Window;

    .line 75
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 76
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 77
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    .line 79
    const v1, 0x7f0a02c0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 80
    .local v10, "rootLayout":Landroid/view/ViewGroup;
    const v1, 0x7f0a00be

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$1;-><init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 89
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mActivityWindow:Landroid/view/Window;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v13, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$2;

    invoke-direct {v13, p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$2;-><init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)V

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v13}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/ui/radar/Radar;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;ZLcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->fixPreLollipopTheme()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->processMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;FFFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->processJoystickEvent(FFFF)Z

    move-result v0

    return v0
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mStopFpvButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    return-void
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "device"    # Landroid/view/InputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 163
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 165
    .local v0, "flat":F
    if-gez p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 169
    .local v2, "value":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 173
    .end local v0    # "flat":F
    .end local v2    # "value":F
    :goto_1
    return v2

    .line 165
    .restart local v0    # "flat":F
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    goto :goto_0

    .line 173
    .end local v0    # "flat":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private processJoystickEvent(FFFF)Z
    .locals 3
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changePanH(F)V

    .line 126
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changeIpd(F)V

    .line 131
    :goto_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    cmpl-float v0, p3, v2

    if-nez v0, :cond_0

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changePanV(F)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0, p4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changeViewScale(F)V

    goto :goto_1

    .line 131
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private processMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "historyPos"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 178
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v5

    .line 190
    :cond_1
    invoke-static {p1, v0, v5, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 191
    .local v1, "moveLeftX":F
    const/16 v7, 0xb

    invoke-static {p1, v0, v7, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 196
    .local v3, "moveRightX":F
    invoke-static {p1, v0, v6, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    .line 197
    .local v2, "moveLeftY":F
    const/16 v7, 0xe

    invoke-static {p1, v0, v7, p2}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v4

    .line 200
    .local v4, "moveRightY":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 201
    iget-object v7, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v7, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changePanH(F)V

    .line 205
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 206
    iget-object v7, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v7, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changeIpd(F)V

    .line 210
    :goto_2
    cmpl-float v7, v1, v9

    if-nez v7, :cond_2

    cmpl-float v7, v2, v9

    if-nez v7, :cond_2

    cmpl-float v7, v3, v9

    if-nez v7, :cond_2

    cmpl-float v7, v4, v9

    if-eqz v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 203
    :cond_3
    iget-object v7, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    neg-float v8, v2

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changePanV(F)V

    goto :goto_1

    .line 208
    :cond_4
    iget-object v7, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    neg-float v8, v4

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->changeViewScale(F)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v6, 0x1000010

    const/4 v3, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v3

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_0

    .line 219
    iget-object v4, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->removeMessages(I)V

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 226
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 228
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->processMotionEvent(Landroid/view/MotionEvent;I)Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_2
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->processMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 233
    .local v2, "isMoving":Z
    if-eqz v2, :cond_3

    .line 234
    iget-object v4, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    invoke-virtual {v5, v3, p1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0xf

    invoke-virtual {v4, v3, v6, v7}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 11
    .param p1, "selectedGamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 101
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mActivityWindow:Landroid/view/Window;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 102
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object v1, p1

    move v4, v3

    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/settings/SettingsCommandController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 106
    .local v10, "navigationMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 107
    return-void
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 6
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    const/4 v3, 0x1

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->removeMessages(I)V

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->processJoystickEvent(FFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;-><init>(FFFF)V

    .line 114
    .local v0, "joystickEventMessage":Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mHandler:Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;

    invoke-virtual {v2, v3, v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xf

    invoke-virtual {v1, v2, v4, v5}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    .end local v0    # "joystickEventMessage":Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;
    :cond_0
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 141
    :sswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->switchMode()V

    goto :goto_0

    .line 145
    :sswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvEyesCalibrationPreferences()Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->saveToPreferences()V

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x64 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
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
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 262
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mNavigationMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->clear()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->pause()V

    .line 254
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mFpvController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->resume()V

    .line 247
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setFpvEnabled(Z)V

    .line 243
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setFpvEnabled(Z)V

    .line 258
    return-void
.end method

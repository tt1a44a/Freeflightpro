.class public Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;
.super Ljava/lang/Object;
.source "FollowMeRadarController.java"


# static fields
.field private static final PI_IN_DEGREES:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "FF4.FM.RadarController"

.field private static final TWO_PI_IN_DEGREES:I = 0x168

.field private static final USER_MOTION_MINIMAL_SPEED:F = 1.0f


# instance fields
.field private final mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentValueAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDronePositionAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDronePositionAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mIconMarginInLockedMode:F

.field private final mMarginInLockedMode:F

.field private mModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPilotingMode:I

.field private final mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

.field private final mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSwitchLockButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mPilotingMode:I

    .line 219
    new-instance v2, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$2;-><init>(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 271
    new-instance v2, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$3;-><init>(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 278
    new-instance v2, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$4;-><init>(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v1

    .line 71
    .local v1, "smartLocationManager":Lcom/parrot/freeflight/location/SmartLocationManager;
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p3, p4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 72
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 73
    const v2, 0x7f0a02c0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRootView:Landroid/view/View;

    .line 74
    const v2, 0x7f0a0390

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    .line 75
    const v2, 0x7f0a0220

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;-><init>(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->setShowDrone(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0602ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mMarginInLockedMode:F

    .line 102
    const v2, 0x7f060186

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mIconMarginInLockedMode:F

    .line 104
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->fixPreLollipopTheme()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;F)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;
    .param p1, "x1"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->normalizeRotation(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->updateView()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->updateVisionRotation()V

    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_0
    return-void
.end method

.method private normalizeRotation(F)F
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 293
    const/high16 v0, -0x3c4c0000    # -360.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 294
    :cond_0
    rem-float/2addr p1, v1

    .line 296
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 297
    add-float/2addr p1, v1

    .line 299
    :cond_2
    return p1
.end method

.method private updateLockButton(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 229
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v0

    .line 231
    .local v0, "pilotingMode":I
    iget v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mPilotingMode:I

    if-eq v0, v1, :cond_0

    .line 232
    iput v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mPilotingMode:I

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 235
    packed-switch v0, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateUserMotion(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V
    .locals 12
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    .line 155
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isGpsFixed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getTargetTrajectory()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v7

    .line 157
    .local v7, "targetTrajectory":Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    if-eqz v7, :cond_2

    .line 158
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-virtual {v8, v7}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->update(Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 159
    :cond_0
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    if-nez v8, :cond_1

    .line 160
    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->clone()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    .line 162
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getNorthSpeed()D

    move-result-wide v2

    .line 163
    .local v2, "northSpeed":D
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getEastSpeed()D

    move-result-wide v0

    .line 164
    .local v0, "eastSpeed":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v6, v10

    .line 165
    .local v6, "targetSpeed":F
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    move v8, v9

    :goto_0
    invoke-virtual {v10, v8, v9}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->setUserMoving(ZZ)V

    .line 167
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getCompassRotation()F

    move-result v4

    .line 168
    .local v4, "start":F
    const/high16 v8, 0x43340000    # 180.0f

    add-float/2addr v8, v4

    neg-double v10, v2

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v10, v10

    add-float/2addr v8, v10

    invoke-direct {p0, v8}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->normalizeRotation(F)F

    move-result v5

    .line 169
    .local v5, "targetAngle":F
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v8, v5, v9}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->setUserRotation(FZ)V

    .line 173
    .end local v0    # "eastSpeed":D
    .end local v2    # "northSpeed":D
    .end local v4    # "start":F
    .end local v5    # "targetAngle":F
    .end local v6    # "targetSpeed":F
    .end local v7    # "targetTrajectory":Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    :cond_2
    return-void

    .line 165
    .restart local v0    # "eastSpeed":D
    .restart local v2    # "northSpeed":D
    .restart local v6    # "targetSpeed":F
    .restart local v7    # "targetTrajectory":Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private updateView()V
    .locals 9

    .prologue
    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x42b40000    # 90.0f

    .line 249
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mCurrentValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mCurrentValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getControllerPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v1

    .line 254
    .local v1, "position":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getCompassRotation()F

    move-result v2

    .line 255
    .local v2, "start":F
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getYaw()D

    move-result-wide v4

    double-to-float v3, v4

    neg-float v0, v3

    .line 256
    .local v0, "end":F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 257
    add-float/2addr v0, v7

    .line 259
    :cond_1
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 260
    cmpg-float v3, v2, v6

    if-gez v3, :cond_3

    cmpl-float v3, v0, v8

    if-lez v3, :cond_3

    .line 261
    add-float/2addr v2, v7

    .line 266
    :cond_2
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mCurrentValueAnimator:Landroid/animation/ValueAnimator;

    .line 267
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mCurrentValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mCurrentValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 269
    return-void

    .line 262
    :cond_3
    cmpl-float v3, v2, v8

    if-lez v3, :cond_2

    cmpg-float v3, v0, v6

    if-gez v3, :cond_2

    .line 263
    sub-float/2addr v2, v7

    goto :goto_0
.end method

.method private updateVisionRotation()V
    .locals 12

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    .line 176
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isGpsFixed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDroneTargetPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v5

    .line 178
    .local v5, "targetPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDronePosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v0

    .line 180
    .local v0, "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    if-eqz v5, :cond_7

    .line 181
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_0

    .line 182
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 184
    :cond_0
    const-string v6, "row"

    const-string v7, "validFull"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_1
    const/4 v1, 0x0

    .line 185
    .local v1, "shouldLog":Z
    if-eqz v1, :cond_2

    .line 186
    const-string v6, "FF4.FM.RadarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "follow me radar bearing value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v6, "FF4.FM.RadarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "follow me radar yaw value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getYaw()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->getYaw()D

    move-result-wide v8

    sub-double v2, v6, v8

    .line 192
    .local v2, "end":D
    if-eqz v1, :cond_3

    .line 193
    const-string v6, "FF4.FM.RadarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "follow me radar end value before computation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    add-double/2addr v2, v10

    .line 198
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getVisionRotation()F

    move-result v4

    .line 200
    .local v4, "start":F
    if-eqz v1, :cond_4

    .line 201
    const-string v6, "FF4.FM.RadarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "follow me radar start value before computation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_4
    float-to-double v6, v4

    sub-double v6, v2, v6

    cmpl-double v6, v6, v10

    if-lez v6, :cond_8

    .line 204
    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v4, v6

    .line 209
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 210
    const-string v6, "FF4.FM.RadarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "follow me radar start : end values after computation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_6
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    double-to-float v8, v2

    aput v8, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimator:Landroid/animation/ValueAnimator;

    .line 213
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mDronePositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 217
    .end local v0    # "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .end local v1    # "shouldLog":Z
    .end local v2    # "end":D
    .end local v4    # "start":F
    .end local v5    # "targetPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    :cond_7
    return-void

    .line 205
    .restart local v0    # "dronePosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .restart local v1    # "shouldLog":Z
    .restart local v2    # "end":D
    .restart local v4    # "start":F
    .restart local v5    # "targetPosition":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    :cond_8
    float-to-double v6, v4

    sub-double v6, v2, v6

    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 206
    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v6

    goto :goto_0
.end method


# virtual methods
.method public enterLockedMode()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 120
    iget v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mMarginInLockedMode:F

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 121
    .local v3, "radarTranslationX":F
    iget v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mMarginInLockedMode:F

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 122
    .local v4, "radarTranslationY":F
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .local v2, "radarLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    .local v0, "buttonLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v5, v6

    .line 126
    .local v1, "marginOffset":I
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 127
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mIconMarginInLockedMode:F

    sub-float v6, v3, v6

    .line 128
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-float v6, v1

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    .line 129
    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 131
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    const v6, 0x7f070270

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 132
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 134
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 135
    return-void
.end method

.method public exitLockedMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    const v1, 0x7f07026f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    const v1, 0x7f0701fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 142
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->fixPreLollipopTheme()V

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mSwitchLockButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 145
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->pause()V

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->removeListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->resume()V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->addListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 111
    return-void
.end method

.method public updateRadar()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->updateUserMotion(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 149
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->updateVisionRotation()V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->updateLockButton(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mRadarView:Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isGpsFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getTargetTrajectory()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->setShowDrone(Z)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

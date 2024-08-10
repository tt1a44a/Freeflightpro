.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
.super Ljava/lang/Object;
.source "FpvHorizonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;
    }
.end annotation


# static fields
.field public static final TIME_UPDATE_UI:I = 0xc8

.field private static final TIME_WAIT_CHANGE_HORIZON:I = 0x96


# instance fields
.field private mCameraCenterView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneAttitudeView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneType:I

.field private mHorizonView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHudView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdatePitchAndRoll:J

.field private mPitch:F

.field private mRoll:F

.field private mStabilizationMode:I

.field private final mUiUpdaterHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    .line 45
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneType:I

    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHorizonView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mCameraCenterView:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 64
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->updateCurrentHorizon()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->updateCameraRadar(Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    return-void
.end method

.method private getMiddleHeight()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private showDroneAttitude()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 186
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneType:I

    if-ne v0, v4, :cond_0

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mCameraCenterView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mCameraCenterView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    if-eq v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 190
    goto :goto_1

    :cond_2
    move v1, v2

    .line 191
    goto :goto_2
.end method

.method private updateCameraRadar(Lcom/parrot/freeflight/piloting/model/DroneCamera;)V
    .locals 18
    .param p1, "droneCamera"    # Lcom/parrot/freeflight/piloting/model/DroneCamera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    const/4 v11, 0x0

    .line 81
    .local v11, "translationY":F
    const/4 v9, 0x0

    .line 82
    .local v9, "pitchTranslation":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 83
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 84
    .local v6, "height":I
    if-eqz v13, :cond_0

    if-eqz v6, :cond_0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getVideoWidth()F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v14, v15, v16

    .line 86
    .local v14, "widthRatio":F
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getVideoHeight()F

    move-result v15

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v7, v15, v16

    .line 87
    .local v7, "heightRatio":F
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 88
    .local v12, "videoToScreenRatio":F
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getTiltProjection()F

    move-result v15

    div-float v11, v15, v12

    .line 89
    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mPitch:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getPitchProjection(F)F

    move-result v9

    .line 92
    .end local v7    # "heightRatio":F
    .end local v12    # "videoToScreenRatio":F
    .end local v14    # "widthRatio":F
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->getMiddleHeight()I

    move-result v8

    .line 93
    .local v8, "middleHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mRoll:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v10, v0

    .line 97
    .local v10, "rollAngle":F
    int-to-float v15, v8

    add-float v4, v15, v11

    .line 98
    .local v4, "finalHorizonPositionY":F
    const/4 v3, 0x0

    .line 99
    .local v3, "finalDroneAttitudeTranslationY":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    if-eqz v15, :cond_1

    .line 100
    add-float/2addr v4, v9

    .line 105
    :goto_0
    const/4 v5, 0x0

    .line 106
    .local v5, "finalHorizonRotation":F
    const/4 v2, 0x0

    .line 107
    .local v2, "finalDroneAttitudeRotation":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    if-eqz v15, :cond_2

    .line 108
    neg-float v15, v10

    add-float/2addr v5, v15

    .line 114
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHorizonView:Landroid/view/View;

    invoke-virtual {v15, v4}, Landroid/view/View;->setY(F)V

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHorizonView:Landroid/view/View;

    invoke-virtual {v15, v5}, Landroid/view/View;->setRotation(F)V

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    neg-float v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 121
    return-void

    .line 102
    .end local v2    # "finalDroneAttitudeRotation":F
    .end local v5    # "finalHorizonRotation":F
    :cond_1
    add-float/2addr v3, v9

    goto :goto_0

    .line 110
    .restart local v2    # "finalDroneAttitudeRotation":F
    .restart local v5    # "finalHorizonRotation":F
    :cond_2
    add-float/2addr v2, v10

    goto :goto_1
.end method

.method private updateCurrentHorizon()V
    .locals 4

    .prologue
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mLastUpdatePitchAndRoll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mLastUpdatePitchAndRoll:J

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHudView:Landroid/view/View;

    .line 169
    const v0, 0x7f0a019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHorizonView:Landroid/view/View;

    .line 170
    const v0, 0x7f0a0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0a00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mCameraCenterView:Landroid/widget/ImageView;

    .line 172
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHorizonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    if-nez p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->showDroneAttitude()V

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneAttitudeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mCameraCenterView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(ILcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V
    .locals 4
    .param p1, "droneType"    # I
    .param p2, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneCamera"    # Lcom/parrot/freeflight/piloting/model/DroneCamera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x3

    .line 134
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mPitch:F

    .line 135
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mRoll:F

    .line 136
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .line 137
    if-ne p1, v0, :cond_2

    .line 138
    .local v0, "newStabilizationMode":I
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneType:I

    if-eq p1, v1, :cond_1

    .line 139
    :cond_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mStabilizationMode:I

    .line 140
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mDroneType:I

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->mHorizonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->showDroneAttitude()V

    .line 145
    :cond_1
    return-void

    .line 137
    .end local v0    # "newStabilizationMode":I
    :cond_2
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getStabilizationMode()I

    move-result v0

    goto :goto_0
.end method

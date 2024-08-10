.class public Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
.super Ljava/lang/Object;
.source "ArtificialHorizonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;
    }
.end annotation


# static fields
.field public static final TIME_UPDATE_UI:I = 0xc8

.field private static final TIME_WAIT_CHANGE_HORIZON:I = 0x96


# instance fields
.field private final mArtificialHorizonRes:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentHorizonPosition:I

.field private mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHudView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdatePitchAndRoll:J

.field private mPitch:F

.field private mRoll:F

.field private final mUiUpdaterHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "hudView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "horizonView"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    .line 44
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonRes:I

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 56
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;-><init>(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->updateCurrentHorizon(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->updateCameraRadar(Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    return-void
.end method

.method private getMiddleHeight()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private updateCameraRadar(Lcom/parrot/freeflight/piloting/model/DroneCamera;)V
    .locals 13
    .param p1, "droneCamera"    # Lcom/parrot/freeflight/piloting/model/DroneCamera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, "translationX":F
    const/4 v5, 0x0

    .line 73
    .local v5, "translationY":F
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 74
    .local v7, "width":I
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 75
    .local v0, "height":I
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getVideoWidth()F

    move-result v9

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 77
    .local v8, "widthRatio":F
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getVideoHeight()F

    move-result v9

    int-to-float v10, v0

    div-float v1, v9, v10

    .line 78
    .local v1, "heightRatio":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 79
    .local v6, "videoToScreenRatio":F
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getPanProjection()F

    move-result v9

    div-float v4, v9, v6

    .line 80
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getTiltProjection()F

    move-result v9

    div-float v5, v9, v6

    .line 83
    .end local v1    # "heightRatio":F
    .end local v6    # "videoToScreenRatio":F
    .end local v8    # "widthRatio":F
    :cond_0
    iget v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mRoll:F

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 84
    .local v3, "rollAngle":F
    iget v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mCurrentHorizonPosition:I

    neg-int v9, v9

    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v2, v9

    .line 86
    .local v2, "pitchTranslation":F
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->getMiddleHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mPitch:F

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->getMiddleHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mCurrentHorizonPosition:I

    .line 87
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v9, v4, v12}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setCameraTranslationX(FZ)V

    .line 88
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v9, v5, v12}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setCameraTranslationY(FZ)V

    .line 89
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v9, v3, v12}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setRollAngle(FZ)V

    .line 90
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v9, v2, v12}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setPitchTranslationY(FZ)V

    .line 92
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v9}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->invalidate()V

    .line 93
    return-void
.end method

.method private updateCurrentHorizon(FF)V
    .locals 4
    .param p1, "roll"    # F
    .param p2, "pitch"    # F

    .prologue
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mLastUpdatePitchAndRoll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->getMiddleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->getMiddleHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mCurrentHorizonPosition:I

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mLastUpdatePitchAndRoll:J

    .line 104
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
    .line 133
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mHudView:Landroid/view/View;

    .line 134
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonRes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    .line 135
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mUiUpdaterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mArtificialHorizonView:Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/ArtificialHorizonView;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public update(Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V
    .locals 2
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneCamera"    # Lcom/parrot/freeflight/piloting/model/DroneCamera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mPitch:F

    .line 108
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mRoll:F

    .line 109
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .line 110
    return-void
.end method

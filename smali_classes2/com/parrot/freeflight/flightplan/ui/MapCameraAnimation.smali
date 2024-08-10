.class public Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;
.super Ljava/lang/Object;
.source "MapCameraAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;,
        Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x3e8

.field private static final DELAY_MS:I = 0x16

.field private static final NS_IN_MS:I = 0xf4240

.field private static final WANTED_FPS:I = 0x2d


# instance fields
.field private final mAnimationHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraChangedListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTime:J

.field private final mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private volatile mRunning:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/MapGLRenderingView;Ljava/util/List;)V
    .locals 2
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "renderingView"    # Lcom/parrot/freeflight/map/MapGLRenderingView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/map/IMap;",
            "Lcom/parrot/freeflight/map/MapGLRenderingView;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "cameraChangedListener":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mRunning:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mAnimationHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 53
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 54
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mCameraChangedListeners:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mRunning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mCameraChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Lcom/parrot/freeflight/map/IMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mMap:Lcom/parrot/freeflight/map/IMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Lcom/parrot/freeflight/map/MapGLRenderingView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mLastTime:J

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mStartTime:J

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mRunning:Z

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mRunning:Z

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.class Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;
.super Ljava/lang/Object;
.source "MapCameraAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TreatmentRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xf4240

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 72
    .local v0, "currentTime":J
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$100(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)J

    move-result-wide v8

    sub-long v8, v0, v8

    div-long v4, v8, v12

    .line 74
    .local v4, "elapsedTimeSinceStart":J
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$200(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v8, 0x3e8

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 75
    const-wide/16 v8, 0x16

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$300(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)J

    move-result-wide v10

    sub-long v10, v0, v10

    div-long/2addr v10, v12

    sub-long v2, v8, v10

    .line 77
    .local v2, "delayTime":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_1

    .line 78
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$400(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;

    .line 79
    .local v6, "listener":Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v8}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$500(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v8

    invoke-interface {v8}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v9}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$500(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v9

    invoke-interface {v9}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    goto :goto_0

    .line 81
    .end local v6    # "listener":Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$600(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 82
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$302(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;J)J

    .line 83
    const-wide/16 v2, 0x16

    .line 85
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$TreatmentRunnable;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;->access$700(Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .end local v2    # "delayTime":J
    :cond_2
    return-void
.end method

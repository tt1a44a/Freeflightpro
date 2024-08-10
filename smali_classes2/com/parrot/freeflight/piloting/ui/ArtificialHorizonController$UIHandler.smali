.class Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;
.super Landroid/os/Handler;
.source "ArtificialHorizonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mArtificialHorizonControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)V
    .locals 1
    .param p1, "artificialHorizonController"    # Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;->mArtificialHorizonControllerRef:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;->mArtificialHorizonControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    .line 123
    .local v0, "controller":Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
    if-eqz v0, :cond_1

    .line 124
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->access$200(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->access$200(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->access$300(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    .line 127
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    :cond_1
    return-void
.end method

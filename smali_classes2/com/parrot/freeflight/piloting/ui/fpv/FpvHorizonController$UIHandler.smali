.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;
.super Landroid/os/Handler;
.source "FpvHorizonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mHorizonControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)V
    .locals 1
    .param p1, "artificialHorizonController"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;->mHorizonControllerRef:Ljava/lang/ref/WeakReference;

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;->mHorizonControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .line 158
    .local v0, "controller":Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
    if-eqz v0, :cond_1

    .line 159
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->access$300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    .line 162
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :cond_1
    return-void
.end method

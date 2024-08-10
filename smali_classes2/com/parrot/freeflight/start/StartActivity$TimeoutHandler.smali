.class Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;
.super Landroid/os/Handler;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/start/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutHandler"
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/start/StartActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/parrot/freeflight/start/StartActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 470
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 471
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 476
    const-string v1, "FF4.Start"

    const-string v2, "Cannot find drone or remote before timeout, going to next screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/start/StartActivity;

    .line 479
    .local v0, "activity":Lcom/parrot/freeflight/start/StartActivity;
    if-eqz v0, :cond_0

    .line 480
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/start/StartActivity;->access$902(Lcom/parrot/freeflight/start/StartActivity;Z)Z

    .line 481
    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$800(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$700(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/parrot/freeflight/start/StartActivity;->nextScreen()V

    .line 485
    :cond_0
    return-void
.end method

.class Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$1;
.super Landroid/os/Handler;
.source "SoundtrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$1;->this$0:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;

    .line 65
    .local v0, "holder":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;
    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->listener:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;->onError(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->listener:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

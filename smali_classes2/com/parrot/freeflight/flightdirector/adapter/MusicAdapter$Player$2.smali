.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$2;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$2;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$2;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$2;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method

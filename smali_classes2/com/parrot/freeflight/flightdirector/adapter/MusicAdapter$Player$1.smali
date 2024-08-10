.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;
.super Landroid/os/Handler;
.source "MusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;
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
    .line 405
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$1900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$1900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2000(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$1900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2100(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$1900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2000(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setPlayingStatus(Z)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2000(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$1900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setCurrentSeconds(I)V

    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;->this$1:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->access$2000(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->invalidate()V

    goto :goto_0
.end method

.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;
.super Ljava/lang/Thread;
.source "WaveformFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/semantive/waveformandroid/waveform/WaveformFragment;->loadFromFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;


# direct methods
.method constructor <init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 428
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 429
    .local v1, "player":Landroid/media/MediaPlayer;
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 430
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 431
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 432
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iput-object v1, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v1    # "player":Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WaveformFragment"

    const-string v3, "Error while creating media player"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

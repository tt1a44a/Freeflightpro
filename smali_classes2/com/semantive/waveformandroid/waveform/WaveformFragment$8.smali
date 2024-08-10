.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;
.super Ljava/lang/Object;
.source "WaveformFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/semantive/waveformandroid/waveform/WaveformFragment;
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
    .line 807
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "sender"    # Landroid/view/View;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-boolean v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v3, v3, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->millisecsToPixels(I)I

    move-result v1

    iput v1, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 811
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 812
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->handlePause()V

    .line 814
    :cond_0
    return-void
.end method

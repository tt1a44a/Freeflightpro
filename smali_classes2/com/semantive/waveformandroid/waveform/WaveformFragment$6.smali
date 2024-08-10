.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;
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
    .line 782
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "sender"    # Landroid/view/View;

    .prologue
    .line 784
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-boolean v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, 0x1388

    .line 786
    .local v0, "newPos":I
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    if-le v0, v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v0, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 795
    .end local v0    # "newPos":I
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v3, v3, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v4, v4, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v5}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getStep()I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->secondsToPixels(D)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v2

    iput v2, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 791
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 792
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->requestFocus()Z

    .line 793
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v1, v2}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->markerFocus(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V

    goto :goto_0
.end method

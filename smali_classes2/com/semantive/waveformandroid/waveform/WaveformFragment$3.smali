.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;
.super Ljava/lang/Object;
.source "WaveformFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 589
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 593
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedStartPos:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    invoke-virtual {v1, v2}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iput v1, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedStartPos:I

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedEndPos:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    invoke-virtual {v1, v2}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iput v1, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedEndPos:I

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    return-void
.end method

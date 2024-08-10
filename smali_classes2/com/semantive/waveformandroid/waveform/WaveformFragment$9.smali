.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;
.super Ljava/lang/Object;
.source "WaveformFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 817
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->secondsToPixels(D)I

    move-result v1

    iput v1, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 828
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 832
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v2, v2, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->secondsToPixels(D)I

    move-result v1

    iput v1, v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 835
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 839
    :cond_1
    :goto_1
    return-void

    .line 836
    :catch_0
    move-exception v0

    goto :goto_1

    .line 829
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 819
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 822
    return-void
.end method

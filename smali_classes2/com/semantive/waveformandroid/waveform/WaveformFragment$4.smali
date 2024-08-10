.class Lcom/semantive/waveformandroid/waveform/WaveformFragment$4;
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
    .line 760
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$4;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "sender"    # Landroid/view/View;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$4;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$4;->this$0:Lcom/semantive/waveformandroid/waveform/WaveformFragment;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->onPlay(I)V

    .line 763
    return-void
.end method

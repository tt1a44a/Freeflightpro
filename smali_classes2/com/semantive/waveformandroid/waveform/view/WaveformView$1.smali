.class Lcom/semantive/waveformandroid/waveform/view/WaveformView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WaveformView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/semantive/waveformandroid/waveform/view/WaveformView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;


# direct methods
.method constructor <init>(Lcom/semantive/waveformandroid/waveform/view/WaveformView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$1;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$1;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-interface {v0, p3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformFling(F)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method

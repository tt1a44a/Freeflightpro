.class Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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
    .line 142
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "d"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 149
    .local v0, "scale":F
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialScaleSpan:F

    sub-float v1, v0, v1

    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-interface {v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformZoomIn()V

    .line 151
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialScaleSpan:F

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialScaleSpan:F

    sub-float v1, v0, v1

    const/high16 v2, -0x3de00000    # -40.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v1, v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-interface {v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformZoomOut()V

    .line 155
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialScaleSpan:F

    .line 157
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "d"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;->this$0:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialScaleSpan:F

    .line 145
    const/4 v0, 0x1

    return v0
.end method

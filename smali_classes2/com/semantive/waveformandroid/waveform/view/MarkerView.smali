.class public Lcom/semantive/waveformandroid/waveform/view/MarkerView;
.super Landroid/widget/ImageView;
.source "MarkerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

.field private mVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setFocusable(Z)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mVelocity:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    .line 64
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerDraw()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v0, p0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerFocus(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 108
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mVelocity:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mVelocity:I

    .line 109
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mVelocity:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 110
    .local v0, "v":I
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    if-eqz v2, :cond_2

    .line 111
    const/16 v2, 0x15

    if-ne p1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v2, p0, v0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerLeft(Lcom/semantive/waveformandroid/waveform/view/MarkerView;I)V

    .line 123
    :goto_0
    return v1

    .line 114
    :cond_0
    const/16 v2, 0x16

    if-ne p1, v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v2, p0, v0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerRight(Lcom/semantive/waveformandroid/waveform/view/MarkerView;I)V

    goto :goto_0

    .line 117
    :cond_1
    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v2, p0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerEnter(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mVelocity:I

    .line 129
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerKeyUp()V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->requestFocus()Z

    .line 77
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerTouchStart(Lcom/semantive/waveformandroid/waveform/view/MarkerView;F)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerTouchMove(Lcom/semantive/waveformandroid/waveform/view/MarkerView;F)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    invoke-interface {v0, p0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;->markerTouchEnd(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->mListener:Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;

    .line 68
    return-void
.end method

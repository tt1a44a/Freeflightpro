.class Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RectangleSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$1;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;-><init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 424
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$300(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$700(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$500(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 427
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$600(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 429
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$600(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$800(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 430
    .local v0, "leftRelative":F
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$600(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$900(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 432
    .local v1, "topRelative":F
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$700(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;->onPointSelected(FF)V

    .line 433
    const/4 v2, 0x1

    .line 436
    .end local v0    # "leftRelative":F
    .end local v1    # "topRelative":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x1

    .line 408
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$300(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$400(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$500(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 411
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$402(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Z)Z

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$600(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 415
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 419
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

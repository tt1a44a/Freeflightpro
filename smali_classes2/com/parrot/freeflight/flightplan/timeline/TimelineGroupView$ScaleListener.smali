.class Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TimelineGroupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 908
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 909
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v1

    .line 910
    .local v1, "oldmScaleFactor":F
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$802(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F

    .line 912
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    const v4, 0x3dcccccd    # 0.1f

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$802(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F

    .line 914
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v3

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 915
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v2

    .line 916
    .local v2, "width":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v0

    .line 917
    .local v0, "lastPointPosition":F
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1000(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1100(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;FF)F

    move-result v0

    .line 919
    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 920
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v4

    int-to-float v5, v2

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v5

    div-float/2addr v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1202(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F

    .line 921
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 927
    .end local v0    # "lastPointPosition":F
    .end local v1    # "oldmScaleFactor":F
    .end local v2    # "width":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 923
    .restart local v0    # "lastPointPosition":F
    .restart local v1    # "oldmScaleFactor":F
    .restart local v2    # "width":I
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v3, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$802(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 938
    return-void
.end method

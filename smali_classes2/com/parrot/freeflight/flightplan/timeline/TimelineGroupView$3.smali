.class Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;
.super Ljava/lang/Object;
.source "TimelineGroupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field minDelta:F

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->minDelta:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x50

    .line 1039
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1040
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->minDelta:F

    neg-float v0, v1

    .line 1041
    .local v0, "scrollDelta":F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1050
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1202(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F

    .line 1051
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 1052
    return-void

    .line 1042
    .end local v0    # "scrollDelta":F
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1043
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->minDelta:F

    .line 1044
    .restart local v0    # "scrollDelta":F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1046
    .end local v0    # "scrollDelta":F
    :cond_1
    const/4 v0, 0x0

    .line 1047
    .restart local v0    # "scrollDelta":F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

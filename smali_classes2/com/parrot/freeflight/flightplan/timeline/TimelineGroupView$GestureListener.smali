.class Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimelineGroupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 944
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 945
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 950
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v1

    float-to-int v1, v1

    neg-float v3, p3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v4

    float-to-int v6, v4

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 953
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 996
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    move-result-object v3

    .line 997
    .local v3, "listener":Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->isEditionAllowed()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 998
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v6, v8, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;FF)Landroid/util/Pair;

    move-result-object v2

    .line 999
    .local v2, "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_2

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_2

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v8

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-object v1, v6

    .line 1000
    .local v1, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    :goto_0
    if-eqz v1, :cond_1

    .line 1001
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getActionForSection(I)Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    .line 1003
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    move-result-object v6

    if-eq v0, v6, :cond_1

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineLandingAction;

    if-nez v6, :cond_1

    .line 1004
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/os/Vibrator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1005
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1020
    :goto_1
    invoke-interface {v3, v0}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->getDragShadowView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Landroid/view/View;

    move-result-object v5

    .line 1022
    .local v5, "shadowView":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1023
    new-instance v4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v4, v5}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1024
    .local v4, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1029
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v2    # "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    .end local v5    # "shadowView":Landroid/view/View;
    :cond_1
    return-void

    .restart local v2    # "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    move-object v1, v7

    .line 999
    goto :goto_0

    .line 1007
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .restart local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    :pswitch_0
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2000(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;I)V

    .line 1008
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    goto :goto_1

    .line 1011
    :pswitch_1
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2100(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;I)V

    .line 1012
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    goto :goto_1

    .line 1015
    :pswitch_2
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$2200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;I)V

    .line 1016
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->refreshView()V

    goto :goto_1

    .line 1005
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 958
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F

    move-result v1

    add-float/2addr v1, p3

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1202(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F

    .line 960
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 962
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 967
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    move-result-object v3

    .line 968
    .local v3, "listener":Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->isEditionAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 969
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;FF)Landroid/util/Pair;

    move-result-object v2

    .line 970
    .local v2, "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_1

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;

    move-result-object v6

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-object v1, v4

    .line 971
    .local v1, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    :goto_0
    if-eqz v1, :cond_3

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "clickedAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 985
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v3, v0, v5}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->onActionClicked(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Z)V

    .line 987
    :cond_0
    const/4 v4, 0x1

    .line 991
    .end local v0    # "clickedAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v2    # "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_2
    return v4

    .line 970
    .restart local v2    # "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 975
    .restart local v0    # "clickedAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .restart local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    :pswitch_0
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    .line 976
    goto :goto_1

    .line 979
    :pswitch_1
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$1700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    move-result-object v0

    .line 980
    :goto_3
    goto :goto_1

    .line 979
    :cond_2
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    goto :goto_3

    .line 982
    :pswitch_2
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    goto :goto_1

    .end local v0    # "clickedAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v2    # "columnDetail":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    move v4, v5

    .line 991
    goto :goto_2

    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MomentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 577
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v5

    .line 578
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 579
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    .line 580
    .local v4, "position":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v8, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v8}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v9}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v8, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v8}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v9}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_1

    move v0, v1

    .line 581
    .local v0, "allowLike":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    :goto_1
    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v3, v6, v8

    .line 582
    .local v3, "offset":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v6, v6, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDuration()I

    move-result v6

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getMaxMomentsCount(I)I

    move-result v2

    .line 583
    .local v2, "maxCount":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v6, v6, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getSegmentsCount()I

    move-result v6

    if-ge v6, v2, :cond_3

    .line 585
    .local v1, "isNotFilled":Z
    :goto_2
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    move-result-object v6

    invoke-virtual {v6, v4, v3, v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->onItemClick(IIZZ)V

    .line 588
    .end local v0    # "allowLike":Z
    .end local v1    # "isNotFilled":Z
    .end local v2    # "maxCount":I
    .end local v3    # "offset":I
    .end local v4    # "position":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .restart local v4    # "position":I
    :cond_1
    move v0, v7

    .line 580
    goto :goto_0

    .line 581
    .restart local v0    # "allowLike":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    goto :goto_1

    .restart local v2    # "maxCount":I
    .restart local v3    # "offset":I
    :cond_3
    move v1, v7

    .line 583
    goto :goto_2
.end method

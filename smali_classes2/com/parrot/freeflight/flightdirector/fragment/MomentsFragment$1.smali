.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x19

    const/4 v8, 0x0

    .line 106
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    .line 107
    .local v4, "position":I
    int-to-float v6, v4

    iget-object v7, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v7}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 108
    .local v3, "pos":F
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v6

    iget-object v7, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v7}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .line 109
    .local v5, "totalOffset":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v6

    sub-int v0, v5, v6

    .line 111
    .local v0, "dx":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-gtz v0, :cond_2

    .line 112
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6, v8}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$402(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    .line 117
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6, v8}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$502(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    .line 119
    int-to-float v6, v5

    iget-object v7, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v7}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 120
    .local v2, "newPosition":I
    int-to-float v6, v5

    int-to-float v7, v2

    iget-object v8, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v8}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 122
    .local v1, "itemOffset":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$800(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v8}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v8

    int-to-float v9, v1

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 123
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$900(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/SeekBar;

    move-result-object v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 125
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

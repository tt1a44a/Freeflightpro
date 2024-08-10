.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;
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
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 141
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 143
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    .line 144
    .local v2, "position":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 145
    .local v1, "offset":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->isSelected(II)Z

    move-result v0

    .line 146
    .local v0, "isSelected":Z
    if-eqz v0, :cond_1

    .line 147
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f07038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x19

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .end local v0    # "isSelected":Z
    .end local v1    # "offset":I
    .end local v2    # "position":I
    :cond_0
    return-void

    .line 149
    .restart local v0    # "isSelected":Z
    .restart local v1    # "offset":I
    .restart local v2    # "position":I
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f07038e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

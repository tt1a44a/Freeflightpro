.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0a0315

    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/Screen;->getUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$302(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I

    .line 245
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$702(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;F)F

    .line 246
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v2

    const v3, 0x3fe38e39

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1302(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I

    .line 247
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v3}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->setItemSize(FF)V

    .line 248
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->val$view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 250
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;->val$view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-void
.end method

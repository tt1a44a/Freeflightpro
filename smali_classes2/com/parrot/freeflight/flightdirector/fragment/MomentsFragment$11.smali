.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    return v1
.end method

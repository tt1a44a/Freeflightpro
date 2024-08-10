.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 272
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$102(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->setVideoDuration(I)V

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->setVideoDuration(J)V

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

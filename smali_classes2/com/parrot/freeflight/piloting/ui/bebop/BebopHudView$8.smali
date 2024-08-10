.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeReframingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startReframing()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    return-void
.end method

.method public stopReframing(II)V
    .locals 2
    .param p1, "centerXPercent"    # I
    .param p2, "centerYPercent"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$8;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/core/model/DroneModel;->requestFollowMeReframing(II)V

    .line 407
    return-void
.end method

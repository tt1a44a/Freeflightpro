.class Lcom/parrot/freeflight/followme/FollowMeViewController$12;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeViewController;->getScanPendingAnimation()Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$12;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$12;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2400(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)V

    .line 669
    return-void
.end method

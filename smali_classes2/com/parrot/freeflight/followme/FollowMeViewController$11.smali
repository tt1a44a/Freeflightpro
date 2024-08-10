.class Lcom/parrot/freeflight/followme/FollowMeViewController$11;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeViewController;->getScanInitAnimation()Landroid/graphics/drawable/AnimationDrawable;
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
    .line 644
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$11;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish()V
    .locals 2

    .prologue
    .line 647
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$11;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2200(Lcom/parrot/freeflight/followme/FollowMeViewController;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$11;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2300(Lcom/parrot/freeflight/followme/FollowMeViewController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 649
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$11;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2200(Lcom/parrot/freeflight/followme/FollowMeViewController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 652
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-void
.end method

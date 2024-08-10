.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$1;
.super Ljava/lang/Object;
.source "FollowMeCheckingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

.field final synthetic val$listener:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$1;->val$listener:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$1;->val$listener:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;->onBackButtonPressed()V

    .line 116
    return-void
.end method

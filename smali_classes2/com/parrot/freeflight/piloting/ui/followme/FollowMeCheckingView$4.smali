.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->access$300(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->purchase(Landroid/app/Activity;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    const v1, 0x7f110326

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

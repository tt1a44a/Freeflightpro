.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$6;
.super Ljava/lang/Object;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->setResult(I)V

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->finish()V

    .line 189
    return-void
.end method

.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$5;
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
    .line 177
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$5;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$5;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$600(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$5;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->purchase(Landroid/app/Activity;)V

    .line 181
    return-void
.end method

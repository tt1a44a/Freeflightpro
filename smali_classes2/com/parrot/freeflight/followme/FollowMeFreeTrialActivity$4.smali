.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$4;
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
    .line 170
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 174
    return-void
.end method

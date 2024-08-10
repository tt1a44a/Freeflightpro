.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$8;
.super Ljava/lang/Object;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->displayTrialStartErrorIfAny(I)V
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
    .line 290
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$8;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$8;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method

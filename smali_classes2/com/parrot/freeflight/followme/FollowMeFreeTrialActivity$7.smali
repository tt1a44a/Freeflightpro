.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$7;
.super Ljava/lang/Object;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 203
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$7;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$7;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$700(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    .line 207
    return-void
.end method

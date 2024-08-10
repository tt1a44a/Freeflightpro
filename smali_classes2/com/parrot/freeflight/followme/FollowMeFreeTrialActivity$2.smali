.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$2;
.super Ljava/lang/Object;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;
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
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$500(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->finish()V

    .line 120
    :cond_1
    return-void
.end method

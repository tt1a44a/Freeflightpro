.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;
.super Ljava/lang/Object;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;


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
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$100(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;->access$200(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$400(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    .line 93
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$100(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;->access$200(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$400(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    .line 111
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$100(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;->access$200(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$400(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    .line 102
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$002(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;Z)Z

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$100(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;->access$200(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->access$300(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;I)V

    .line 84
    return-void
.end method

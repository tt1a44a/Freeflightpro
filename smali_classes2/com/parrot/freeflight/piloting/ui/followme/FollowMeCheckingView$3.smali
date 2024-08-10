.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$3;
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


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->access$200(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->access$100(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->setShowOnError(Z)V

    .line 137
    return-void
.end method

.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private followMeInformationChanged()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->isInAnyFollowMeState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->enterStreamingMode()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateFollowMeModeView(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->followMeInformationChanged()V

    .line 289
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->followMeInformationChanged()V

    .line 305
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->followMeInformationChanged()V

    .line 297
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$4;->followMeInformationChanged()V

    .line 280
    return-void
.end method

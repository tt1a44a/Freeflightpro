.class Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;
.super Ljava/lang/Object;
.source "RegistrationPageFragment.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/registration/RegistrationPageFragment;->onYouTubePlayerInitialized(Lcom/google/android/youtube/player/YouTubePlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 357
    return-void
.end method

.method public onPaused()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onPlaying()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$500(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$502(Lcom/parrot/freeflight/registration/RegistrationPageFragment;Z)Z

    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$400(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->pause()V

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$600(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;-><init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 345
    :cond_0
    return-void
.end method

.method public onSeekTo(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 361
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

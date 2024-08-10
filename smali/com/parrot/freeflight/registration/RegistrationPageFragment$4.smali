.class Lcom/parrot/freeflight/registration/RegistrationPageFragment$4;
.super Ljava/lang/Object;
.source "RegistrationPageFragment.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;


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
    .line 303
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$4;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdStarted()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
    .locals 0
    .param p1, "errorReason"    # Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;

    .prologue
    .line 327
    return-void
.end method

.method public onLoaded(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 310
    return-void
.end method

.method public onLoading()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$4;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$400(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->play()V

    .line 323
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

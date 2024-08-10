.class Lcom/parrot/freeflight/registration/RegistrationPageFragment$1;
.super Ljava/lang/Object;
.source "RegistrationPageFragment.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/registration/RegistrationPageFragment;
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
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$1;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 0
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "youTubeInitializationResult"    # Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .prologue
    .line 101
    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 1
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "youTubePlayer"    # Lcom/google/android/youtube/player/YouTubePlayer;
    .param p3, "wasRestored"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$1;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$000(Lcom/parrot/freeflight/registration/RegistrationPageFragment;Lcom/google/android/youtube/player/YouTubePlayer;)V

    .line 96
    return-void
.end method

.class Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;
.super Ljava/lang/Object;
.source "RegistrationPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->onPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;->this$1:Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;->this$1:Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$600(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;->this$1:Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$400(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5$1;->this$1:Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$400(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->play()V

    .line 342
    :cond_0
    return-void
.end method

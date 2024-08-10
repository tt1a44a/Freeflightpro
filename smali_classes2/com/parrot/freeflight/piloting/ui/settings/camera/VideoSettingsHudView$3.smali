.class Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoSettingsHudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->startExitTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;->onExitTransitionEnd()V

    .line 237
    :cond_0
    return-void
.end method

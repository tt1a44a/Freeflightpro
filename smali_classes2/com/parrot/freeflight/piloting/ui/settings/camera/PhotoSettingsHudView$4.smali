.class Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoSettingsHudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->startExitTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTransitionListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$TransitionListener;->onExitTransitionEnd()V

    .line 244
    :cond_0
    return-void
.end method

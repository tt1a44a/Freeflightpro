.class final Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSettingsHudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->fadeIn(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibleOnStart:Z


# direct methods
.method constructor <init>(ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;->val$visibleOnStart:Z

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;->val$visibleOnStart:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$9;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_0
    return-void
.end method

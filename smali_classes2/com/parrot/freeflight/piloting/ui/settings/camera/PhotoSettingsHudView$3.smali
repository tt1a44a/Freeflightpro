.class Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;
.super Ljava/lang/Object;
.source "PhotoSettingsHudView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->initButtonsAndMenus()V
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
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    .line 106
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setIndeterminate(Z)V

    .line 109
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 110
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProgress(I)V

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->showImage(Z)V

    .line 113
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;JJ)V

    .line 129
    .local v0, "countDownTimer":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v1

    const-string v4, "progress"

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 132
    .local v7, "progressAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTimerCountdownView:Landroid/widget/ImageView;

    const v4, 0x7f07051e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTimerCountdownView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    .line 138
    .local v6, "countDownTimerAnimation":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTimerCountdownView:Landroid/widget/ImageView;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v1, v2, v3, v4}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    .line 139
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 142
    .end local v0    # "countDownTimer":Landroid/os/CountDownTimer;
    .end local v6    # "countDownTimerAnimation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "progressAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return v8

    .line 131
    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method